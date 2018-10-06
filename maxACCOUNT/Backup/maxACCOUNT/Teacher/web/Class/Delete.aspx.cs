using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace maxACCOUNT.Teacher.web.Class
{
    public partial class Delete : System.Web.UI.Page
    {


        public void Page_Init(object o, EventArgs e)
        {
            Display();
        }




        protected void Display()
        {
            string ClassID = Request.QueryString["ClassID"];
            string UserName = "";
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                UserName = System.Web.HttpContext.Current.User.Identity.Name;
            }
            SqlCommand cmd = new SqlCommand("SELECT * FROM vw_aspnet_TimeTable WHERE (UserName = '" + UserName + "') AND (TimeID =  '" + ClassID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
            cmd.Connection.Open();
            SqlDataReader ddlValues = cmd.ExecuteReader();
            if (ddlValues.HasRows)
            {
                while (ddlValues.Read())
                {
                    //VIEW NAME
                    maxTeacherName.Text = ddlValues["TeacherName"].ToString();

                    //VIEW CLASSES
                    maxLabelClassName.Text = ddlValues["TimeName"].ToString();
                    maxLabelClassDate.Text = ddlValues["TimeDate"].ToString();
                    maxLabelDuration.Text = ddlValues["TimeDuretion"].ToString();
                    maxLabelSubject.Text = ddlValues["SubjectName"].ToString();
                    maxLabelGrade.Text = ddlValues["GradeName"].ToString();

                }
            }
            else
            {
            }
            ddlValues.Close();
            cmd.Connection.Close();
        }


        protected void DeleteClass_Click(object sender, EventArgs e)
        {
            string ClassID = Request.QueryString["ClassID"];
            string UserName = "";
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                UserName = System.Web.HttpContext.Current.User.Identity.Name;
                SqlCommand cmd = new SqlCommand("DELETE FROM dbo.aspnet_Class WHERE (ClassId = @ClassId) AND (UserID = (SELECT UserID FROM dbo.aspnet_Users WHERE (UserName = @UserName)))", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();

                cmd.Parameters.Add("@ClassId", SqlDbType.VarChar).Value = Request.QueryString["ClassID"];
                cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = UserName;

                cmd.ExecuteNonQuery();
                cmd.Connection.Close();

                Response.Redirect("../Classes.aspx");
            }
        }


        protected void CancelDeleteClass_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Classes.aspx");
        }








    }
}