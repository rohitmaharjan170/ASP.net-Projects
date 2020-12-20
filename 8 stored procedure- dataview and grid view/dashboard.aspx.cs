using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sample1
{
    public partial class dashboard : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                btnDelete.Enabled = false;
                FillGridView();
            }
        }

        void FillGridView()
        {
            try
            {
                con = new SqlConnection(conStr);
                con.Open();
            }
            catch(Exception e)
            {
                //MessageBox.Show(ex.Message);
               
            }
            SqlDataAdapter sqlDa = new SqlDataAdapter("BookViewAll", con);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            sqlDa.Fill(dt);
            con.Close();
            gvBookDetails.DataSource = dt;
            gvBookDetails.DataBind();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            tbAccNo.Text = "";
            tbBookTitle.Text = "";
            tbAuthor.Text = "";
            tbPublisher.Text = "";
            tbQty.Text = "";
            //little adjustment to save button caption
            btnSave.Text = "Save";
            btnDelete.Enabled = false;
        }
    }
}