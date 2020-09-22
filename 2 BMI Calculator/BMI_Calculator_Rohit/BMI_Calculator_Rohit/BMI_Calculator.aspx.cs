using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BMI_Calculator_Rohit
{
    public partial class BMI_Calculator : System.Web.UI.Page
    {

        public int ft, inches;
        public double kg,BMI;

        public double ftIntoMeter, inchesIntoMeter, heightInMeter;

        protected void btnReset_Click(object sender, EventArgs e)
        {
            /*foreach (Control c in Controls)
            {
                try
                {
                    if (c.GetType() == typeof(TextBox))
                    {
                        TextBox t = (TextBox)c;
                        t.Text = "";
                    }


                    if (c.GetType() == typeof(Button))
                    {
                        
                        Button b = (Button)c;
                        if (b.ID == "btnResult")
                            b.Text = "";
                    }
                }
                catch 
                {
                
                }
              
                
            }*/

            txtHeightFt.Text = "";
            txtHeightInches.Text = "";
            txtWeightKg.Text = "";

            btnResult.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculateBMI_Click(object sender, EventArgs e)
        {
            if (txtHeightFt.Text != "")   // validation
            {
                ft = int.Parse(txtHeightFt.Text);
            }
            else
            {
                ft = 0;
            }
           
            ftIntoMeter = ft * 0.3048;

            if (txtHeightInches.Text != "")
            {
                inches = int.Parse(txtHeightInches.Text);
            }
            else
            {
                inches = 0;
            }
            
            inchesIntoMeter = inches * 0.0254;

            heightInMeter = ftIntoMeter + inchesIntoMeter;  // total Height in meter



            if (txtWeightKg.Text != "")
            {
                kg = double.Parse(txtWeightKg.Text);
            }
            else
            {
                kg = 0;
            }
            

            if (heightInMeter != 0 && kg != 0)
            {
                BMI = kg / Math.Pow(heightInMeter, 2);

                btnResult.Text = BMI.ToString();
                btnResult.ForeColor = System.Drawing.Color.DeepSkyBlue;
            }
            else
            {
                btnResult.Text = "Invalid Inputs.";
                btnResult.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}