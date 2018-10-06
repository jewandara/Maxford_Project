using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD
{
    public partial class Forget_Password : System.Web.UI.Page
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
            {}
        }

        protected void ButtonReset_Click(object sender, EventArgs e)
        {
            try
            {
                String EmailTextBox = Email.Text;
                String UserID = "";
                String RegID = Guid.NewGuid().ToString("N");

                try
                {
                    using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                    {
                        using (SqlCommand command = connection.CreateCommand())
                        {

                            command.CommandType = CommandType.Text;
                            command.CommandText = "SELECT UserID FROM [dbo].[Users] WHERE UserName = '" + EmailTextBox + "'";
                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                if (reader.Read())
                                {
                                    UserID = Convert.ToString(reader["UserID"]);
                                }
                                else
                                {
                                    LabelError.Text = "Sorry, Can't find your email address. Try again";
                                    return;
                                }
                            }
                        }
                    }

                    using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                    {
                        using (SqlCommand command = connection.CreateCommand())
                        {
                            command.CommandText = "INSERT INTO [dbo].[ResetUsers] VALUES ( @REGID, @USID, getdate())";
                            command.Parameters.AddWithValue("@REGID", RegID);
                            command.Parameters.AddWithValue("@USID", UserID);
                            command.ExecuteScalar();
                        }
                    }


                    MailMessage mail = new MailMessage();
                    mail.From = new MailAddress("infor@maxford.lk");
                    mail.To.Add(EmailTextBox);
                    mail.Subject = "Maxford Higher Educational Institute - Student Registration Confirmation";
                    mail.Body = "<html ><body lang=EN-US ><div style='width:800px; padding:20px; margin:10px; background-color:#8FD7A2; border:2px solid #254F42;'>" +
                                "<p align=center style='text-align:center'><img width=624 height=125 src='http://www.maxford.lk/Content/logo.png' alt='logo' /><br /><b style='font-size:22.0pt;line-height:115%;color:#4A442A;'> Maxford Higher Educational Institute</b></p>" +
                                "<p><i style='color:#595959;'>Recognized for Excellence in Teaching English. Maxford Higher Educational Institution is recognized as the best destination for thousands of English learners in Sri Lanka. The Annual Debate is the culmination of years of hard work and the best platform for Maxfordians to display their talents. Mr. U.K. Mabula, who has become a revalutionary English teacher is the founder of this institution.</i><br /><br />" +
                                "<b style='font-family:Consolas;color:black;'>Student Account Reset Password</b><br /><br />" +
                                "<a href=http://localhost:49842/Account/Reset_Password.aspx?EMAIL=" + EmailTextBox + "&UID=" + UserID + "&RID=" + RegID + " target='_blank'>Click here To Reset Your Password</a><br /><br />" +
                                "<b style='color:black;'>Copy Link :</b><br />" +
                                "<b style='color:#595959;'>" + "http://localhost:49842/Account/Reset_Password.aspx?EMAIL=" + EmailTextBox + "&UID=" + UserID + "&RID=" + RegID + "</b><br /><br /><br /><br />" +
                                "<i style='color:#595959;'>This email is generated automatically.</i><br /><br />" +
                                "<i style='color:red'>DO NOT REPLY !</i><br /><br />" +
                                "<b style='font-family:Consolas;color:black;'>Thank You.</b><br /><br /></p></div></body></html>";

                    mail.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient("mail.maxford.lk");
                    NetworkCredential Credentials = new NetworkCredential("infor@maxford.lk", "infor@maxford.lk123@#");
                    smtp.Credentials = Credentials;
                    smtp.Send(mail);
                    LabelError.Text = "";
                    LabelSuccess.Text = "Please check your email to reset your account.";
                    Email.Visible = false;
                    ButtonNextStep.Visible = false;
                }
                catch (Exception ex2) { LabelError.Text = ex2.ToString(); }
            }
            catch (Exception ex)
            {
                LabelError.Text = ex.ToString();
            }
        }

    }
}