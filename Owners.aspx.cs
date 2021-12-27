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
    public partial class Owners : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var sqlcon = Master.Bankcon();
            disp_Owners(sqlcon);
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
            cmd.CommandText = "select top 5 Id, firstName, middleName, lastName, email, phoneNumber, city, capitalIncome, registerationDate from users where userType='Business Owner'";
            cmd.ExecuteNonQuery();
            DataTable owners_dt = new DataTable();
            SqlDataAdapter owners_da = new SqlDataAdapter(cmd);
            owners_da.Fill(owners_dt);
            BOwners.DataSource = owners_dt;
            BOwners.DataBind();
        }
    }
}