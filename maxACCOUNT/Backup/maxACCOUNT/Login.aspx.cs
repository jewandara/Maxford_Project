using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxACCOUNT
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
               if (HttpContext.Current.User.IsInRole("MaxAdministrator"))
                {
                    Response.Redirect("Admin/Default.aspx");
                }
                else if (HttpContext.Current.User.IsInRole("MaxUser"))
                {
                    Response.Redirect("User/Default.aspx");
                }
                else if (HttpContext.Current.User.IsInRole("MaxTeacher"))
                {
                    Response.Redirect("Teacher/Default.aspx");
                }

                else if (HttpContext.Current.User.IsInRole("MaxStudent"))
                {
                    Response.Redirect("Student/Default.aspx");
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}