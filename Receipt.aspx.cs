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
    public partial class Receipt : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-HP98PLHH;Initial Catalog=GEM;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BDate.Text = DateTime.Now.ToString("dd-MM-yyyy");

                // Retrieve values from Session
                TProName.Text = Session["OrderProName"] as string;
                TQty.Text = Session["OrderQty"] as string;
                TAmt.Text = Session["OrderAmt"] as string;
            }

        }

        protected void pay_Click1(object sender, EventArgs e)
        {
            con.Open();
            cmd.Connection = con;

            // Convert the BDate.Text to a DateTime object
            DateTime delDate;
            if (!DateTime.TryParseExact(BDate.Text, "dd-MM-yyyy", null, System.Globalization.DateTimeStyles.None, out delDate))
            {
                // If conversion fails, assign current date
                delDate = DateTime.Now;
            }

            cmd.CommandText = "INSERT INTO Delivery (DelName,DelQty,DelAmt,DelDate) VALUES (@DelName,@DelQty,@DelAmt,@DelDate)";
            cmd.Parameters.AddWithValue("@DelName", TProName.Text);
            cmd.Parameters.AddWithValue("@DelQty", TQty.Text);
            cmd.Parameters.AddWithValue("@DelAmt", TAmt.Text);
            cmd.Parameters.AddWithValue("@DelDate", BDate.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            TProName.Text = "";
            TQty.Text = "";
            TAmt.Text = "";
            BDate.Text = "";
            Response.Redirect("payment.aspx");
        }
    }
}