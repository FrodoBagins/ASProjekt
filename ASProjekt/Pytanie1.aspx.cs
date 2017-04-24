using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASProjekt
{
    public partial class Pytanie1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            string url;
            string parameters;
            string answer;
            int odpowiedz;

            url = "Pytanie2.aspx";

            

            odpowiedz = RadioButtonList1.SelectedIndex;

            if (odpowiedz == 0)
                answer = "1";
            else
                answer = "0";


            parameters = "?";
            parameters += "answer1=" + answer;

            Server.Transfer(url + parameters);


        }
    }
}