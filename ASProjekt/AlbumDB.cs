using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration; //zeby web.config odczytac
using System.Collections; //zeby liste uzyc
using System.Data;
using System.Data.SqlClient;

namespace ASProjekt
{
    public class AlbumDB
    {
        string connectionString;

        public AlbumDB()
        { //lepiej umiescic connectionstring do webconfig, lepiej est
            connectionString = WebConfigurationManager.ConnectionStrings["ASPProjekt"].ConnectionString;
        }

        public List<AlbumDetails> album_select_all()
        {
            List<AlbumDetails> albums = new List<AlbumDetails>();

            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("AlbumSelectAll", connection);
            command.CommandType = CommandType.StoredProcedure;

            try
            {
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();

                while (dr.Read())
                {
                    AlbumDetails album;
              
                    album = new AlbumDetails();
                    album.Id = int.Parse(dr["Id"].ToString());
                    album.Title = dr["Title"].ToString();
                    album.Category = dr["Category"].ToString();
                    album.Year = int.Parse(dr["Year"].ToString());
                    album.Compositor = dr["Compositor"].ToString();
                    album.Distributor = dr["Distributor"].ToString();

                    albums.Add(album);
                }
                return albums;
            }

          //  catch (SqlException)
         //   {
          //      throw new ApplicationException("Data error");
          //  }

            finally
            {
                connection.Close();
            }
        }

        public void album_update(AlbumDetails album)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("AlbumUpdateById", connection);
            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.Add(new SqlParameter("@Id", album.Id));
            command.Parameters.Add(new SqlParameter("@Title", album.Title));
            command.Parameters.Add(new SqlParameter("@Category", album.Category));
            command.Parameters.Add(new SqlParameter("@Year", album.Year));
            command.Parameters.Add(new SqlParameter("@Compositor", album.Compositor));
            command.Parameters.Add(new SqlParameter("@Distributor", album.Distributor));
        
            connection.Open();
            try
            {
                command.ExecuteNonQuery();
            }
        //    catch (SqlException)
      //      {
       //         throw new ApplicationException("Data error");
       //     }
            finally
            {
                connection.Close();
            }
        }

        public AlbumDetails album_by_id(int Id)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("AlbumSelectById", connection);
            command.CommandType = CommandType.StoredProcedure;

            AlbumDetails album = new AlbumDetails();
            try
            {
                connection.Open();

                command.Parameters.Add(new SqlParameter("@Id", SqlDbType.Int, 4));
                command.Parameters["@Id"].Value = Id;

                SqlDataReader dr = command.ExecuteReader();

                dr.Read();

                album.Id = int.Parse(dr["Id"].ToString());
                album.Title = dr["Title"].ToString();
                album.Category = dr["Category"].ToString();
                album.Year = int.Parse(dr["Year"].ToString());
                album.Compositor = dr["Compositor"].ToString();
                album.Distributor = dr["Distributor"].ToString();

                return album;
            }
            catch (SqlException)
            {
                throw new ApplicationException("Data error");
            }
            finally
            {
                connection.Close();
            }
        }

        public void album_delete(AlbumDetails album)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("AlbumDeleteById", connection);
            command.CommandType = CommandType.StoredProcedure;

            try
            {
                connection.Open();
                command.Parameters.Add(new SqlParameter("@Id", album.Id));
                command.ExecuteNonQuery();
            }

      //      catch (SqlException)
       //     {
     //           throw new ApplicationException("Data error");
     //       }

            finally
            {
                connection.Close();
            }
        }

        public void album_insert(AlbumDetails album)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("AlbumInsert", connection);
            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.Add(new SqlParameter("@Title", SqlDbType.NVarChar, 50));
            command.Parameters["@Title"].Value = album.Title;

            command.Parameters.Add(new SqlParameter("@Category", SqlDbType.NVarChar, 50));
            command.Parameters["@Category"].Value = album.Category;

            command.Parameters.Add(new SqlParameter("@Year", SqlDbType.Int, 4));
            command.Parameters["@Year"].Value = album.Year;

            command.Parameters.Add(new SqlParameter("@Compositor", SqlDbType.NVarChar, 50));
            command.Parameters["@Compositor"].Value = album.Compositor;

            command.Parameters.Add(new SqlParameter("@Distributor", SqlDbType.NVarChar, 50));
            command.Parameters["@Distributor"].Value = album.Distributor;

            connection.Open();
            try
            {
                command.ExecuteNonQuery();
            }
            finally
            {
                connection.Close();
            }
        }
    }
}