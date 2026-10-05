using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Green_Ecommerce_Marketplace
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-HP98PLHH;Initial Catalog=GEM;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtFullName.Text) || string.IsNullOrEmpty(txtEmail.Text) ||
                string.IsNullOrEmpty(txtContactNumber.Text) || string.IsNullOrEmpty(txtMessage.Text))
            {
                // Display a message to the user indicating that all fields are mandatory
                Response.Write("<script>alert('Please fill in all fields');</script>");
                return;
            }

            string connectionString = "Data Source=LAPTOP-HP98PLHH;Initial Catalog=GEM;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    try
                    {
                        // Set the connection for the command
                        cmd.Connection = con;

                        // Set the command text and parameters
                        cmd.CommandText = "INSERT INTO ContactUs (ConName, ConEmail, ConNumber, ConMsg) VALUES (@ConName, @ConEmail, @ConNumber, @ConMsg)";
                        cmd.Parameters.AddWithValue("@ConName", txtFullName.Text);
                        cmd.Parameters.AddWithValue("@ConEmail", txtEmail.Text);
                        cmd.Parameters.AddWithValue("@ConNumber", txtContactNumber.Text);
                        cmd.Parameters.AddWithValue("@ConMsg", txtMessage.Text);

                        // Open the connection
                        con.Open();

                        // Execute the command
                        cmd.ExecuteNonQuery();

                        // Clear input fields
                        txtFullName.Text = "";
                        txtEmail.Text = "";
                        txtContactNumber.Text = "";
                        txtMessage.Text = "";

                        // Optionally, display a success message
                        Response.Write("<script>alert('Message sent successfully!');</script>");
                    }
                    catch (Exception ex)
                    {
                        // Handle the exception (logging, user feedback, etc.)
                        Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                    }
                }
            }
        }
    }
}