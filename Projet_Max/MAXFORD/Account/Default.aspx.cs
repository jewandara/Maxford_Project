using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAXFORD.Account
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.IsInRole("Administrator"))
            {
                Response.Redirect("~/Account/AdminRedirect.aspx");
            }
            else if (HttpContext.Current.User.IsInRole("Teacher"))
            {
                Response.Redirect("~/Account/Teacher/Default.aspx");
            }
            else if (HttpContext.Current.User.IsInRole("Student"))
            {
                Response.Redirect("~/Account/Student/Default.aspx");
            }
            else if (HttpContext.Current.User.IsInRole("MaxUser"))
            {
                Response.Redirect("~/Account/MaxUser/Default.aspx");
            }
            else
            {
                Response.Redirect("~/Account/Login.aspx");
            }
        }
    }
}