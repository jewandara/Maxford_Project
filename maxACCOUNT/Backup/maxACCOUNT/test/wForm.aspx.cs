using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace maxACCOUNT.test
{
    public partial class wForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }






        protected void checkNumber()
        {
            if (Regex.IsMatch(TextBox1.Text, @"^[0-9\-\+]+$"))
            {
                Label1.Text = "Ok Fine!";
            }

            else
            {
                Label1.Text = "Special Characters are not allowed";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            checkNumber();
        }






    }
}