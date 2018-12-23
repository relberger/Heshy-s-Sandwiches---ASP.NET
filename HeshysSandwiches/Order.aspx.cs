using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace HeshysSandwiches
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       protected void PlaceOrderSubmit_Click(object sender, EventArgs e)
        {
            string salad = SaladDropdown.SelectedValue;
            string[] splitSalad = salad.Split('$');
            double saladPrice = Convert.ToDouble(splitSalad[1]);
            double sandwichPrice = Convert.ToDouble(SandwichSizeDropdown.SelectedValue);
            double orderTotal = saladPrice + sandwichPrice;

            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            connection.Open();
            string insert = "insert into OrderInformation ([PaymentProcessed], [OrderTotal]) values('0', '" + orderTotal + "')";
            SqlCommand command = new SqlCommand(insert, connection);
            command.ExecuteNonQuery();
            connection.Close();

            Response.Redirect("OrderResponse");
        }
    }
}