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
    public partial class New : System.Web.UI.Page
    {
        public void Page_Init(object o, EventArgs e)
        {
            ClassSubjects();
            ClassGrade();
            ClassHall();

            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                SqlCommand cmd = new SqlCommand("SELECT UserId FROM aspnet_Users WHERE (UserName = '" + System.Web.HttpContext.Current.User.Identity.Name + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                SqlDataReader ddlValues = cmd.ExecuteReader();
                if (ddlValues.HasRows)
                {
                    ddlValues.Read();
                    maxTextBoxUserId.Text = ddlValues["UserId"].ToString();
                }
            }
        }


        public void ClassSubjects()
        {
            if (RadioButtonPrimary.Checked == true)
            {
                SqlCommand cmd = new SqlCommand("SELECT SubjectId, SubjectCode + ' : ' + SubjectName + '  (' + SubjectCatogory + ')' AS 'HallNameDiscription' FROM dbo.aspnet_ClassSubject WHERE SubjectCode = 'PRIMARY'", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                SqlDataReader ddlValues;
                ddlValues = cmd.ExecuteReader();
                maxSubjectNames.DataSource = ddlValues;
                maxSubjectNames.DataValueField = "SubjectId";
                maxSubjectNames.DataTextField = "HallNameDiscription";
                maxSubjectNames.DataBind();
                cmd.Connection.Close();
            }
            if (RadioButtonSecondary.Checked == true)
            {
                SqlCommand cmd = new SqlCommand("SELECT SubjectId, SubjectCode + ' : ' + SubjectName + '  (' + SubjectCatogory + ')' AS 'HallNameDiscription' FROM dbo.aspnet_ClassSubject WHERE SubjectCode = 'SECONDARY'", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                SqlDataReader ddlValues;
                ddlValues = cmd.ExecuteReader();
                maxSubjectNames.DataSource = ddlValues;
                maxSubjectNames.DataValueField = "SubjectId";
                maxSubjectNames.DataTextField = "HallNameDiscription";
                maxSubjectNames.DataBind();
                cmd.Connection.Close();
            }
            if (RadioButtonOrdinary.Checked == true)
            {
                SqlCommand cmd = new SqlCommand("SELECT SubjectId, SubjectCode + ' : ' + SubjectName + '  (' + SubjectCatogory + ')' AS 'HallNameDiscription' FROM dbo.aspnet_ClassSubject WHERE SubjectCode = 'ORDINARY'", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                SqlDataReader ddlValues;
                ddlValues = cmd.ExecuteReader();
                maxSubjectNames.DataSource = ddlValues;
                maxSubjectNames.DataValueField = "SubjectId";
                maxSubjectNames.DataTextField = "HallNameDiscription";
                maxSubjectNames.DataBind();
                cmd.Connection.Close();
            }
            if (RadioButtonAdvanced.Checked == true)
            {
                SqlCommand cmd = new SqlCommand("SELECT SubjectId, SubjectCode + ' : ' + SubjectName + '  (' + SubjectCatogory + ')' AS 'HallNameDiscription' FROM dbo.aspnet_ClassSubject WHERE SubjectCode = 'ADVANCED'", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                SqlDataReader ddlValues;
                ddlValues = cmd.ExecuteReader();
                maxSubjectNames.DataSource = ddlValues;
                maxSubjectNames.DataValueField = "SubjectId";
                maxSubjectNames.DataTextField = "HallNameDiscription";
                maxSubjectNames.DataBind();
                cmd.Connection.Close();
            }

        }


        public void ClassGrade()
        {
            SqlCommand cmd = new SqlCommand("SELECT GradeId, GradeName FROM [aspnet_ClassGrade]", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
            cmd.Connection.Open();
            SqlDataReader ddlValues;
            ddlValues = cmd.ExecuteReader();
            maxGradeNames.DataSource = ddlValues;
            maxGradeNames.DataValueField = "GradeId";
            maxGradeNames.DataTextField = "GradeName";
            maxGradeNames.DataBind();
            cmd.Connection.Close();
        }


        public void ClassHall()
        {
            SqlCommand cmd = new SqlCommand("SELECT HallID, HallName FROM dbo.aspnet_ClassHall", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
            cmd.Connection.Open();
            SqlDataReader ddlValues;
            ddlValues = cmd.ExecuteReader();
            maxHallNames.DataSource = ddlValues;
            maxHallNames.DataValueField = "HallID";
            maxHallNames.DataTextField = "HallName";
            maxHallNames.DataBind();
            cmd.Connection.Close();
        }


        protected void SaveNewClass_Click(object sender, EventArgs e)
        {
            string UserName = "";
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                UserName = System.Web.HttpContext.Current.User.Identity.Name;
                SqlCommand cmd = new SqlCommand("INSERT	INTO dbo.aspnet_Class VALUES ('EA9C948C-D318-4BE6-BA71-B18CC7A06013', @ClassName, @ClassDate, @ClassStartTime, @ClassEndTime, @UserId, @HallID, @GradeId, @SubjectId,'TRUE', getdate(), getdate())", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();

                cmd.Parameters.Add("@ClassName", SqlDbType.VarChar).Value = maxTextBoxClassName.Text;
                cmd.Parameters.Add("@ClassDate", SqlDbType.VarChar).Value = maxDropDownListClassDate.Text;
                cmd.Parameters.Add("@ClassStartTime", SqlDbType.VarChar).Value = maxDropDownListStartHour.Text + ":" + maxDropDownListStartMinit.Text + " " + maxDropDownListStartTime.Text;
                cmd.Parameters.Add("@ClassEndTime", SqlDbType.VarChar).Value = maxDropDownListEndHour.Text + ":" + maxDropDownListEndMinit.Text + " " + maxDropDownListEndTime.Text;
                cmd.Parameters.Add("@UserId", SqlDbType.VarChar).Value = maxTextBoxUserId.Text;
                cmd.Parameters.Add("@HallID", SqlDbType.VarChar).Value = maxHallNames.SelectedValue;
                cmd.Parameters.Add("@GradeId", SqlDbType.VarChar).Value = maxGradeNames.SelectedValue;
                cmd.Parameters.Add("@SubjectId", SqlDbType.VarChar).Value = maxSubjectNames.SelectedValue;

                cmd.ExecuteNonQuery();
                cmd.Connection.Close();

                Response.Redirect("../Classes.aspx");
            }
        }

        protected void RadioButtonSecondary_CheckedChanged(object sender, EventArgs e)
        {
            ClassSubjects();
        }



    }
}