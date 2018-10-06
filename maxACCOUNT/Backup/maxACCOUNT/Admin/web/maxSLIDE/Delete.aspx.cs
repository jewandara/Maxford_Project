using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MAXFORD.Max_Account.MaxfordUser.Administrator.maxSLIDE
{
    public partial class Delete : System.Web.UI.Page
    {

        protected void DeleteYes_Click(object sender, EventArgs e)
        {
            String UserName = System.Web.HttpContext.Current.User.Identity.Name;
            HttpCookie RMaxCookie = new HttpCookie(UserName);
            RMaxCookie = Request.Cookies[UserName];

            if (RMaxCookie != null)
            {
                try
                {
                    string SID = Request.QueryString["SlideID"];
                    string userID = RMaxCookie.Value.ToString();

                    string connetionString = null;
                    SqlConnection cnn;
                    connetionString = "Data Source=YELLOW.mysitehosted.com;Initial Catalog=ZionxMaxDatabaseNet16;User ID=maxDBAdmin;Password=maxDBAdmin123!@";
                    cnn = new SqlConnection(connetionString);
                    cnn.Open();
                    SqlCommand MaxCommand = new SqlCommand();
                    MaxCommand.Connection = cnn;
                    MaxCommand.CommandText = "dbo.SP_MAX_PAGE_SLIDE_DELETE";

                    MaxCommand.CommandType = CommandType.StoredProcedure;
                    MaxCommand.Parameters.AddWithValue("@UserID", userID);
                    MaxCommand.Parameters.AddWithValue("@SlideID", SID);
                    MaxCommand.ExecuteNonQuery();
                    Response.Write("<script>alert('Data Inserted Successfully')</script>");
                    Response.Redirect("slideDELETE.aspx");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('SQL INSERT ERROR : " + ex.ToString() + "')</script>");
                }
            }
        }



        protected void DeleteNo_Click(object sender, EventArgs e)
        {
            Response.Redirect("slideDELETE.aspx");
        }









    }
}