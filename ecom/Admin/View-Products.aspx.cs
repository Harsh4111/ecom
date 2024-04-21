using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static ecom.Models.Class1;
using System.ComponentModel.DataAnnotations.Schema;




namespace ecom.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            common fn = new common();

            DataTable dt = fn.Fetch("select * from Products");
            GridView2.DataSource = dt; 
            GridView2.DataBind();
        }
    }
}