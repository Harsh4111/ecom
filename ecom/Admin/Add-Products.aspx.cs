using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static ecom.Models.Class1;
namespace ecom.Admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void AddProduct_Click(object sender, EventArgs e)
        {
            common fn = new common();

            fn.queary("insert into Products (Name,Description,Price,StockQuantity) values('" + namep.Text + "','"+disp.Text+"',"+Int32.Parse(pricep.Text)+ ","+ Int32.Parse(stockp.Text)+ ");");

        }
    }
}