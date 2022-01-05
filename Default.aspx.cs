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
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = Master.Bankcon();

            disp_banks(dbcon);
        }

        public void disp_banks(SqlConnection bakcon)
        {
            try
            {
                if (bakcon.State == ConnectionState.Open)
                {
                    bakcon.Close();
                }
                bakcon.Open();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("Hello " + ex.Message);
                return;
            }

            SqlCommand cmd = bakcon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select top 5 id, businessName, businessType, address, city from Banks where businessType <> '' and featured = 1";
            cmd.ExecuteNonQuery();
            DataTable bndt = new DataTable();
            SqlDataAdapter bnda = new SqlDataAdapter(cmd);
            bnda.Fill(bndt);
            Featured.DataSource = bndt;
            Featured.DataBind();

            cmd.CommandText = "select top 5 id, businessName, businessType, address, city from Banks where businessType <> ''";
            cmd.ExecuteNonQuery();
            bndt = new DataTable();
            bnda = new SqlDataAdapter(cmd);
            bnda.Fill(bndt);
            MostViewedByCatagory.DataSource = bndt;
            MostViewedByCatagory.DataBind();

            cmd.CommandText = "select top 5 id, businessName, businessType, address, city from Banks where businessType <> ''";
            cmd.ExecuteNonQuery();
            bndt = new DataTable();
            bnda = new SqlDataAdapter(cmd);
            bnda.Fill(bndt);
            HighlyRated.DataSource = bndt;
            HighlyRated.DataBind();

            cmd.CommandText = "select top 1 (select count(distinct businessType) from Banks where businessType <> '') as NumberOfCatagories, " +
                                "(select count(*) from Banks) as NumberOfBusinesses from Banks";
            cmd.ExecuteNonQuery();
            bndt = new DataTable();
            bnda = new SqlDataAdapter(cmd);
            bnda.Fill(bndt);
            NumberOfBusinessByCatagory.DataSource = bndt;
            NumberOfBusinessByCatagory.DataBind();

            cmd.CommandText = "select top 5 id, businessName, businessType, address, city from Banks where businessType <> '' and featured = 1 and businessType='Bank'";
            cmd.ExecuteNonQuery();
            bndt = new DataTable();
            bnda = new SqlDataAdapter(cmd);
            bnda.Fill(bndt);
            BanksList.DataSource = bndt;
            BanksList.DataBind();

            cmd.CommandText = "select top 5 id, businessName, businessType, address, city from Banks where businessType <> '' and businessType='Charity'";
            cmd.ExecuteNonQuery();
            bndt = new DataTable();
            bnda = new SqlDataAdapter(cmd);
            bnda.Fill(bndt);
            Charity.DataSource = bndt;
            Charity.DataBind();
        }
        protected void search_click(object sender, EventArgs e)
        {
            if (dbcon.State == ConnectionState.Open)
            {
                dbcon.Close();
            }
            dbcon.Open();

            string businessCatagory = "";
            string selectedRegion = "";
            string selectedCity = "";

            string searchText = searchInput.Value;

            if (sel_cag.SelectedItem.Value != "all")
            {
                businessCatagory = sel_cag.SelectedItem.Text;
            }

            if (cities.SelectedItem.Value != "all")
            {
                selectedCity = "AND city='" + cities.SelectedItem.Text+"'";
            }

            if (region.SelectedItem.Value != "all")
            {
                selectedRegion = "AND region='" + region.SelectedItem.Text + "'";
            }

            if (businessCatagory != "")
            {
                SqlCommand cmd = dbcon.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select top 20 id, businessName, businessType, address, city, region from "
                    + businessCatagory + " where businessType <> '' AND (businessName LIKE '%"
                    + searchText + "%' OR about LIKE '%" + searchText + "%') "
                    + selectedCity + " " + selectedRegion;
                cmd.ExecuteNonQuery();
                DataTable bndt = new DataTable();
                SqlDataAdapter bnda = new SqlDataAdapter(cmd);
                bnda.Fill(bndt);
            }
        }
    }
}