using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace Green_Ecommerce_Marketplace
{
    public partial class registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-HP98PLHH;Initial Catalog=GEM;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(FullNameTextBox.Text) ||
               string.IsNullOrEmpty(EmailTextBox.Text) ||
               string.IsNullOrEmpty(PasswordTextBox.Text) ||
               string.IsNullOrEmpty(ConfirmPasswordTextBox.Text) ||
               string.IsNullOrEmpty(GenderDropDown.SelectedValue))
            {
                Response.Write("<script>alert('Please fill in all fields');</script>");
                return;
            }

            if (PasswordTextBox.Text != ConfirmPasswordTextBox.Text)
            {
                Response.Write("<script>alert('Passwords do not match');</script>");
                return;
            }

            try
            {
                con.Open();
                using (SqlTransaction transaction = con.BeginTransaction())
                {
                    cmd.Connection = con;
                    cmd.Transaction = transaction;

                    cmd.CommandText = "INSERT INTO UserLog (UserName, UserEmail, UserPass, UserComPass, UserGender) VALUES (@FullNameTextBox, @EmailTextBox, @PasswordTextBox, @ConfirmPasswordTextBox, @GenderDropDown)";
                    cmd.Parameters.AddWithValue("@FullNameTextBox", FullNameTextBox.Text);
                    cmd.Parameters.AddWithValue("@EmailTextBox", EmailTextBox.Text);
                    cmd.Parameters.AddWithValue("@PasswordTextBox", PasswordTextBox.Text);
                    cmd.Parameters.AddWithValue("@ConfirmPasswordTextBox", ConfirmPasswordTextBox.Text);
                    cmd.Parameters.AddWithValue("@GenderDropDown", GenderDropDown.SelectedValue);

                    cmd.ExecuteNonQuery();
                    transaction.Commit();
                }

                // Clear input fields
                FullNameTextBox.Text = "";
                EmailTextBox.Text = "";
                PasswordTextBox.Text = "";
                ConfirmPasswordTextBox.Text = "";
                GenderDropDown.SelectedIndex = 0;

                Response.Redirect("userlogin.aspx");
            }
            catch (SqlException sqlEx)
            {
                Response.Write("<script>alert('SQL Error: " + sqlEx.Message + "');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
            finally
            {
                con.Close();
            }
        }


    }
}