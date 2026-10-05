using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Green_Ecommerce_Marketplace
{
    public partial class payment : Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-HP98PLHH;Initial Catalog=GEM;Integrated Security=True;"); // Removed Encrypt=True for simplicity
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Pay_Click(object sender, EventArgs e)
        {
            try
            {
                // Open connection
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "INSERT INTO Payment (PayCardNumber, PayHolderName, PayExpDate, PayCVV) VALUES (@PaymentCardNumber, @PaymentHolder, @PaymentExpDate, @PaymentCVV)";

                // Clear parameters and add new ones
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@PaymentCardNumber", PaymentCardNumber.Text);
                cmd.Parameters.AddWithValue("@PaymentHolder", PaymentHolder.Text);
                cmd.Parameters.AddWithValue("@PaymentExpDate", PaymentExpDate.Text);
                cmd.Parameters.AddWithValue("@PaymentCVV", PaymentCVV.Text);

                // Execute command and check the result
                int rowsAffected = cmd.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    // Clear form fields on successful payment
                    PaymentCardNumber.Text = "";
                    PaymentHolder.Text = "";
                    PaymentExpDate.Text = "";
                    PaymentCVV.Text = "";
                    Response.Redirect("thank you.aspx");
                }
                else
                {
                    // Log or handle the case where no rows were affected
                    // Example: Show a message to the user
                }
            }
            catch (SqlException sqlEx)
            {
                // Log SQL exceptions
                Response.Write($"SQL Error: {sqlEx.Message}");
            }
            catch (Exception ex)
            {
                // Log general exceptions
                Response.Write($"Error: {ex.Message}");
            }
            finally
            {
                // Ensure the connection is closed
                if (con.State == System.Data.ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }
    }
}
