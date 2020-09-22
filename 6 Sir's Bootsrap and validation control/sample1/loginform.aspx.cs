using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//database libs
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace sample1
{
    public partial class loginform : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            //define connection string
            string constr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            //create new sql connection
            con = new SqlConnection(constr);
            con.Open();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            tbUsername.Text = "";
            tbPassword.Text = "";
            tbUsername.Focus();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (tbUsername.Text == "" || tbPassword.Text == "")
            {
                lblError.Text = "Fill the form properly!";
                tbUsername.Text = "";
                tbPassword.Text = "";
                tbUsername.Focus();
            }
            else
            {
                SqlCommand cmd = new SqlCommand("SELECT * from userdetail WHERE uid=@uid and pwd=@pwd",con);
                cmd.Parameters.AddWithValue("@uid", tbUsername.Text);
                cmd.Parameters.AddWithValue("@pwd", tbPassword.Text);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    Session["id"] = tbUsername.Text;
                    Response.Redirect("dashboard.aspx");
                }
                else
                {
                    lblError.Text = "User name and/or password incorrect!!";
                    tbUsername.Text = "";
                    tbPassword.Text = "";
                    tbUsername.Focus();
                }



            }
        }
    }
}