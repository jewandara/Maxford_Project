using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace maxACCOUNT.Admin.web.TEACHERS.Classes
{
    public partial class Edit : System.Web.UI.Page
    {
        public void Page_Init(object o, EventArgs e)
        {
            ClassData();
        }

        public void ClassSubjects()
        {
            try
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
            catch (Exception) {}
        }


        public void ClassGrade()
        {
            try
            {
                if (RadioButtonPrimary.Checked == true)
                {
                    SqlCommand cmd = new SqlCommand("SELECT GradeId, GradeName FROM [aspnet_ClassGrade] WHERE GradeCatogory = 'PRIMARY'", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                    cmd.Connection.Open();
                    SqlDataReader ddlValues;
                    ddlValues = cmd.ExecuteReader();
                    maxGradeNames.DataSource = ddlValues;
                    maxGradeNames.DataValueField = "GradeId";
                    maxGradeNames.DataTextField = "GradeName";
                    maxGradeNames.DataBind();
                    cmd.Connection.Close();
                }
                if (RadioButtonSecondary.Checked == true)
                {
                    SqlCommand cmd = new SqlCommand("SELECT GradeId, GradeName FROM [aspnet_ClassGrade] WHERE GradeCatogory = 'SECONDARY'", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                    cmd.Connection.Open();
                    SqlDataReader ddlValues;
                    ddlValues = cmd.ExecuteReader();
                    maxGradeNames.DataSource = ddlValues;
                    maxGradeNames.DataValueField = "GradeId";
                    maxGradeNames.DataTextField = "GradeName";
                    maxGradeNames.DataBind();
                    cmd.Connection.Close();
                }
                if (RadioButtonOrdinary.Checked == true)
                {
                    SqlCommand cmd = new SqlCommand("SELECT GradeId, GradeName FROM [aspnet_ClassGrade] WHERE GradeCatogory = 'ORDINARY'", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                    cmd.Connection.Open();
                    SqlDataReader ddlValues;
                    ddlValues = cmd.ExecuteReader();
                    maxGradeNames.DataSource = ddlValues;
                    maxGradeNames.DataValueField = "GradeId";
                    maxGradeNames.DataTextField = "GradeName";
                    maxGradeNames.DataBind();
                    cmd.Connection.Close();
                }
                if (RadioButtonAdvanced.Checked == true)
                {
                    SqlCommand cmd = new SqlCommand("SELECT GradeId, GradeName FROM [aspnet_ClassGrade] WHERE GradeCatogory = 'ADVANCED'", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                    cmd.Connection.Open();
                    SqlDataReader ddlValues;
                    ddlValues = cmd.ExecuteReader();
                    maxGradeNames.DataSource = ddlValues;
                    maxGradeNames.DataValueField = "GradeId";
                    maxGradeNames.DataTextField = "GradeName";
                    maxGradeNames.DataBind();
                    cmd.Connection.Close();
                }
            }
            catch (Exception) {}
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



        public void ClassData()
        {

            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string UserID = Request.QueryString["UserID"];
                string ClassID = Request.QueryString["ClassID"];
                SqlCommand cmd = new SqlCommand("SELECT * FROM vw_aspnet_TimeTable WHERE (UserID = '" + UserID + "') AND (TimeID = '" + ClassID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                SqlDataReader ddlValues = cmd.ExecuteReader();
                if (ddlValues.HasRows)
                {
                    while (ddlValues.Read())
                    {
                        maxTextBoxUserId.Text = UserID;
                        maxClassName.Text = ddlValues["TimeName"].ToString();
                        maxTextBoxClassId.Text = ddlValues["TimeID"].ToString();
                        maxTextBoxClassName.Text = ddlValues["TimeName"].ToString();

                        if (ddlValues["GradeCatogory"].ToString() == "PRIMARY")
                        {
                            RadioButtonPrimary.Checked = true;
                        }
                        else if (ddlValues["GradeCatogory"].ToString() == "SECONDARY")
                        {
                            RadioButtonSecondary.Checked = true;
                        }
                        else if (ddlValues["GradeCatogory"].ToString() == "ORDINARY")
                        {
                            RadioButtonOrdinary.Checked = true;
                        }
                        else if (ddlValues["GradeCatogory"].ToString() == "ADVANCED")
                        {
                            RadioButtonAdvanced.Checked = true;
                        }

                        maxDropDownListClassDate.Items.Add(new ListItem(ddlValues["TimeDate"].ToString(), ddlValues["TimeDate"].ToString(), true));
                        maxDropDownListClassDate.Items.Add(new ListItem("Monday", "Monday", true));
                        maxDropDownListClassDate.Items.Add(new ListItem("Tuesday", "Tuesday", true));
                        maxDropDownListClassDate.Items.Add(new ListItem("Wednesday", "Wednesday", true));
                        maxDropDownListClassDate.Items.Add(new ListItem("Thursday", "Thursday", true));
                        maxDropDownListClassDate.Items.Add(new ListItem("Friday", "Friday", true));
                        maxDropDownListClassDate.Items.Add(new ListItem("Saturday", "Saturday", true));
                        maxDropDownListClassDate.Items.Add(new ListItem("Sunday", "Sunday", true));

                        maxDropDownListStartHour.Items.Add(new ListItem(ddlValues["TimeStartHour"].ToString(), ddlValues["TimeStartHour"].ToString(), true));
                        maxDropDownListStartHour.Items.Add(new ListItem("1", "1", true));
                        maxDropDownListStartHour.Items.Add(new ListItem("2", "2", true));
                        maxDropDownListStartHour.Items.Add(new ListItem("3", "3", true));
                        maxDropDownListStartHour.Items.Add(new ListItem("4", "4", true));
                        maxDropDownListStartHour.Items.Add(new ListItem("5", "5", true));
                        maxDropDownListStartHour.Items.Add(new ListItem("6", "6", true));
                        maxDropDownListStartHour.Items.Add(new ListItem("7", "7", true));
                        maxDropDownListStartHour.Items.Add(new ListItem("8", "8", true));
                        maxDropDownListStartHour.Items.Add(new ListItem("9", "9", true));
                        maxDropDownListStartHour.Items.Add(new ListItem("10", "10", true));
                        maxDropDownListStartHour.Items.Add(new ListItem("11", "11", true));
                        maxDropDownListStartHour.Items.Add(new ListItem("12", "12", true));
                        maxDropDownListStartMinit.Items.Add(new ListItem(ddlValues["TimeStartMinit"].ToString(), ddlValues["TimeStartMinit"].ToString(), true));
                        maxDropDownListStartMinit.Items.Add(new ListItem("00", "00", true));
                        maxDropDownListStartMinit.Items.Add(new ListItem("15", "15", true));
                        maxDropDownListStartMinit.Items.Add(new ListItem("30", "30", true));
                        maxDropDownListStartMinit.Items.Add(new ListItem("45", "45", true));
                        maxDropDownListStartTime.Items.Add(new ListItem(ddlValues["TimeStartForm"].ToString(), ddlValues["TimeStartForm"].ToString(), true));
                        maxDropDownListStartTime.Items.Add(new ListItem("AM", "AM", true));
                        maxDropDownListStartTime.Items.Add(new ListItem("PM", "PM", true));

                        maxDropDownListEndHour.Items.Add(new ListItem(ddlValues["TimeEndHour"].ToString(), ddlValues["TimeEndHour"].ToString(), true));
                        maxDropDownListEndHour.Items.Add(new ListItem("1", "1", true));
                        maxDropDownListEndHour.Items.Add(new ListItem("2", "2", true));
                        maxDropDownListEndHour.Items.Add(new ListItem("3", "3", true));
                        maxDropDownListEndHour.Items.Add(new ListItem("4", "4", true));
                        maxDropDownListEndHour.Items.Add(new ListItem("5", "5", true));
                        maxDropDownListEndHour.Items.Add(new ListItem("6", "6", true));
                        maxDropDownListEndHour.Items.Add(new ListItem("7", "7", true));
                        maxDropDownListEndHour.Items.Add(new ListItem("8", "8", true));
                        maxDropDownListEndHour.Items.Add(new ListItem("9", "9", true));
                        maxDropDownListEndHour.Items.Add(new ListItem("10", "10", true));
                        maxDropDownListEndHour.Items.Add(new ListItem("11", "11", true));
                        maxDropDownListEndHour.Items.Add(new ListItem("12", "12", true));
                        maxDropDownListEndMinit.Items.Add(new ListItem(ddlValues["TimeEndMinit"].ToString(), ddlValues["TimeEndMinit"].ToString(), true));
                        maxDropDownListEndMinit.Items.Add(new ListItem("00", "00", true));
                        maxDropDownListEndMinit.Items.Add(new ListItem("15", "15", true));
                        maxDropDownListEndMinit.Items.Add(new ListItem("30", "30", true));
                        maxDropDownListEndMinit.Items.Add(new ListItem("45", "45", true));
                        maxDropDownListEndTime.Items.Add(new ListItem(ddlValues["TimeEndForm"].ToString(), ddlValues["TimeEndForm"].ToString(), true));
                        maxDropDownListEndTime.Items.Add(new ListItem("AM", "AM", true));
                        maxDropDownListEndTime.Items.Add(new ListItem("PM", "PM", true));

                        ClassSubjects();
                        ClassGrade();
                        ClassHall();

                        maxSubjectNames.SelectedValue = ddlValues["SubjectID"].ToString();
                        maxGradeNames.SelectedValue = ddlValues["GradeID"].ToString();
                        maxHallNames.SelectedValue = ddlValues["HallID"].ToString();

                        maxModifiedDate.Text = ddlValues["ModifiedDate"].ToString();
                        maxInserterdDate.Text = ddlValues["InsertedDate"].ToString();
                    }
                }
                else
                {
                    maxTextBoxClassId.Text = "NO CLASS FOUND";
                }
                ddlValues.Close();
                cmd.Connection.Close();
            }
        }


        protected void SaveClass_Click(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string UserID = Request.QueryString["UserID"];
                string ClassID = Request.QueryString["ClassID"];

                SqlCommand cmd = new SqlCommand("UPDATE dbo.aspnet_Class SET ClassName = @ClassName, ClassDate = @ClassDate, ClassStartTime = @ClassStartTime, ClassEndTime = @ClassEndTime, HallID = @HallID, GradeId = @GradeId, SubjectId = @SubjectId, ModifiedDate = getdate() WHERE (ClassId = @ClassId) AND (UserID = @UserID)", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();

                cmd.Parameters.Add("@ClassName", SqlDbType.VarChar).Value = maxTextBoxClassName.Text;
                cmd.Parameters.Add("@ClassDate", SqlDbType.VarChar).Value = maxDropDownListClassDate.Text;
                cmd.Parameters.Add("@ClassStartTime", SqlDbType.VarChar).Value = maxDropDownListStartHour.Text + ":" + maxDropDownListStartMinit.Text + " " + maxDropDownListStartTime.Text;
                cmd.Parameters.Add("@ClassEndTime", SqlDbType.VarChar).Value = maxDropDownListEndHour.Text + ":" + maxDropDownListEndMinit.Text + " " + maxDropDownListEndTime.Text;
                cmd.Parameters.Add("@HallID", SqlDbType.VarChar).Value = maxHallNames.SelectedValue;
                cmd.Parameters.Add("@GradeId", SqlDbType.VarChar).Value = maxGradeNames.SelectedValue;
                cmd.Parameters.Add("@SubjectId", SqlDbType.VarChar).Value = maxSubjectNames.SelectedValue;

                cmd.Parameters.Add("@UserID", SqlDbType.VarChar).Value = UserID;
                cmd.Parameters.Add("@ClassID", SqlDbType.VarChar).Value = ClassID;

                cmd.ExecuteNonQuery();
                cmd.Connection.Close();

                Response.Redirect("Default.aspx?UserID=" + UserID);
            }
        }


        protected void DeleteClass_Click(object sender, EventArgs e)
        {
            {
                Response.Redirect("Delete.aspx?UserID=" + Request.QueryString["UserID"] + "&ClassID=" + Request.QueryString["ClassID"]);
            }
        }

        protected void RadioButtonSecondary_CheckedChanged(object sender, EventArgs e)
        {
            ClassSubjects();
            ClassGrade();
        }


    }
}