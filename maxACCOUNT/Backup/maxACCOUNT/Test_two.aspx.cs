using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace maxACCOUNT
{
    public partial class Test_two : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        public void DeleteUser_Click(object sender, EventArgs args)
        {
            Membership.DeleteUser(User.Identity.Name, true);
            //FormsAuthentication.SignOut();
            //FormsAuthentication.RedirectToLoginPage();
        }







        protected void Button1_Click(object sender, EventArgs e)
        {

            //MembershipCreateStatus status = new MembershipCreateStatus();
            MembershipCreateStatus status;

            string username = "Eshani";
            string password = "Eshani@55W0Rd";
            string email = "Eshani@email.com";
            string passwordQuestion = "AMILAA Anurada";
            string passwordAnswer = "AMILAA";
            string error = "";




            try
            {
                MembershipUser newUser = Membership.CreateUser(username, password, email, passwordQuestion, passwordAnswer, true, out status);
                if (newUser == null)
                {
                    error = GetErrorMessage(status);
                }
                else
                {
                    maxACCOUNT.Config.maxConnection MaxSever = new maxACCOUNT.Config.maxConnection();

                    object[] sqlPerameterObjects = new object[1];
                    sqlPerameterObjects[0] = username.Trim();
                    error = MaxSever.Call_Sever_SP("dbo.aspnet_Membership_CreateTeacher", sqlPerameterObjects);
                }




            }
            catch (Exception ex)
            {
                error = "Error...\r\n\r\n" + ex.ToString();
            }

            if (error == "")
            {
                Label1.Text = "GOOD";
            }
            else
            {
                Label1.Text = error;
            }

        }

















        public string GetErrorMessage(MembershipCreateStatus status)
        {
            switch (status)
            {
                case MembershipCreateStatus.DuplicateUserName:
                    return "Username already exists. Please enter a different user name.";

                case MembershipCreateStatus.DuplicateEmail:
                    return "A username for that e-mail address already exists. Please enter a different e-mail address.";

                case MembershipCreateStatus.InvalidPassword:
                    return "The password provided is invalid. Please enter a valid password value.";

                case MembershipCreateStatus.InvalidEmail:
                    return "The e-mail address provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.InvalidAnswer:
                    return "The password retrieval answer provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.InvalidQuestion:
                    return "The password retrieval question provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.InvalidUserName:
                    return "The user name provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.ProviderError:
                    return "The authentication provider returned an error. Please verify your entry and try again. If the problem persists, please contact your system administrator.";

                case MembershipCreateStatus.UserRejected:
                    return "The user creation request has been canceled. Please verify your entry and try again. If the problem persists, please contact your system administrator.";

                default:
                    return "An unknown error occurred. Please verify your entry and try again. If the problem persists, please contact your system administrator.";
            }
        }







    }
}