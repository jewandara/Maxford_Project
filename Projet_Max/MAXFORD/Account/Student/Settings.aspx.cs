using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using Microsoft.AspNet.Membership.OpenAuth;

namespace MAXFORD.Account.Student
{
    public partial class Settings : System.Web.UI.Page
    {


        public void ChangePassword_OnClick(object sender, EventArgs args)
        {
            MembershipUser u = Membership.GetUser(User.Identity.Name);
            try
            {
                if (u.ChangePassword(TextBoxOldPass.Text, ConfirmPassword.Text))
                {
                    LabelError.Visible = false;
                    LabelSuccess.Visible = true;
                    LabelSuccess.Text = "Password Changed Successfully.";
                }
                else
                {
                    LabelError.Visible = true;
                    LabelSuccess.Visible = false;
                    LabelError.Text = "Password change failed. Please re-enter your old password again.";
                }
            }
            catch (Exception e)
            {
                LabelError.Visible = true;
                LabelSuccess.Visible = false;
                LabelError.Text = "An exception occurred: " + Server.HtmlEncode(e.Message) + ". Please re-enter your values and try again.";
            }
        }


    }
}