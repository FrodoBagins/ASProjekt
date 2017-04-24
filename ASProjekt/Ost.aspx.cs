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
            DvdDetailsView.Visible = true;
               XmlDataSource2.XPath = "/AlbumList/Album[@ID=" + index + "]";


        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            AlbumGridView.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }
    }
}