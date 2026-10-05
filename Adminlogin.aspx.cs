using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Green_Ecommerce_Marketplace
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Hard-coded username and password for demonstration purposes
            string adminUsername = "rasik";
            string adminPassword = "0114";

            // Fetch the username and password from textboxes
            string enteredUsername = txtUsername.Text.Trim();
            string enteredPassword = txtPassword.Text.Trim();

            // Simple authentication logic - replace this with database authentication in production
            if (enteredUsername == adminUsername && enteredPassword == adminPassword)
            {
                // Successful login: Redirect to the Admin dashboard
                Response.Redirect("admin1/dashboard.aspx");
            }
            else
            {
                // Login failed: Display error message
                Response.Write("<script>alert('Invalid username or password. Please try again.');</script>");
            }
        }
    }
}