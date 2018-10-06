using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;

namespace maxACCOUNT.Admin.web.TEACHERS
{
    public partial class NEW : System.Web.UI.Page
    {

        protected void newTeacherButton_Click(object sender, EventArgs e)
        {
            MembershipCreateStatus status;
            string username = maxUserName.Text;
            string password = maxPassWord.Text;
            string email = maxEmail.Text;
            string passwordQuestion = "Handphone Number?";
            string passwordAnswer = maxHandphoneNumber.Text;
            string error = "";

            maxErrorLabel1.Visible = false;
            maxErrorLabel2.Visible = false;

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
                    object[] sqlPerameterObjects = new object[7];

                    sqlPerameterObjects[0] = username.Trim();
                    sqlPerameterObjects[1] = maxFirstName.Text.Trim();
                    sqlPerameterObjects[2] = maxMiddleName.Text.Trim();
                    sqlPerameterObjects[3] = maxLastName.Text.Trim();
                    sqlPerameterObjects[4] = maxSurname.Text.Trim();
                    sqlPerameterObjects[5] = maxInitialName.Text.Trim();
                    sqlPerameterObjects[6] = maxTitle.SelectedItem.Text.Trim();

                    error = MaxSever.Call_Sever_SP("dbo.aspnet_Membership_CreateTeacher", sqlPerameterObjects);

                    SqlCommand cmd = new SqlCommand("INSERT INTO dbo.aspnet_UsersTPass (TeacherUN,TeacherPW) VALUES (@TeacherUN,@TeacherPW)", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                    cmd.Connection.Open();
                    cmd.Parameters.Add("@TeacherUN", SqlDbType.VarChar).Value = username;
                    cmd.Parameters.Add("@TeacherPW", SqlDbType.VarChar).Value = password;
                    cmd.ExecuteNonQuery();
                    cmd.Connection.Close();
                }
            }
            catch (Exception ex)
            {
                error = "Error...\r\n\r\n" + ex.ToString();
            }

            if (error == "")
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                maxErrorLabel1.Text = error;
                maxErrorLabel2.Text = error;
                maxErrorLabel1.Visible = true;
                maxErrorLabel2.Visible = true;
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