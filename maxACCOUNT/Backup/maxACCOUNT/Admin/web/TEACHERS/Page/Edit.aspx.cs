using System;
using System.Collections.Generic;
using System.Linq;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace maxACCOUNT.Admin.web.TEACHERS.Page
{
    public partial class Edit : System.Web.UI.Page
    {

        public void Page_Init(object o, EventArgs e)
        {
            Display();
        }


        private void Display()
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string UserID = Request.QueryString["UserID"];
                SqlCommand cmd = new SqlCommand("SELECT UserID,TeacherImage,TeacherContactNo,TeacherEmail,TeacherAbout,TeacherTitle,TeacherBody FROM aspnet_UsersTeacher WHERE (UserId = '" + UserID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                SqlDataReader ddlValues = cmd.ExecuteReader();
                if (ddlValues.HasRows)
                {
                    ddlValues.Read();
                    byte[] btImage = (byte[])ddlValues["TeacherImage"];
                    string base64String = Convert.ToBase64String(btImage, 0, btImage.Length);
                    maxTeacherImage.ImageUrl = "data:image/jpeg;base64," + base64String;
                    maxTextBoxContactNumber.Text = ddlValues["TeacherContactNo"].ToString();
                    maxTextBoxEmailAddress.Text = ddlValues["TeacherEmail"].ToString();
                    maxTextBoxAboutTeacher.Text = ddlValues["TeacherAbout"].ToString();
                    maxTextBoxTeacherTitle.Text = ddlValues["TeacherTitle"].ToString();
                    maxTextBoxTeacherBody.Text = ddlValues["TeacherBody"].ToString();
                    maxHyperLinkTeacher1.NavigateUrl = string.Format("http://www.maxford.lk/maxTeacher/teacher.aspx?UserID={0}", ddlValues["UserID"].ToString());
                    maxHyperLinkTeacher2.NavigateUrl = string.Format("http://www.maxford.lk/maxTeacher/teacher.aspx?UserID={0}", ddlValues["UserID"].ToString());
                }
                ddlValues.Close();
                cmd.Connection.Close();
            }
        }


        protected void SaveUpload_Click(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string UserID = Request.QueryString["UserID"];
                if (maxTeacherFileImage.HasFile)
                {
                    int length = maxTeacherFileImage.PostedFile.ContentLength;
                    byte[] imgbyte = new byte[length];
                    HttpPostedFile img = maxTeacherFileImage.PostedFile;
                    img.InputStream.Read(imgbyte, 0, length);
                    SqlCommand cmd = new SqlCommand("UPDATE dbo.aspnet_UsersTeacher SET TeacherContactNo = @TeacherContactNo, TeacherEmail = @TeacherEmail, TeacherImage = @TeacherImage, TeacherAbout = @TeacherAbout WHERE (UserId = '" + UserID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                    cmd.Connection.Open();
                    cmd.Parameters.Add("@TeacherContactNo", SqlDbType.VarChar).Value = maxTextBoxContactNumber.Text;
                    cmd.Parameters.Add("@TeacherEmail", SqlDbType.VarChar).Value = maxTextBoxEmailAddress.Text;
                    cmd.Parameters.Add("@TeacherImage", SqlDbType.Image).Value = imgbyte;
                    cmd.Parameters.Add("@TeacherAbout", SqlDbType.VarChar).Value = maxTextBoxAboutTeacher.Text;

                    cmd.ExecuteNonQuery();
                    cmd.Connection.Close();
                    Display();

                }
                else
                {
                    SqlCommand cmd = new SqlCommand("UPDATE dbo.aspnet_UsersTeacher SET TeacherContactNo = @TeacherContactNo, TeacherEmail = @TeacherEmail, TeacherAbout = @TeacherAbout WHERE (UserId = '" + UserID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                    cmd.Connection.Open();
                    cmd.Parameters.Add("@TeacherContactNo", SqlDbType.VarChar).Value = maxTextBoxContactNumber.Text;
                    cmd.Parameters.Add("@TeacherEmail", SqlDbType.VarChar).Value = maxTextBoxEmailAddress.Text;
                    cmd.Parameters.Add("@TeacherAbout", SqlDbType.VarChar).Value = maxTextBoxAboutTeacher.Text;

                    cmd.ExecuteNonQuery();
                    cmd.Connection.Close();
                    Display();
                }
            }
        }


        protected void SavePage_Click(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string UserID = Request.QueryString["UserID"];
                SqlCommand cmd = new SqlCommand("UPDATE dbo.aspnet_UsersTeacher SET TeacherTitle = @TeacherTitle, TeacherBody = @TeacherBody WHERE (UserId = '" + UserID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                cmd.Parameters.Add("@TeacherTitle", SqlDbType.VarChar).Value = maxTextBoxTeacherTitle.Text;
                cmd.Parameters.Add("@TeacherBody", SqlDbType.VarChar).Value = maxTextBoxTeacherBody.Text;

                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                Display();
            }
        }


    }
}