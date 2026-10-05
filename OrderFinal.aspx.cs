using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Green_Ecommerce_Marketplace
{
    public partial class OrderFinal : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-HP98PLHH;Initial Catalog=GEM;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initialization logic if needed
            }

        }
        protected void proName_SelectedIndexChanged(object sender, EventArgs e)
        {
            CalculateAmount();
        }

        protected void qtyL_TextChanged(object sender, EventArgs e)
        {
            CalculateAmount();
        }

        private void CalculateAmount()
        {
            if (proName.SelectedItem != null && decimal.TryParse(proName.SelectedValue, out decimal pricePerUnit))
            {
                if (decimal.TryParse(qtyL.Text, out decimal quantity) && quantity > 0)
                {
                    decimal amount = pricePerUnit * quantity;
                    amt.Text = "₹" + amount.ToString("F2");
                }
                else
                {
                    amt.Text = "₹0.00";
                }
            }
            else
            {
                amt.Text = "₹0.00";
            }
        }


        protected void OrderCom_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO ProOrder (OrderProName, OrderQty, OrderAmt) VALUES (@OrderProName, @OrderQty, @OrderAmt)", con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@OrderProName", proName.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@OrderQty", qtyL.Text);
                    cmd.Parameters.AddWithValue("@OrderAmt", amt.Text.Replace("₹", "").Trim());

                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        // Store order details in Session before redirecting
                        Session["OrderProName"] = proName.SelectedItem.Text;
                        Session["OrderQty"] = qtyL.Text;
                        Session["OrderAmt"] = amt.Text;

                        Response.Redirect("Receipt.aspx");
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exception (log it or show a message)
                Response.Write("Error: " + ex.Message);
            }
            finally
            {
                if (con.State == System.Data.ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }

        protected void cancel_Click1(object sender, EventArgs e)
        {
            Response.Redirect("productscategories.aspx");
        }
        public string TproName
        {
            get
            {
                return proName.SelectedItem.Text;
            }
        }
        public string TqtyL
        {
            get
            {
                return qtyL.Text;
            }
        }
        public string Tamt
        {
            get
            {
                return amt.Text;
            }
        }
    }
}
