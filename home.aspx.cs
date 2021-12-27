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
        SqlConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = Master.Bankcon();

            disp_banks(dbcon);
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
            cmd.CommandText = "select top 20 id, businessName, businessType, address, city from Banks where businessType <> ''";
            cmd.ExecuteNonQuery();
            DataTable bndt = new DataTable();
            SqlDataAdapter bnda = new SqlDataAdapter(cmd);
            bnda.Fill(bndt);
            BanksList.DataSource = bndt;
            BanksList.DataBind();
        }
        protected void search_click(object sender, EventArgs e)
        {
            if (dbcon.State == ConnectionState.Open)
            {
                dbcon.Close();
            }
            dbcon.Open();

            string businessCatagory = Request.Form["sel_cag"];

            //if ( businessCatagory == "All Catagories")
            //{

            //}

            SqlCommand cmd = dbcon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select top 20 id, businessName, businessType, address, city from Banks where businessType <> ''";
            cmd.ExecuteNonQuery();
            DataTable bndt = new DataTable();
            SqlDataAdapter bnda = new SqlDataAdapter(cmd);
        }
    }
}