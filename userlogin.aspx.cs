using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Reflection.Emit;

namespace Green_Ecommerce_Marketplace
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-HP98PLHH;Initial Catalog=GEM;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtUsername.Text) || string.IsNullOrEmpty(txtPassword.Text))
            {
                // Display a message to the user indicating that all fields are mandatory
                Response.Write("<script>alert('Please fill in all fields');</script>");
                return;
            }
            con.Open();

            // Set the connection for the command
            SqlCommand cmd = new SqlCommand("SELECT * FROM UserLog WHERE UserName=@txtUsername AND UserPass=@txtPassword", con);
            cmd.Parameters.AddWithValue("@txtUsername", txtUsername.Text);
            cmd.Parameters.AddWithValue("@txtPassword", txtPassword.Text);

            // Execute the command to retrieve data
            SqlDataReader reader = cmd.ExecuteReader();

            // Check if any rows are returned
            if (reader.Read())
            {
                Response.Redirect("master1.aspx");
            }
            else
            {
                Label1.Text = "Invalid User";
            }

            // Close the reader and connection
            reader.Close();


            // Clear input fields
            txtUsername.Text = "";
            txtPassword.Text = "";
            con.Close();
        }
    }
}