using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

namespace HeshysSandwiches
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate1(object sender, AuthenticateEventArgs e)
        {
            
                //string userName = Login1.UserName;
                //string password = Login1.Password;

                //bool result = UserLogin(userName, password);
                //if ((result))
                //{
                //    e.Authenticated = true;
                //}
                //else
                //{
                //    e.Authenticated = false;
                //}
            
        }

        //protected void ValidateUser(object sender, EventArgs e)
        //{
        //    string userID;
        //    string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        //    using (SqlConnection connection = new SqlConnection(connectionString))
        //    {
        //        using (SqlCommand command = new SqlCommand("Validate_User"))
        //        {
        //            command.CommandType = CommandType.StoredProcedure;
        //            command.Parameters.AddWithValue("@Username", Login1.UserName);
        //            command.Parameters.AddWithValue("@Password", Login1.Password);

        //            command.Connection = connection;
        //            connection.Open();
        //            userID = command.ExecuteScalar().ToString();
        //            connection.Close();
        //        }
        //    }
        //}
    }
}