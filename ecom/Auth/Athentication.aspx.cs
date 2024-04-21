using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static ecom.Models.Class1;

namespace ecom.Auth
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        common fn = new common();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sign--Up.aspx");
        }
        protected void button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sign-Up.aspx");
        }
    }
}