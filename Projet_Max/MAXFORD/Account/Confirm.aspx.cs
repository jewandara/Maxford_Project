using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD.Account
{
    public partial class Confirm : System.Web.UI.Page
    {
        private String ALLSTDATA = "";

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Login.aspx?");
        }

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
            {
                try
                {
                    using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                    {
                        using (SqlCommand command = connection.CreateCommand())
                        {
                            command.CommandText = "UPDATE [dbo].[Memberships] SET [IsApproved] = 1, [IsLockedOut] = 0 WHERE UserId = @USID";
                            command.Parameters.AddWithValue("@USID", Request.QueryString["USID"]);
                            command.ExecuteScalar();
                        }
                    }
                }
                catch (Exception){}
            }
        }

    }
}