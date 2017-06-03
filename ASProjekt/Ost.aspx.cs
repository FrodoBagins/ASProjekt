using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASProjekt
{
    public partial class Ost : System.Web.UI.Page
    {
        AlbumDB db = new AlbumDB();
        TrackDB db2 = new TrackDB();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();

               // ObjectDataSource2.SelectParameters = ControlParameter
            }
        }

        private void BindGrid()
        {

        }



        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string commandName = e.CommandName;

            if (commandName == "cmdAdd")
            {

                var tbTitle = GridView1.FooterRow.FindControl("TitleInsert") as TextBox;
                var tbCategory = GridView1.FooterRow.FindControl("CategoryInsert") as TextBox;
                var tbYear = GridView1.FooterRow.FindControl("YearInsert") as TextBox;
                var tbCompositor = GridView1.FooterRow.FindControl("CompositorInsert") as TextBox;
                var tbDistributor = GridView1.FooterRow.FindControl("DistributorInsert") as TextBox;

                AlbumDetails user = new AlbumDetails();

                int year = int.Parse(tbYear.Text);

                user.Title = tbTitle.Text;
                user.Category = tbCategory.Text;
                user.Year = year;
                user.Compositor = tbCompositor.Text;
                user.Distributor = tbDistributor.Text;

                db.album_insert(user);

                GridView1.DataBind();
                AlbumDropDownList.DataBind();
            }


        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            this.BindGrid();
        }

        protected void ObjectDataSource1_Selected(object sender, ObjectDataSourceStatusEventArgs e)
        {

        }

        protected void ObjectDataSource4_Updated(object sender, ObjectDataSourceStatusEventArgs e)
        {
            GridView1.DataBind();
        }

        protected void ObjectDataSource1_Updated(object sender, ObjectDataSourceStatusEventArgs e)
        {
            DetailsView1.DataBind();
        }

        protected void ObjectDataSource4_Inserted(object sender, ObjectDataSourceStatusEventArgs e)
        {
            GridView1.DataBind();
            AlbumDropDownList.DataBind();
        }

        protected void ObjectDataSource5_Inserted(object sender, ObjectDataSourceStatusEventArgs e)
        {
            GridView2.DataBind();
        }

        protected void ObjectDataSource5_Updated(object sender, ObjectDataSourceStatusEventArgs e)
        {
            GridView2.DataBind();
        }

        protected void ObjectDataSource2_Updated(object sender, ObjectDataSourceStatusEventArgs e)
        {
            DetailsView2.DataBind();
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string commandName = e.CommandName;

            if (commandName == "cmdAdd")
            {

                var tbName = GridView2.FooterRow.FindControl("NameInsert") as TextBox;
                var tbLength = GridView2.FooterRow.FindControl("LengthInsert") as TextBox;
                var tbAlbumId = GridView2.FooterRow.FindControl("AlbumIdInsert") as TextBox;

                TrackDetails track = new TrackDetails();

                int albumId = int.Parse(tbAlbumId.Text);

                track.Name = tbName.Text;
                track.Length = tbLength.Text;
                track.AlbumId = albumId;

                db2.track_insert(track);

                GridView2.DataBind();
            }
        }
    }
}