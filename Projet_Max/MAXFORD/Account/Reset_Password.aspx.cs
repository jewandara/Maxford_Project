using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using System.Data;
using System.Data.SqlClient;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD.Account
{
    public partial class Reset_Password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelEmail.Text = Request.QueryString["EMAIL"];
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    command.CommandText = "UPDATE [dbo].[Memberships] SET [IsApproved] = 1, [IsLockedOut] = 0 WHERE UserId = @USID";
                    command.Parameters.AddWithValue("@USID", Request.QueryString["UID"]);
                    command.ExecuteScalar();
                }
            }
        }

        protected void ButtonResetPass_Click(object sender, EventArgs e)
        {
            String username = Request.QueryString["EMAIL"];
            String UserID = Request.QueryString["UID"];
            String RegID = Request.QueryString["RID"];
            String password = ConfirmPassword.Text;
            try
            {
                using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                {
                    using (SqlCommand command = connection.CreateCommand())
                    {

                        command.CommandType = CommandType.Text;
                        command.CommandText = "SELECT RID FROM  [dbo].[ResetUsers] WHERE RID = '" + RegID + "' AND UserID = '" + UserID + "' ";
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                MembershipUser mu = Membership.GetUser(username);
                                mu.ChangePassword(mu.ResetPassword(), password);

                                LabelError.Text = "";
                                LabelSuccess.Text = "Your password has been changed successfully. Click Login Button";
                                Label3.Visible = false;
                                Password.Visible = false;
                                Label4.Visible = false;
                                ConfirmPassword.Visible = false;
                                ButtonNextStep.Visible = false;
                                return;
                            }
                            else
                            {
                                LabelError.Text = "Sorry, Unauthorised Access";
                                return;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                LabelError.Text = ex.ToString();
            }
        }



    }
}