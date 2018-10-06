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

namespace MAXFORD.maxSubject
{
    public partial class Subject : System.Web.UI.MasterPage
    {

        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }
















        private void DisplayTeacher()
        {
            string htmlCodeBody = "";
            string GradeID = Request.QueryString["GradeID"];
            SqlCommand cmd = new SqlCommand("SELECT * FROM [vw_aspnet_TimeTable] WHERE (GradeID = '" + GradeID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
            cmd.Connection.Open();
            using (SqlDataReader MSDReader = cmd.ExecuteReader())
            {
                while (MSDReader.Read())
                {
                    byte[] btImage = (byte[])MSDReader["TeacherImage"];
                    string base64String = Convert.ToBase64String(btImage, 0, btImage.Length);

                    htmlCodeBody = htmlCodeBody + "<div style='border:1px solid #022; padding:5px 5px 5px 5px;'><table><tr><th width='550px'></th><th width='10px'></th><th></th></tr><tr><td>" +
                                                    "<a href='../maxTeacher/teacher.aspx?UserID=" + MSDReader["UserID"].ToString() +"&GradeCatogory=" + MSDReader["GradeCatogory"].ToString() +"' ><h3 style='font-size:25px'>" + MSDReader["TimeName"].ToString() +
                                                    "</h3></a><br /><p><img src='data:image/jpeg;base64," + base64String + "' width='50px'/><b style='font-weight:bold;'>&nbsp;&nbsp;&nbsp;" + MSDReader["TeacherName"].ToString() +
                                                    "</b><br />On <b style='font-weight:bold;'>" + MSDReader["TimeDate"].ToString() +"</b>  From  <b style='font-weight:bold'>" + MSDReader["TimeDuretion"].ToString() +
                                                    "</b><br />" + MSDReader["HallName"].ToString() +"<br /><b style='font-size:x-small'>" + MSDReader["GradeName"].ToString() + " " + MSDReader["GradeCatogory"].ToString() + " " + MSDReader["SubjectName"].ToString() +
                                                    "</b></p></td><td></td><td><b style='font-weight:bold'>" + MSDReader["SubjectName"].ToString() +
                                                    "</b><br /><br /><a href='#'><img src='images/register.png' height='30px'/></a><br /><br /><a href='../maxTeacher/teacher.aspx?UserID=" + MSDReader["UserID"].ToString() + "&GradeCatogory=" + MSDReader["GradeCatogory"].ToString() + "'><img src='images/more.gif'/></a><br /></td></tr></table></div><br /><br />";
                }
            }
            cmd.Connection.Close();
           // maxLabelTextTeacher.Text = htmlCodeBody;
        }

        //private void DisplayTeacherData()
        //{
        //    string UserID = Request.QueryString["UserID"];
        //    SqlCommand cmd = new SqlCommand("SELECT * FROM aspnet_UsersData WHERE (UserId = '" + UserID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
        //    cmd.Connection.Open();
        //    SqlDataReader ddlValues = cmd.ExecuteReader();
        //    if (ddlValues.HasRows)
        //    {
        //        ddlValues.Read();

        //        maxLabelTeacherName.Text = ddlValues["Title"].ToString() + ". " + ddlValues["UserFirstName"].ToString() + " " + ddlValues["UserMiddleName"].ToString() + " " + ddlValues["UserLastName"].ToString() + " " + ddlValues["UserSurname"].ToString();
        //        maxLabelContactNumberTwo.Text = ddlValues["ContactNo"].ToString();
        //        maxLabelContactNumberThree.Text = ddlValues["TelePhone"].ToString();
        //        maxLabelEmailAddressTwo.Text = "<a href='mailto:" + ddlValues["OfficealEmail"].ToString() + "' target='_top' style='text-decoration:none; color:#333; font-size:15px; ' >" + ddlValues["OfficealEmail"].ToString() + "</a>";
        //        maxLabelTeacherInistName.Text = ddlValues["Title"].ToString() + ". " + ddlValues["UserInitialName"].ToString();
        //    }
        //    ddlValues.Close();
        //    cmd.Connection.Close();
        //}


    }
}