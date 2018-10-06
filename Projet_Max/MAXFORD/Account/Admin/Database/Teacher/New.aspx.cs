using System;
using System.Collections;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD.Account.Admin.Database.Teacher
{
    public partial class New : System.Web.UI.Page
    {



        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (TeacherFirstName.Text.Length > 4 && TeacherLastName.Text.Length > 5 && TeacherEmail.Text == ComTeacherEmail.Text)
            {
                string maxTeacherUserName = this.TeacherEmail.Text;
                MembershipCreateStatus createStatus;
                MembershipUser newUser = Membership.CreateUser(maxTeacherUserName, maxTeacherUserName, maxTeacherUserName, maxTeacherUserName, maxTeacherUserName, true, out createStatus);
                switch (createStatus)
                {
                    case MembershipCreateStatus.Success:
                        if (createTeacher(maxTeacherUserName)) { this.ReturnToList(); }
                        CreateAccountResults.Text = "The user account was successfully created!. User Insert Data Error. Try Again.";
                        break;
                    case MembershipCreateStatus.DuplicateUserName:
                        CreateAccountResults.Text = "There already exists a user with this username.";
                        break;
                    case MembershipCreateStatus.DuplicateEmail:
                        CreateAccountResults.Text = "There already exists a user with this email address.";
                        break;
                    case MembershipCreateStatus.InvalidEmail:
                        CreateAccountResults.Text = "There email address you provided in invalid.";
                        break;
                    case MembershipCreateStatus.InvalidAnswer:
                        CreateAccountResults.Text = "There security answer was invalid.";
                        break;
                    case MembershipCreateStatus.InvalidPassword:
                        CreateAccountResults.Text = "The password you provided is invalid. It must be seven characters long and have at least one non-alphanumeric character.";

                        break;
                    default:
                        CreateAccountResults.Text = "There was an unknown error; the user account was NOT created.";
                        break;
                }
            }
        }


        private Boolean createTeacher(String UNAME)
        {
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    string pathToCreate = "~/Store/Teacher/" + UNAME;
                    Directory.CreateDirectory(Server.MapPath(pathToCreate));
                    Directory.CreateDirectory(Server.MapPath(pathToCreate + "/main"));
                    Directory.CreateDirectory(Server.MapPath(pathToCreate + "/thumbnail"));
                    Directory.CreateDirectory(Server.MapPath(pathToCreate + "/upload"));
                    SaveByteArrayAsImage(pathToCreate);
                    command.CommandText = "EXEC dbo._sp_maxford_CREATE_TEACHER @UserName='" + UNAME + "',@FirstName='" + this.TeacherFirstName.Text + "',@LastName='" + this.TeacherLastName.Text + "',@Title='" + this.DropDownListTitle.SelectedValue + "',@Gender='" + this.DropDownListGender.SelectedValue + "',@AboutUser='" + this.AboutTeacher.Text + "'";

                    command.ExecuteNonQuery();
                    return true;
                    
                }
            }
        }


        private void SaveByteArrayAsImage(string PATH)
        {
            var i = System.Drawing.Image.FromFile(Server.MapPath("~/Store/Teacher/data/male64.png"));
            var i2 = new System.Drawing.Bitmap(i);
            i2.Save(Server.MapPath(PATH + "/main/male.png"), System.Drawing.Imaging.ImageFormat.Png);

            var j = System.Drawing.Image.FromFile(Server.MapPath("~/Store/Teacher/data/male64.png"));
            var j2 = new System.Drawing.Bitmap(j);
            j2.Save(Server.MapPath(PATH + "/upload/male.png"), System.Drawing.Imaging.ImageFormat.Png);

            var k = System.Drawing.Image.FromFile(Server.MapPath("~/Store/Teacher/data/male32.png"));
            var k2 = new System.Drawing.Bitmap(j);
            k2.Save(Server.MapPath(PATH + "/thumbnail/male.jpg"), System.Drawing.Imaging.ImageFormat.Jpeg);
                
            var x = System.Drawing.Image.FromFile(Server.MapPath("~/Store/Teacher/data/female64.png"));
            var x2 = new System.Drawing.Bitmap(x);
            x2.Save(Server.MapPath(PATH + "/main/female.png"), System.Drawing.Imaging.ImageFormat.Png);

            var y = System.Drawing.Image.FromFile(Server.MapPath("~/Store/Teacher/data/female64.png"));
            var y2 = new System.Drawing.Bitmap(y);
            y2.Save(Server.MapPath(PATH + "/upload/female.png"), System.Drawing.Imaging.ImageFormat.Png);

            var z = System.Drawing.Image.FromFile(Server.MapPath("~/Store/Teacher/data/female32.png"));
            var z2 = new System.Drawing.Bitmap(z);
            z2.Save(Server.MapPath(PATH + "/thumbnail/female.jpg"), System.Drawing.Imaging.ImageFormat.Jpeg);
                
            return;
        }


        protected void ReturnToList()
        {
            Response.Redirect("default.aspx", true);
        }


        protected void btnCancel_Click(object sender, EventArgs e)
        {
            this.ReturnToList();
        }




    }
}