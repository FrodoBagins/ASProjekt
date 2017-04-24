using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASProjekt
{
    public partial class Pytanie4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private string getStanowisko()
        {
            return Request.QueryString["answer1"];
        }


        protected void Button1_Click(object sender, EventArgs e)
        {


            string url;
            string parameters;
            string answer;
            int odpowiedz;
            int punkty;

            url = "Pytanie5.aspx";

            punkty = Int32.Parse(getStanowisko());

            odpowiedz = RadioButtonList1.SelectedIndex;

            if (odpowiedz == 1)
                punkty = punkty + 1;

            answer = punkty.ToString();

            parameters = "?";
            parameters += "answer1=" + answer;

            Server.Transfer(url + parameters);

        }



    }
}