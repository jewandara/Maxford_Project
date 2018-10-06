using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxACCOUNT.Admin.web.TEACHERS
{
    public partial class Delete : System.Web.UI.Page
    {
        public void Page_Init(object o, EventArgs e)
        {
            Display();
        }

        public void Display()
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string UserID = Request.QueryString["UserID"];
                SqlCommand cmd = new SqlCommand("SELECT * FROM [vw_aspnet_UsersData] WHERE (UserID = '" + UserID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                SqlDataReader ddlValues = cmd.ExecuteReader();
                if (ddlValues.HasRows)
                {
                    ddlValues.Read();
                    maxUserTeacherLabel.Text = ddlValues["UserName"].ToString();
                    maxTeacherNameLabel.Text = ddlValues["maxTeacherName"].ToString();
                }

                ddlValues.Close();
                cmd.Connection.Close();
            }
        }

        protected void maxDeleteTeacher_Click(object sender, EventArgs e)
        {
            //if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            //{
            //    string SlideCode = Request.QueryString["SlideCode"];
            //    SqlCommand cmd = new SqlCommand("DELETE FROM dbo.aspnet_PageSlide WHERE (SlideCode = '" + SlideCode + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
            //    cmd.Connection.Open();
            //    cmd.ExecuteNonQuery();
                maxPanelDeleteSlide.Visible = false;
                maxSlideDeletePanelOk.Visible = true;
            //    cmd.Connection.Close();
            //}
        }

        protected void maxOkTeacher_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}