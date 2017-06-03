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
            }


        }

        private void BindGrid()
        {

        }



        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridView gridView = (GridView)sender;

            // Get the selected index and the command name
            int selectedIndex = int.Parse(e.CommandArgument.ToString());
            string commandName = e.CommandName;

            int index = selectedIndex + 1;

            //   DataSet ds = new DataSet();

            //   ds.ReadXml(Server.MapPath("~/AlbumList.xml"));

            //   DvdDetailsView.DataSource = ds;
            //  DvdDetailsView.PageIndex = selectedIndex;
            //   DvdDetailsView.DataBind();



        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            this.BindGrid();
        }

        protected void ObjectDataSource1_Selected(object sender, ObjectDataSourceStatusEventArgs e)
        {

       //     GridView1.DataBind();
        //    DetailsView1.SelectedValue = 




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
    }
}