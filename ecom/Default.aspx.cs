using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static ecom.Models.Class1;

namespace ecom
{
    public partial class _Default : Page
    {
        public void Page_Load(object sender, EventArgs e)
        {
            common fn = new common();
            
            DataTable dt = fn.Fetch("select * from Products");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}