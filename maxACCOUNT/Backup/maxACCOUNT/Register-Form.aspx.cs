using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxACCOUNT
{
    public partial class Register_Form : System.Web.UI.Page
    {
        public void Page_Init(object o, EventArgs e)
        {
            Display();
        }


        public void Display()
        {
            string category = Request.QueryString["category"];
            if (category == "PRIMARY")
            {
                maxCatoryLabelTopic.Text = "Maxford New Student Registration<br />" + category + "  LEVEL CLASS";
            }
            else if (category == "SECONDARY")
            {
                maxCatoryLabelTopic.Text = "Maxford New Student Registration<br />" + category + "  LEVEL CLASS";
            }
            else if (category == "ORDINARY")
            {
                maxCatoryLabelTopic.Text = "Maxford New Student Registration<br />" + category + "  LEVEL CLASS";
            }
            else if (category == "ADVANCED")
            {
                maxCatoryLabelTopic.Text = "Maxford New Student Registration<br />" + category + "  LEVEL CLASS";
            }
            else
            {
                maxCatoryLabelTopic.Text = "Maxford New Student Registration<br />  SEVER ERROR";
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}