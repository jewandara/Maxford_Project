using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAXFORD.Account
{
    public partial class AdminRedirect : System.Web.UI.Page
    {


        protected void Admin_Click(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.IsInRole("Administrator"))
            {
                Response.Redirect("~/Account/Admin/Manage.aspx");
            }
            else
            {
                Response.Redirect("~/Account/Login.aspx");
            }
        }


        protected void Teach_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Teacher/Default.aspx");
        }


    }
}