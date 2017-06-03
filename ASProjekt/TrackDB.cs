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
    public class TrackDB
    {
        string connectionString;

        public TrackDB()
        { //lepiej umiescic connectionstring do webconfig, lepiej est
            connectionString = WebConfigurationManager.ConnectionStrings["ASPProjekt"].ConnectionString;
        }

        public List<TrackDetails> track_select_all()
        {
            List<TrackDetails> tracks = new List<TrackDetails>();
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("TrackSelectAll", connection);
            command.CommandType = CommandType.StoredProcedure;

            try
            {
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    TrackDetails track;

                    track = new TrackDetails();
                    track.Id = int.Parse(dr["Id"].ToString());
                    track.Name = dr["Name"].ToString();
                    track.Length = dr["Length"].ToString();
                    track.AlbumId = int.Parse(dr["AlbumId"].ToString());

                    tracks.Add(track);
                }
                return tracks;
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

        public void track_update(TrackDetails track)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("TrackUpdateById", connection);
            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.Add(new SqlParameter("@Id", track.Id));
            command.Parameters.Add(new SqlParameter("@Name", track.Name));
            command.Parameters.Add(new SqlParameter("@Length", track.Length));
            command.Parameters.Add(new SqlParameter("@AlbumId", track.AlbumId));

            connection.Open();
            try
            {
                command.ExecuteNonQuery();
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

        public TrackDetails track_by_id(int Id)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("TrackSelectById", connection);
            command.CommandType = CommandType.StoredProcedure;

            TrackDetails track = new TrackDetails();
            try
            {
                connection.Open();

                command.Parameters.Add(new SqlParameter("@Id", SqlDbType.Int, 4));
                command.Parameters["@Id"].Value = Id;

                SqlDataReader dr = command.ExecuteReader();

                dr.Read();

                track.Id = int.Parse(dr["Id"].ToString());
                track.Name = dr["Name"].ToString();
                track.Length = dr["Length"].ToString();
                track.AlbumId = int.Parse(dr["AlbumId"].ToString());

                return track;
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

        public void track_delete(TrackDetails track)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("TrackDeleteById", connection);
            command.CommandType = CommandType.StoredProcedure;

            try
            {
                connection.Open();
                command.Parameters.Add(new SqlParameter("@Id", track.Id));
                command.ExecuteNonQuery();
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

        public void track_insert(TrackDetails track)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("TrackInsert", connection);
            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.Add(new SqlParameter("@Name", SqlDbType.NVarChar, 50));
            command.Parameters["@Name"].Value = track.Name;

            command.Parameters.Add(new SqlParameter("@Length", SqlDbType.NVarChar, 50));
            command.Parameters["@Length"].Value = track.Length;

            command.Parameters.Add(new SqlParameter("@AlbumId", SqlDbType.Int, 4));
            command.Parameters["@AlbumId"].Value = track.AlbumId;

            connection.Open();
            try
            {
                command.ExecuteNonQuery();
            }
            catch (SqlException)
            {

                connection.Close();
              //  throw new ApplicationException("Data error");
            }
            finally
            {
                connection.Close();
            }
        }

        public List<TrackDetails> track_select_by_album(int AlbumId)
        {

            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("TrackSelectAll", connection);
            command.CommandType = CommandType.StoredProcedure;
            List<TrackDetails> tracks = new List<TrackDetails>();

            try
            {
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();

                while (dr.Read())
                {
                    TrackDetails track;

                    track = new TrackDetails();
                    track.Id = int.Parse(dr["Id"].ToString());
                    track.Name = dr["Name"].ToString();
                    track.Length = dr["Length"].ToString();
                    track.AlbumId = int.Parse(dr["AlbumId"].ToString());

                    if (track.AlbumId == AlbumId)
                    {
                        tracks.Add(track);
                    }
                }
                return tracks;
                //taka lista moze byc zrodlem danych juz dla gridview
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
    }
}