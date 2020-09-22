using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stuudent_registration_Rohit
{
    public partial class Index : System.Web.UI.Page
    {
        public string gender;


        //yedi maile c ko mysql db dellete  gare bhane yo folder ma naya db bana na hai
       // public string DBpath = "C:\Users\rmaha\Desktop\Asp.net Web Application\Student Login Registration\Stuudent_registration_Rohit\Stuudent_registration_Rohit\App_Data\Student_Reg.mdf";
        protected void Page_Load(object sender, EventArgs e)
        {
            txtFName.Focus();



        }

        protected void radMale_CheckedChanged(object sender, EventArgs e)
        {
            /* Control c = new Control();
             if(c.GetType() == typeof(RadioButton))
             {
                 RadioButton rad = (RadioButton)c;
                 rad.Checked = false;
             }*/

            radMale.Checked = false;

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtFName.Text = "";
            txtMName.Text = "";
            txtLName.Text = "";
            radFemale.Checked = false;
            radMale.Checked = false;
            txtAddress.Text = "";
            txtContactNo.Text = "";
            txtBatch.Text = "";
            txtRegUserName.Text = "";
            TxtRegPassword.Text = "";

            txtFName.Focus();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string FName=txtFName.Text.Trim();
            string LName=txtLName.Text.Trim();
            string MName=txtMName.Text.Trim();

            string Address = txtAddress.Text.Trim();
            string Contact = txtContactNo.Text.Trim();
            string Batch = txtBatch.Text.Trim();

            string RegUserName = txtRegUserName.Text.Trim();
            string RegPassword = TxtRegPassword.Text.Trim();

            // validation 
            if (radFemale.Checked == true)
            {
                 gender = "F";
                txtGenderError.Visible = false;
            }
            else if (radMale.Checked == true)
            {
                gender = "M";
                txtGenderError.Visible = false;
            }
            else
            {
                txtGenderError.Visible = true;
                txtGenderError.Text = "*Required";
               
            }
            

            if (FName == "" || LName == "")
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Please Enter First Name and Last Name ')</script>");
            }
          
            if (Address == "")
            {
                txtErrorAddress.Visible = true;
            }
            else
            {
                txtErrorAddress.Visible = false;
            }

            if(Contact == "")
            {
                txtErrorContact.Visible = true;
            }
            else
            {
                txtErrorContact.Visible = false;
            }

            if (Batch == "")
            {
                txtErrorBatch.Visible = true;
            }
            else
            {
                txtErrorBatch.Visible = false;
            }

            if (RegUserName == "")
            {
                txtRegErrorUserName.Visible = true;
            }
            else
            {
                txtRegErrorUserName.Visible = false;
            }

            if (RegPassword == "")
            {
                txtRegErrorPassword.Visible = true;
            }
            else
            {
                txtRegErrorPassword.Visible = false;
            }

            // end of validation

            if (FName !="" && LName !="" && gender !="" && Address != "" && Contact!= "" && Batch!="" && RegUserName != "" && RegPassword != "")
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Registered Confirm')</script>");


                // Data Access  

                string constr = @"Data Source=(LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\rmaha\Desktop\Asp .net Web Application\Student Login Registration\Stuudent_registration_Rohit\Stuudent_registration_Rohit\App_Data\Student_Reg.mdf; Integrated Security = True";
                SqlConnection con = new SqlConnection(constr);
                con.Open();

                SqlCommand cmd = new SqlCommand("INSERT INTO Student_Info ( First_Name, Middle_Name, Last_Name, Gender, Address, Contact_No, Batch, UserName, Password) VALUES( @FName, @MName, @LName, @Gender, @Address, @Contact, @Batch, @RegUserName, @RegPassword) ", con);
              //  cmd.Parameters.AddWithValue("@Stu_ID", null);
                cmd.Parameters.AddWithValue("@FName", FName);
                cmd.Parameters.AddWithValue("@MName", MName);
                cmd.Parameters.AddWithValue("@LName", LName);
                cmd.Parameters.AddWithValue("@Gender", gender);
                cmd.Parameters.AddWithValue("@Address", Address);
                cmd.Parameters.AddWithValue("@Contact", Contact);
                cmd.Parameters.AddWithValue("@Batch", Batch);
                cmd.Parameters.AddWithValue("@RegUserName", RegUserName);
                cmd.Parameters.AddWithValue("@RegPassword", RegPassword);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Close();

                btnReset_Click(null, null);
            }
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            string LoginUserName = txtLoginUserName.Text.Trim();
            string LoginPassword = txtLoginPassword.Text.Trim();

            if(LoginUserName == "")
            {
                txtLoginErrorUserName.Visible = true;
            }
            else
            {
                txtLoginErrorUserName.Visible = false;
            }

            if (LoginPassword == "")
            {
                txtLoginErrorPassword.Visible = true;
            }
            else
            {
                txtLoginErrorPassword.Visible = false;
            }

            if (LoginUserName != "" && LoginPassword != "")
            {
                string constr = @"Data Source=(LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\rmaha\Desktop\Asp .net Web Application\Student Login Registration\Stuudent_registration_Rohit\Stuudent_registration_Rohit\App_Data\Student_Reg.mdf; Integrated Security = True";
                SqlConnection con = new SqlConnection(constr);
                con.Open();

                SqlCommand cmd = new SqlCommand("Select * from Student_Info where UserName=@LoginUserName and Password=@LoginPassword", con);
                cmd.Parameters.AddWithValue("@LoginUserName", LoginUserName);
                cmd.Parameters.AddWithValue("@LoginPassword", LoginPassword);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Close();

                if (dt.Rows.Count <= 0)
                {
                    txtErrorLogin.Visible = true;
                    txtLoginUserName.Text = "";
                    txtLoginPassword.Text = "";

                    txtLoginUserName.Focus();
                }
                else
                {
                    Response.Redirect("Dashboard.aspx");
                }
            }
            

        }

        protected void btnLoginReset_Click(object sender, EventArgs e)
        {
            txtLoginUserName.Text = "";
            txtLoginPassword.Text = "";

            txtLoginUserName.Focus();
        }
    }
}