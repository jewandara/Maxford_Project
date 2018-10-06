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
    public partial class Edit : System.Web.UI.Page
    {
        public void Page_Init(object o, EventArgs e)
        {
            ClassData();
            ClassSubjects();
            ClassGrade();
            ClassHall();
            
        }


        public void ClassSubjects()
        {
            SqlCommand cmd = new SqlCommand("SELECT SubjectId, SubjectCode + ' : ' + SubjectName AS 'HallNameDiscription' FROM dbo.aspnet_ClassSubject", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
            cmd.Connection.Open();
            SqlDataReader ddlValues = cmd.ExecuteReader();
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
            SqlDataReader ddlValues = cmd.ExecuteReader();
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
            SqlDataReader ddlValues = cmd.ExecuteReader();
            maxHallNames.DataSource = ddlValues;
            maxHallNames.DataValueField = "HallID";
            maxHallNames.DataTextField = "HallName";
            maxHallNames.DataBind();
            cmd.Connection.Close();
        }


        public void ClassData()
        {
            string UserName = "";
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                UserName = System.Web.HttpContext.Current.User.Identity.Name;
            }
            string ClassID = Request.QueryString["ClassID"];
            SqlCommand cmd = new SqlCommand("SELECT * FROM vw_aspnet_TimeTable WHERE (UserName = '" + UserName + "') AND (TimeID = '" + ClassID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
            cmd.Connection.Open();
            SqlDataReader ddlValues = cmd.ExecuteReader();
            if (ddlValues.HasRows)
            {
                while (ddlValues.Read())
                {
                    maxPageTitle.Text = ddlValues["TimeName"].ToString();
                    maxClassID.Text = ddlValues["TimeID"].ToString();
                    maxClassName.Text = ddlValues["TimeName"].ToString();

                    DropDownListDate.Items.Add(new ListItem(ddlValues["TimeDate"].ToString(), ddlValues["TimeDate"].ToString(), true));
                    DropDownListDate.Items.Add(new ListItem("Monday", "Monday", true));
                    DropDownListDate.Items.Add(new ListItem("Tuesday", "Tuesday", true));
                    DropDownListDate.Items.Add(new ListItem("Wednesday", "Wednesday", true));
                    DropDownListDate.Items.Add(new ListItem("Thursday", "Thursday", true));
                    DropDownListDate.Items.Add(new ListItem("Friday", "Friday", true));
                    DropDownListDate.Items.Add(new ListItem("Saturday", "Saturday", true));
                    DropDownListDate.Items.Add(new ListItem("Sunday", "Sunday", true));

                    DropDownListStartHour.Items.Add(new ListItem(ddlValues["TimeStartHour"].ToString(), ddlValues["TimeStartHour"].ToString(), true));
                    DropDownListStartHour.Items.Add(new ListItem("1", "1", true));
                    DropDownListStartHour.Items.Add(new ListItem("2", "2", true));
                    DropDownListStartHour.Items.Add(new ListItem("3", "3", true));
                    DropDownListStartHour.Items.Add(new ListItem("4", "4", true));
                    DropDownListStartHour.Items.Add(new ListItem("5", "5", true));
                    DropDownListStartHour.Items.Add(new ListItem("6", "6", true));
                    DropDownListStartHour.Items.Add(new ListItem("7", "7", true));
                    DropDownListStartHour.Items.Add(new ListItem("8", "8", true));
                    DropDownListStartHour.Items.Add(new ListItem("9", "9", true));
                    DropDownListStartHour.Items.Add(new ListItem("10", "10", true));
                    DropDownListStartHour.Items.Add(new ListItem("11", "11", true));
                    DropDownListStartHour.Items.Add(new ListItem("12", "12", true));
                    DropDownListStartMinit.Items.Add(new ListItem(ddlValues["TimeStartMinit"].ToString(), ddlValues["TimeStartMinit"].ToString(), true));
                    DropDownListStartMinit.Items.Add(new ListItem("00", "00", true));
                    DropDownListStartMinit.Items.Add(new ListItem("15", "15", true));
                    DropDownListStartMinit.Items.Add(new ListItem("30", "30", true));
                    DropDownListStartMinit.Items.Add(new ListItem("45", "45", true));
                    DropDownListStartForm.Items.Add(new ListItem(ddlValues["TimeStartForm"].ToString(), ddlValues["TimeStartForm"].ToString(), true));
                    DropDownListStartForm.Items.Add(new ListItem("AM", "AM", true));
                    DropDownListStartForm.Items.Add(new ListItem("PM", "PM", true));

                    DropDownListEndHour.Items.Add(new ListItem(ddlValues["TimeEndHour"].ToString(), ddlValues["TimeEndHour"].ToString(), true));
                    DropDownListEndHour.Items.Add(new ListItem("1", "1", true));
                    DropDownListEndHour.Items.Add(new ListItem("2", "2", true));
                    DropDownListEndHour.Items.Add(new ListItem("3", "3", true));
                    DropDownListEndHour.Items.Add(new ListItem("4", "4", true));
                    DropDownListEndHour.Items.Add(new ListItem("5", "5", true));
                    DropDownListEndHour.Items.Add(new ListItem("6", "6", true));
                    DropDownListEndHour.Items.Add(new ListItem("7", "7", true));
                    DropDownListEndHour.Items.Add(new ListItem("8", "8", true));
                    DropDownListEndHour.Items.Add(new ListItem("9", "9", true));
                    DropDownListEndHour.Items.Add(new ListItem("10", "10", true));
                    DropDownListEndHour.Items.Add(new ListItem("11", "11", true));
                    DropDownListEndHour.Items.Add(new ListItem("12", "12", true));
                    DropDownListEndMinit.Items.Add(new ListItem(ddlValues["TimeEndMinit"].ToString(), ddlValues["TimeEndMinit"].ToString(), true));
                    DropDownListEndMinit.Items.Add(new ListItem("00", "00", true));
                    DropDownListEndMinit.Items.Add(new ListItem("15", "15", true));
                    DropDownListEndMinit.Items.Add(new ListItem("30", "30", true));
                    DropDownListEndMinit.Items.Add(new ListItem("45", "45", true));
                    DropDownListEndForm.Items.Add(new ListItem(ddlValues["TimeEndForm"].ToString(), ddlValues["TimeEndForm"].ToString(), true));
                    DropDownListEndForm.Items.Add(new ListItem("AM", "AM", true));
                    DropDownListEndForm.Items.Add(new ListItem("PM", "PM", true));

                    maxSubjectNames.Items.Add(new ListItem(ddlValues["SubjectName"].ToString(), ddlValues["SubjectID"].ToString(), true));
                    maxGradeNames.Items.Add(new ListItem(ddlValues["GradeName"].ToString(), ddlValues["GradeID"].ToString(), true));
                    maxHallNames.Items.Add(new ListItem(ddlValues["HallName"].ToString(), ddlValues["HallID"].ToString(), true));

                    maxModifiedDate.Text = ddlValues["ModifiedDate"].ToString();
                    maxInserterdDate.Text = ddlValues["InsertedDate"].ToString();
                }
            }
            else
            {
                maxClassID.Text = "NO CLASS FOUND";
            }
            ddlValues.Close();
            cmd.Connection.Close();
        }


        protected void SaveClass_Click(object sender, EventArgs e)
        {
            string UserName = "";
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                UserName = System.Web.HttpContext.Current.User.Identity.Name;
                SqlCommand cmd = new SqlCommand("UPDATE dbo.aspnet_Class SET ClassName = @ClassName, ClassDate = @ClassDate, ClassStartTime = @ClassStartTime, ClassEndTime = @ClassEndTime, HallID = @HallID, GradeId = @GradeId, SubjectId = @SubjectId, ModifiedDate = getdate() WHERE (ClassId = @ClassId) AND (UserID = (SELECT UserId FROM dbo.aspnet_Users WHERE (UserName = @UserName)))", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();

                cmd.Parameters.Add("@ClassName", SqlDbType.VarChar).Value = maxClassName.Text;
                cmd.Parameters.Add("@ClassDate", SqlDbType.VarChar).Value = DropDownListDate.Text;
                cmd.Parameters.Add("@ClassStartTime", SqlDbType.VarChar).Value = DropDownListStartHour.Text + ":" + DropDownListStartMinit.Text + " " + DropDownListStartForm.Text;
                cmd.Parameters.Add("@ClassEndTime", SqlDbType.VarChar).Value = DropDownListEndHour.Text + ":" + DropDownListEndMinit.Text + " " + DropDownListEndForm.Text;
                cmd.Parameters.Add("@HallID", SqlDbType.VarChar).Value = maxHallNames.SelectedValue;
                cmd.Parameters.Add("@GradeId", SqlDbType.VarChar).Value = maxGradeNames.SelectedValue;
                cmd.Parameters.Add("@SubjectId", SqlDbType.VarChar).Value = maxSubjectNames.SelectedValue;

                cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = UserName;
                cmd.Parameters.Add("@ClassID", SqlDbType.VarChar).Value = maxClassID.Text;
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();

                Response.Redirect("../Classes.aspx");
            }
        }


        protected void DeleteClass_Click(object sender, EventArgs e)
        {
            {
                Response.Redirect("Delete.aspx?ClassID=" + Request.QueryString["ClassID"]);
            }
        }


    }
}