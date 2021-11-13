using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

namespace Mahder
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection dbCon;

        protected void Page_Load(object sender, EventArgs e)
        {
            dbCon = Master.Bankcon();
        }

        protected void signup_Click(object sender, EventArgs e)
        {
            if (dbCon.State == ConnectionState.Open)
            {
                dbCon.Close();
            }
            dbCon.Open();

            var passwordEncrypt = userPassword1.Value;

            if (userPassword1.Value == userPassword2.Value)
            {
                passwordEncrypt = userPassword1.Value;
            }
            else
            {
                return;
            }

            SqlCommand cmd = dbCon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Users(firstName, middleName, lastName, password, email, phoneNumber, userType)" +
                "values('" + firstName.Value + "', '" + middleName.Value + "', '" + lastName.Value + "', '" + passwordEncrypt + "', '" + userEmail.Value + "', '" + phoneNumber.Value + "', '" + userType.Value + "')";
            cmd.ExecuteNonQuery();
        }

        protected void login_Click(object sender, EventArgs e)
        {
            if (dbCon.State == ConnectionState.Open)
            {
                dbCon.Close();
            }
            dbCon.Open();

            var passwordEncrypt = userPassword1.Value;

            SqlCommand cmd = dbCon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = $"select id from Users where email = {userEmail}";
            var userId = Convert.ToInt32(cmd.ExecuteScalar());

            switch (userId)
            {
                case -1:
                    Console.WriteLine("Username and/or password is incorrect.");
                    return;
                //case -2:
                //    Login1.FailureText = "Account has not been activated.";
                //    break;
                default:
                    Response.Redirect("~/home.aspx");
                    break;
            }
        }
    }
}