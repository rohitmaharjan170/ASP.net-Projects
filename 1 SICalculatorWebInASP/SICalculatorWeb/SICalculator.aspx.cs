using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SICalculatorWeb
{
    public partial class SICalculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            Decimal pricipalAmt;
            Decimal.TryParse(txtPrincipalAmt.Text, out pricipalAmt);
            Decimal intRate;
            Decimal.TryParse(txtInterest.Text, out intRate);

            String period = txtPeriod.Text;
            Decimal Duration;

            Decimal.TryParse(txtPeriod.Text, out Duration);
            if (period.ToLower() == "months")
            {

                Duration = Duration / 12;
            }


            //txtTotalAmt
            Decimal totalIntAmount = ((pricipalAmt * intRate * Duration) / 100);
            txtIntAmt.Text = totalIntAmount.ToString();
            txtTotalAmt.Text = (totalIntAmount + pricipalAmt).ToString();

        }
    }
}