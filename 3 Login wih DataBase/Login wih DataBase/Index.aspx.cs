using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// for dabatase
using System.Data;
using System.Configuration;
using System.Data.Sql;


namespace Login_wih_DataBase
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUserName.Text.Trim();
            string password = txtPassword.Text.Trim();

            int userID = 0;

            string ConnectionString = ConfigurationManager.ConnectionStrings[];

            string ConnectionSteing = @"@Data Source = (MacnineName)\(InstanceName); Initial Catalog = (DBName); Integrated Security = True; ";
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUserName.Text = "";
            txtPassword.Text = "";
            txtUserName.Focus();

        }
    }
}