using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static ecom.Models.Class1;

namespace ecom.Admin
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            common fn = new common();

            DataTable dt = fn.Fetch("select * from Customers");
            user.DataSource = dt;
            user.DataBind();

        }
    }
}