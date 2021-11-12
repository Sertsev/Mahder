using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace Mahder
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var bakcon = Master.Bankcon();

            disp_banks(bakcon);
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
            cmd.CommandText = "select id, businessName, businessType, address, city from Banks";
            cmd.ExecuteNonQuery();
            DataTable bndt = new DataTable();
            SqlDataAdapter bnda = new SqlDataAdapter(cmd);
            bnda.Fill(bndt);
            BanksList.DataSource = bndt;
            BanksList.DataBind();
        }
    }
}