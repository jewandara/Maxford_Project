using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;

namespace MAXFORD.Account.Teacher.Email
{
    public partial class Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void btn_send_Click(object sender, EventArgs e)
        //{
        //    DateTime nowDate = DateTime.Now;
        //    string UserName = System.Web.HttpContext.Current.User.Identity.Name;
        //    SmtpClient client = new SmtpClient();
        //    client.DeliveryMethod = SmtpDeliveryMethod.Network;
        //    client.EnableSsl = true;
        //    client.Host = "smtp.gmail.com";
        //    client.Port = 587;
        //    System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("maxfordlk@gmail.com", "ZIONXnet16@#");
        //    client.UseDefaultCredentials = false;
        //    client.Credentials = credentials;
        //    MailMessage msg = new MailMessage();
        //    msg.From = new MailAddress("maxfordlk@gmail.com");
        //    msg.To.Add(new MailAddress("jewandara@gmail.com"));
        //    msg.Subject = "Maxford Teacher Contact";
        //    msg.IsBodyHtml = true;
        //    msg.Body = string.Format("<html><body lang=EN-US><div style='margin:auto; padding:10px; width:600px; padding-left:100px; padding-right:100px; border:2px solid #1B3027; background:#caf8e5'><h1>Maxford Teacher</h1><div style='text-align:center'><table border=1 style='border-collapse:collapse;border:2px solid #1B3027'>" +
        //                            "<tr><td style='width:135.9pt;padding:0in 5.4pt 0in 5.4pt'><p style='margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;font-size:18.0pt'>Subject</p></td><td style='width:342.9pt;padding:0in 5.4pt 0in 5.4pt'>" +
        //                            "<p style='margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;font-size:16.0pt;color:#4F6228'>" + Subject.Text +
        //                            "</p></td></tr><tr><td style='width:135.9pt;padding:0in 5.4pt 0in 5.4pt'><p style='margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;font-size:18.0pt'>Email</p></td><td style='width:342.9pt;padding:0in 5.4pt 0in 5.4pt'>" +
        //                            "<p style='margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;font-size:16.0pt;color:#4F6228'>" + Email.Text +
        //                            "</p></td></tr><tr><td style='width:135.9pt;padding:0in 5.4pt 0in 5.4pt'><p style='margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;font-size:18.0pt'>MaxEmail</p></td><td style='width:342.9pt;padding:0in 5.4pt 0in 5.4pt'>" +
        //                            "<p style='margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;font-size:16.0pt;color:#4F6228'>" + UserName.ToString() +
        //                            "</p></td></tr><tr><td style='width:135.9pt;padding:0in 5.4pt 0in 5.4pt'><p style='margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;font-size:18.0pt'>Contact</p></td><td style='width:342.9pt;padding:0in 5.4pt 0in 5.4pt'>" +
        //                            "<p style='margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;font-size:16.0pt;color:#4F6228'>" + ContactNumber.Text +
        //                            "</p></td></tr><tr><td style='width:135.9pt;padding:0in 5.4pt 0in 5.4pt'><p style='margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;font-size:18.0pt'>Date</p></td><td style='width:342.9pt;padding:0in 5.4pt 0in 5.4pt'>" +
        //                            "<p style='margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;font-size:16.0pt;color:#4F6228'>" + nowDate.ToString() +
        //                            "</p></td></tr></table></div><br /><br /><p style='text-align:justify'>" + Message.Text + "</p><br /><hr /><p style='text-align:center'><img width=400 src='http://www.maxford.lk/Content/logo.png'></p><p style='text-align:center; font-size:22.5pt;line-height:115%;color:#1B3027;'>Higher Educational Institute</p></div></body></html>");
        //    try
        //    {
        //        client.Send(msg);
        //        Errorss.Visible = false;
        //        Success.Visible = true;
        //        Subject.Text = "";
        //        Email.Text = "";
        //        ContactNumber.Text = "";
        //        Message.Text = "";
        //    }
        //    catch (Exception)
        //    {
        //        Errorss.Visible = true;
        //        Success.Visible = false;
        //    }
        //}

    }
}