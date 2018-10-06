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

namespace maxACCOUNT.Admin.web.TIME_TABLE
{
    public partial class NEW : System.Web.UI.Page
    {

        public void Page_Init(object o, EventArgs e)
        {
            ClassTeachers();
            ClassSubjects();
            ClassGrade();
            ClassHall();
        }


        public void ClassTeachers()
        {
            SqlCommand cmd = new SqlCommand("SELECT UserID, UserFirstName + ' ' + UserMiddleName AS 'TeacherName' FROM [aspnet_UsersData]", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
            cmd.Connection.Open();
            SqlDataReader ddlValues;
            ddlValues = cmd.ExecuteReader();
            maxTeacherNames.DataSource = ddlValues;
            maxTeacherNames.DataValueField = "UserID";
            maxTeacherNames.DataTextField = "TeacherName";
            maxTeacherNames.DataBind();
            cmd.Connection.Close();
        }


        public void ClassSubjects()
        {
            SqlCommand cmd = new SqlCommand("SELECT SubjectId, SubjectCode + ' : ' + SubjectName AS 'HallNameDiscription' FROM dbo.aspnet_ClassSubject", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
            cmd.Connection.Open();
            SqlDataReader ddlValues;
            ddlValues = cmd.ExecuteReader();
            maxSubjectNames.DataSource = ddlValues;
            maxSubjectNames.DataValueField = "SubjectId";
            maxSubjectNames.DataTextField = "HallNameDiscription";
            maxSubjectNames.DataBind();
            cmd.Connection.Close();
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




        protected void newClassButton_Click(object sender, EventArgs e)
        {
            string error = "";

            try
            {

                maxACCOUNT.Config.maxConnection MaxSever = new maxACCOUNT.Config.maxConnection();
                object[] sqlPerameterObjects = new object[8];

                sqlPerameterObjects[0] = maxTeacherNames.SelectedItem.Value.Trim();
                sqlPerameterObjects[1] = maxSubjectNames.SelectedItem.Value.Trim();
                sqlPerameterObjects[2] = maxGradeNames.SelectedItem.Value.Trim();
                sqlPerameterObjects[3] = maxHallNames.SelectedItem.Value.Trim();

                sqlPerameterObjects[4] = maxClassName.Text.Trim();
                sqlPerameterObjects[5] = maxClassDate.SelectedItem.Text.Trim();
                sqlPerameterObjects[6] = (maxClassStratTime.SelectedItem.Text + " " + maxClassStratCat.SelectedItem.Text).Trim();
                sqlPerameterObjects[7] = (maxClassEndTime.SelectedItem.Text + " " + maxClassEndCat.SelectedItem.Text).Trim();

                error = MaxSever.Call_Sever_SP("dbo.aspnet_Class_CreateClass", sqlPerameterObjects);

            }
            catch (Exception ex)
            {
                error = "Error SQL" + ex.ToString();
            }

            if (error == "")
            {
                maxErrorLabel.Text = "GOOD";
            }
            else
            {
                maxErrorLabel.Text = error;
            }

        }








    }
}