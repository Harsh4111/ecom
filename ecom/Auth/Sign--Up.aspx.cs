using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static ecom.Models.Class1;

namespace ecom.Auth
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Signup_Click(object sender, EventArgs e)
        {
            common fn = new common();
            //fn.queary("insert into Customers(Email,password,FirstName,LastName,PhoneNumber) values('" + em.Text + "','" + pas.Text + "','" + .Text + "','" + lsna.Text + "','" + ph.Text + "');");

        }
    }
}