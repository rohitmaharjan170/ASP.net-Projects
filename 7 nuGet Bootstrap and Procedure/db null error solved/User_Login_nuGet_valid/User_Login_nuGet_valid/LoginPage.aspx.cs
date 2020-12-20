using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace User_Login_nuGet_valid
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUserName.Focus();

            //define connection string
            string constr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            //create new sql connection
            conn = new SqlConnection(constr);
            //conn.Open();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string UserName = txtUserName.Text.Trim();
            string Password = txtPassword.Text.Trim();

            if (UserName == "")
            {
                errUserName.Visible = true;
                txtUserName.Focus();
            }
            else
            {
                errUserName.Visible = false;
            }

            if (Password == "")
            {
                errPassword.Visible = true;
                txtPassword.Focus();
            }
            else
            {
                errPassword.Visible = false;
            }

            if (UserName != "" && Password != "")
            {
                SqlCommand cmd = new SqlCommand("Get_Login_Info", conn);
                conn.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@UserName", SqlDbType.VarChar,50).Value =UserName;
                cmd.Parameters.Add("@Password", SqlDbType.VarChar,50).Value = Password;

                //output argument 
                cmd.Parameters.Add("@v_User_Id", SqlDbType.Int);
                cmd.Parameters["@v_User_Id"].Direction = ParameterDirection.Output;


                //output args ko data 
                var output = cmd.ExecuteScalar();   //exectue scalar or non query


                int v_User_Id;

                //  DBNull.Value
                if (cmd.Parameters["@v_User_Id"].Value == System.DBNull.Value)
                {
                    v_User_Id = 0;
                }
                else { 
                        
                    v_User_Id = Convert.ToInt32(cmd.Parameters["@v_User_Id"].Value);


                }

                    if (v_User_Id > 0)
                    {
                        Session["id"] = UserName;
                        Response.Redirect("Dashboard.aspx");
                        conn.Close();
                    }
                    else
                    {
                        errLogin.Visible = true;
                        btnReset_Click(null, null);
                        conn.Close();
                    }

                

            }

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUserName.Text= "";
            txtPassword.Text= "";
            txtUserName.Focus();

        }
    }
}