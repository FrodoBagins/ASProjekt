using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASProjekt
{
    public partial class Mashup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }


        }

        private void BindGrid()
        {
            using (DataSet ds = new DataSet())
            {
                ds.ReadXml(Server.MapPath("~/AlbumList.xml"));
                MashupGridView.DataSource = ds;
                MashupGridView.DataBind();

            }
        }



        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridView gridView = (GridView)sender;

            // Get the selected index and the command name
            int selectedIndex = int.Parse(e.CommandArgument.ToString());
            string commandName = e.CommandName;


            if (commandName == "SingleClick")
            {

                DataSet ds = new DataSet();

                ds.ReadXml(Server.MapPath("~/AlbumList.xml"));

                DvdDetailsView.DataSource = ds;
                DvdDetailsView.PageIndex = selectedIndex;
                DvdDetailsView.DataBind();
            }
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            MashupGridView.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }
    }
}