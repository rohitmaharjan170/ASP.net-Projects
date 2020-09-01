using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rohit_web_application
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            foreach (Control c in Controls)
            { 
            c.txtPrincipal.Text = "";
            c.txtRate.Text = "";
            c.txtTime.Text = "";
            c.txtResult.Text = "";
         }
        }

        protected void btnCalculateInterest_Click(object sender, EventArgs e)
        {
            int p, t, r, result;
            p = int.Parse(txtPrincipal);
            t = int.Parse(txtRate);
            r = int.Parse(txtTime);

        }
    }
}