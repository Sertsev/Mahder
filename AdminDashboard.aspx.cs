using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Mahder
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var sqlcon = Master.Bankcon();
            disp_Owners(sqlcon);
            disp_banks(sqlcon);
        }

        public void disp_Owners(SqlConnection sqlcon)
        {
            if (sqlcon.State == ConnectionState.Open)
            {
                sqlcon.Close();
            }
            sqlcon.Open();

            SqlCommand cmd = sqlcon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select top 5 Id, firstName, lastName, email, city from users where userType='Business Owner'";
            cmd.ExecuteNonQuery();
            DataTable owners_dt = new DataTable();
            SqlDataAdapter owners_da = new SqlDataAdapter(cmd);
            owners_da.Fill(owners_dt);
            Owners.DataSource = owners_dt;
            Owners.DataBind();
        }

        public void disp_banks(SqlConnection bakcon)
        {
            if (bakcon.State == ConnectionState.Open)
            {
                bakcon.Close();
            }
            bakcon.Open();

            SqlCommand cmd = bakcon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select top 5 id, businessName, city from Banks where businessType <> ''";
            cmd.ExecuteNonQuery();
            DataTable bndt = new DataTable();
            SqlDataAdapter bnda = new SqlDataAdapter(cmd);
            bnda.Fill(bndt);
            BanksList.DataSource = bndt;
            BanksList.DataBind();
        }
    }
}