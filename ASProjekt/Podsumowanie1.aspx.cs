using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASProjekt
{
    public partial class Podsumowanie1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            podsumowanieLabel.Text = "Uzyskany wynik: " + getScore() + "/5";

        }

        private string getScore()
        {
            return Request.QueryString["answer1"];
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Label2.Visible = true;
            Button1.Enabled = false;


        }

    }
}