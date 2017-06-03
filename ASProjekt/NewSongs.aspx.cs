using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASProjekt
{
    public partial class NewSongs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void NextImage(object sender, System.EventArgs e)
        {
            MultiView1.ActiveViewIndex += 1;
        }


        protected void PreviousImage(object sender, System.EventArgs e)
        {
            MultiView1.ActiveViewIndex -= 1;
        }


        protected void Page_PreRender(object sender, System.EventArgs e)
        {
            Label1.Text = "Numer utworu : " +
                (MultiView1.ActiveViewIndex + 1).ToString() +
                " of " + MultiView1.Views.Count.ToString();
        }



    }
}