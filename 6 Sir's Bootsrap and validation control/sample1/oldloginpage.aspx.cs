using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//for database integration
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

namespace sample1
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            tbUserName.Text = "";
            tbPassword.Text = "";
            tbUserName.Focus();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = tbUserName.Text.Trim();
            string password = tbPassword.Text.Trim();

            //string userID = null;

            string constr= @"Data Source=(LocalDB)\MSSQLLocalDB; AttachDbFilename = D:\KBS\NCC\sample1\App_Data\mydatabase.mdf; Integrated Security = True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();

            SqlCommand cmd = new SqlCommand("Select * from UserInfo where uid=@uid and pwd=@pwd",con);
            cmd.Parameters.AddWithValue("@uid", tbUserName.Text);
            cmd.Parameters.AddWithValue("@pwd", tbPassword.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();

            if(dt.Rows.Count<=0)
            {
                lblMessage.Text = "Username and/or password incorrect! Try Again";
                tbPassword.Text = "";
                tbUserName.Text = "";
                tbUserName.Focus();
            }
            else
            {
                Response.Redirect("dashboard.aspx");
            }
        }
    }
}