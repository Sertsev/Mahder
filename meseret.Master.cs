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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        SqlConnection bankcon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\mahderDB.mdf;Integrated Security=True");
        protected static DataRow userInfo;

        public SqlConnection Bankcon () { return bankcon; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (bankcon.State == ConnectionState.Open)
            {
                bankcon.Close();
            }
            bankcon.Open();

            if (Session["id"] != null)
            {
                userInfo = Mahder.Login.userInfo;
                var un = userInfo["userType"];
                int a = 1;
            }
        }

        
        //public string UserInfo() { return userInfo; }

        protected void add_Click(object sender, EventArgs e)
        {
            var description = Request.Form["about"];
            SqlCommand cmd = bankcon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Banks(businessName, ownerFullName, businesstype, about, address, woreda, region, city, phonNumber1, phonNumber2, twitterUname, facebookUname, telegramUname, instagramUname, linkedinUname, website)" +
                "values('"+ businessName.Text  + "', '" + ownerFullName.Text + "', '" + businessType.Text + "', '" + description + "', '" + address.Text + "', '" + woreda.Text + "', '" + region.Text + "', '" + city.Text + "', '" + phoneNumber1.Text + "', '" + phoneNumber2.Text + "', '" + twitterUname.Text + "', '" + facebookUname.Text + "', '" + telegramUname.Text + "', '" + instagramUname.Text + "', '" + linkedinUname.Text + "', '" + website.Text + "')";
            cmd.ExecuteNonQuery();
            // retriving the user id
            cmd.CommandText = "select top 1 * from Banks order by id desc";
            int busId = (int)cmd.ExecuteScalar();

            businessName.Text = "";
            ownerFullName.Text = "";
            businessType.Text = "";
            description = "";
            address.Text = "";
            woreda.Text = "";
            city.Text = "";
            phoneNumber1.Text = "";
            phoneNumber2.Text = "";
            twitterUname.Text = "";
            facebookUname.Text = "";
            instagramUname.Text = "";
            telegramUname.Text = "";
            linkedinUname.Text = "";
            website.Text = "";

            // profile picture saving to server

            if (profilePicture.FileName != "") {

            // map the path folder to save the profile image into
            string targetPath = Server.MapPath("~/profileImg/" + busId.ToString() + "/");

                // checking if folder exists
            bool folder_exists = Directory.Exists(targetPath);
            if (!folder_exists)
                Directory.CreateDirectory(targetPath);

            // save the profile picture to the created folder
            profilePicture.SaveAs(targetPath + Path.GetFileName(profilePicture.FileName));

                // 
            if (Directory.Exists(targetPath))
            {
                Console.WriteLine("Successefully uploaded!!");
            }
            }
        }

        public void Logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
        }
    }
}