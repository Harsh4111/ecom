using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecom.Auth
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static void ProcessSpeech(string text)
        {
            // Process the recognized text here
            // You can use the text parameter to perform further processing
            // For demonstration purposes, we're just printing the text to the console
            Console.WriteLine("Recognized text: " + text);
        }


        protected void startButton_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "StartRecording", "startRecording();", true);

        }

        protected void startButton_Click1(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "StartRecording", "startRecording();", true);

        }
    }
}