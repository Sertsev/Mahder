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
        public static DataRow userInfo;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbCon = Master.Bankcon();
        }

        protected void Signup_Click(object sender, EventArgs e)
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

        protected void Login_Click(object sender, EventArgs e)
        {
            if (dbCon.State == ConnectionState.Open)
            {
                dbCon.Close();
            }
            dbCon.Open();

            var passwordEncrypt = loginPassword.Value;

            var user_email = loginEmail.Value;

            SqlCommand cmd = dbCon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = @"SELECT TOP 1 * FROM Users Where email=@Email";
            cmd.Parameters.AddWithValue("@Email", user_email);

            var userData = new DataTable();
            SqlDataAdapter SDA = new SqlDataAdapter(cmd);
            SDA.Fill(userData);
            if (userData.Rows.Count > 0)
            {
                userInfo = userData.Rows[0];


                if (userInfo["password"].ToString() == passwordEncrypt)
                {
                    Session["id"] = userInfo["Id"];
                    Session["name"] = userInfo["firstName"];
                    Response.Redirect("home.aspx?name=" + userInfo["firstName"]);
                    Session.RemoveAll();
                }
            }

            //switch (userData)
            //{
            //    case 0:
            //        incorrectPE.Text = "Invalid email or password!";
            //        break;
            //    //case -2:
            //    //    Login1.FailureText = "Account has not been activated.";
            //    //    break;
            //    default:
            //        Response.Redirect("home.aspx");
            //        break;
            //}
        }

    }
}