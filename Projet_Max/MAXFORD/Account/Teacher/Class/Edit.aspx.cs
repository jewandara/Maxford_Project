using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD.Account.Teacher.Class
{
    public partial class Edit : System.Web.UI.Page
    {

        private string UserID = "";

        public void Page_Init(object o, EventArgs e)
        {           
            Display();
            if (!string.IsNullOrEmpty(Request.QueryString["ClassCatogory"])) { ClassData(Request.QueryString["ClassCatogory"]); }
            else { ClassNewData(); }
        }

        public void ClassData(String CLASS_CAT)
        {
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT SubjectId, SubjectCode + ' : ' + SubjectName AS 'SubjectData' FROM dbo.ClassSubject WHERE SubjectCode = '" + CLASS_CAT + "'";
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        DropDownListSubject.DataSource = reader;
                        DropDownListSubject.DataValueField = "SubjectId";
                        DropDownListSubject.DataTextField = "SubjectData";
                        DropDownListSubject.DataBind();
                        reader.Dispose();
                    }
                    command.Dispose();

                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT GradeId, GradeCatogory + ' : ' + GradeName AS 'GradeData' FROM dbo.ClassGrade WHERE GradeCatogory = '" + CLASS_CAT + "'";
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        DropDownListGrade.DataSource = reader;
                        DropDownListGrade.DataValueField = "GradeId";
                        DropDownListGrade.DataTextField = "GradeData";
                        DropDownListGrade.DataBind();
                        reader.Dispose();
                    }
                    command.Dispose();

                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT HallID, HallName FROM dbo.ClassHall";
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        DropDownListHall.DataSource = reader;
                        DropDownListHall.DataValueField = "HallID";
                        DropDownListHall.DataTextField = "HallName";
                        DropDownListHall.DataBind();
                        reader.Dispose();
                    }
                    command.Dispose();
                    
                    string UserName = System.Web.HttpContext.Current.User.Identity.Name;
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT UserID FROM dbo.Users WHERE UserName = @UserName";
                    command.Parameters.AddWithValue("@UserName", UserName);
                    using (SqlDataReader reader = command.ExecuteReader())
                    { 
                        if (reader.Read()) { UserID = Convert.ToString(reader["UserID"]); } 
                    }
                    command.Dispose();
                    connection.Close();
                }                    
            }
        }

        public void ClassNewData()
        {
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT SubjectId, SubjectCode + ' : ' + SubjectName AS 'SubjectData' FROM dbo.ClassSubject";
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        DropDownListSubject.DataSource = reader;
                        DropDownListSubject.DataValueField = "SubjectId";
                        DropDownListSubject.DataTextField = "SubjectData";
                        DropDownListSubject.DataBind();
                        reader.Dispose();
                    }
                    command.Dispose();

                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT GradeId, GradeCatogory + ' : ' + GradeName AS 'GradeData' FROM dbo.ClassGrade";
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        DropDownListGrade.DataSource = reader;
                        DropDownListGrade.DataValueField = "GradeId";
                        DropDownListGrade.DataTextField = "GradeData";
                        DropDownListGrade.DataBind();
                        reader.Dispose();
                    }
                    command.Dispose();

                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT HallID, HallName FROM dbo.ClassHall";
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        DropDownListHall.DataSource = reader;
                        DropDownListHall.DataValueField = "HallID";
                        DropDownListHall.DataTextField = "HallName";
                        DropDownListHall.DataBind();
                        reader.Dispose();
                    }
                    command.Dispose();

                    string UserName = System.Web.HttpContext.Current.User.Identity.Name;
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT UserID FROM dbo.Users WHERE UserName = @UserName";
                    command.Parameters.AddWithValue("@UserName", UserName);
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read()) { UserID = Convert.ToString(reader["UserID"]); }
                    }
                    command.Dispose();
                    connection.Close();
                }
            }
        }

        public void Display()
        {
            DropDownListDate.SelectedIndex = 1;
            DropDownListDate.Items.Add(new ListItem("Monday", "Monday", true));
            DropDownListDate.Items.Add(new ListItem("Tuesday", "Tuesday", true));
            DropDownListDate.Items.Add(new ListItem("Wednesday", "Wednesday", true));
            DropDownListDate.Items.Add(new ListItem("Thursday", "Thursday", true));
            DropDownListDate.Items.Add(new ListItem("Friday", "Friday", true));
            DropDownListDate.Items.Add(new ListItem("Saturday", "Saturday", true));
            DropDownListDate.Items.Add(new ListItem("Sunday", "Sunday", true));

            DropDownListClassHourStart.SelectedIndex = 12;
            for (int i = 1; i < 13; i++) { DropDownListClassHourStart.Items.Add(new ListItem(i.ToString(), i.ToString(), true)); }
            DropDownListClassHourEnd.SelectedIndex = 12;
            for (int i = 1; i < 13; i++) { DropDownListClassHourEnd.Items.Add(new ListItem(i.ToString(), i.ToString(), true)); }

            DropDownListClassMinitStart.SelectedIndex = 0;
            for (int i = 0; i < 61; i++) { DropDownListClassMinitStart.Items.Add(new ListItem(i.ToString(), i.ToString(), true)); i = i + 14; }
            DropDownListClassMinitEnd.SelectedIndex = 0;
            for (int i = 0; i < 61; i++) { DropDownListClassMinitEnd.Items.Add(new ListItem(i.ToString(), i.ToString(), true)); i = i + 14; }

            DropDownListClassTimeStart.SelectedValue = "PM";
            DropDownListClassTimeStart.Items.Add(new ListItem("PM", "PM", true));
            DropDownListClassTimeStart.Items.Add(new ListItem("AM", "AM", true));

            DropDownListClassTimeEnd.SelectedValue = "PM";
            DropDownListClassTimeEnd.Items.Add(new ListItem("PM", "PM", true));
            DropDownListClassTimeEnd.Items.Add(new ListItem("AM", "AM", true));
        }












        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.ScriptManager1.IsInAsyncPostBack) { ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "initializeUI", "initializeUI();", true); }
            if (!this.IsPostBack)
            {
                string UserName = System.Web.HttpContext.Current.User.Identity.Name;   
                if (!string.IsNullOrEmpty(Request.QueryString["ClassID"])) { this.RecordId = int.Parse(Request.QueryString["ClassID"]); }

                #region Load the Record
                if (this.RecordId != 0)
                {
                    this.labelRecordId.Text = this.RecordId.ToString();
                    using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                    {
                        using (SqlCommand command = connection.CreateCommand())
                        {
                            command.CommandType = CommandType.Text;
                            command.CommandText = "SELECT * FROM dbo.vw_maxford_Classes WHERE ClassId = @Id AND UserName = @UserName";
                            command.Parameters.AddWithValue("@Id", this.RecordId);
                            command.Parameters.AddWithValue("@UserName", UserName);

                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                if (reader.Read())
                                {
                                    ClassName.Text = Convert.ToString(reader["ClassName"]);
                                    DropDownListDate.SelectedValue = Convert.ToString(reader["ClassDate"]);
                                    DropDownListClassHourStart.SelectedValue = Convert.ToString(reader["TimeStartHour"]);
                                    DropDownListClassMinitStart.SelectedValue = Convert.ToString(reader["TimeStartMinit"]);
                                    DropDownListClassTimeStart.SelectedValue = Convert.ToString(reader["TimeStartForm"]);
                                    DropDownListClassHourEnd.SelectedValue = Convert.ToString(reader["TimeEndHour"]);
                                    DropDownListClassMinitEnd.SelectedValue = Convert.ToString(reader["TimeEndMinit"]);
                                    DropDownListClassTimeEnd.SelectedValue = Convert.ToString(reader["TimeEndForm"]);

                                    DropDownListSubject.SelectedValue = Convert.ToString(reader["SubjectID"]);
                                    DropDownListGrade.SelectedValue = Convert.ToString(reader["GradeID"]);
                                    DropDownListHall.SelectedValue = Convert.ToString(reader["HallID"]);

                                    this.InsertedDate.Text = Convert.ToString(reader["InsertedDate"]);
                                    this.ModifiedDate.Text = Convert.ToString(reader["ModifiedDate"]);
                                }
                                else
                                {
                                    this.ReturnToList();
                                    return;
                                }
                            }
                        }
                    }
                }
                else
                {
                    this.labelRecordId.Text = "New Class";
                    this.Panel1.Visible = false;
                }
                #endregion
            }
            this.UpdateProgress1.AssociatedUpdatePanelID = this.UpdatePanel1.UniqueID;
        }

        protected int RecordId
        {
            get
            {
                if (this.ViewState["RecordId"] != null)
                {
                    return (int)this.ViewState["RecordId"];
                }
                else
                {
                    return 0;
                }
            }
            set
            {
                this.ViewState["RecordId"] = value;
            }
        }

        protected void ReturnToList()
        {
            Response.Redirect("Classes.aspx", true);
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (!this.IsValid) { return; }
            #region Save the Record into the DB
            if (this.RecordId != 0)
            {
                using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                {
                    using (SqlCommand command = connection.CreateCommand())
                    {
                        command.CommandType = CommandType.Text;
                        command.CommandText = "UPDATE dbo.Class SET ClassName=@ClassName,ClassDate=@ClassDate,ClassStartTime=@ClassStartTime,ClassEndTime=@ClassEndTime,SubjectId=@SubjectId,GradeId=@GradeId,HallID=@HallID,ModifiedDate=GETDATE() WHERE ClassId=@Id AND UserID=@UserID";
                        command.Parameters.AddWithValue("@ClassName", this.ClassName.Text);
                        command.Parameters.AddWithValue("@ClassDate", DropDownListDate.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@ClassStartTime", DropDownListClassHourStart.SelectedValue.ToString() + ":" + DropDownListClassMinitStart.SelectedValue.ToString() + "" + DropDownListClassTimeStart.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@ClassEndTime", DropDownListClassHourEnd.SelectedValue.ToString() + ":" + DropDownListClassMinitEnd.SelectedValue.ToString() + "" + DropDownListClassTimeEnd.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@SubjectId", this.DropDownListSubject.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@GradeId", this.DropDownListGrade.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@HallID", this.DropDownListHall.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@UserID", Guid.Parse(UserID));
                        command.Parameters.AddWithValue("@Id", this.RecordId);
                        command.ExecuteNonQuery();
                    }
                }
            }
            else
            {
                using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                {
                    using (SqlCommand command = connection.CreateCommand())
                    {
                        command.CommandText = "INSERT INTO dbo.Class VALUES (@ClassName,@ClassDate,@ClassStartTime,@ClassEndTime,@UserID,@HallID,@GradeId,@SubjectId,1,GETDATE(),GETDATE())";
                        command.Parameters.AddWithValue("@ClassName", this.ClassName.Text);
                        command.Parameters.AddWithValue("@ClassDate", DropDownListDate.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@ClassStartTime", DropDownListClassHourStart.SelectedValue.ToString() + ":" + DropDownListClassMinitStart.SelectedValue.ToString() + "" + DropDownListClassTimeStart.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@ClassEndTime", DropDownListClassHourEnd.SelectedValue.ToString() + ":" + DropDownListClassMinitEnd.SelectedValue.ToString() + "" + DropDownListClassTimeEnd.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@SubjectId", this.DropDownListSubject.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@GradeId", this.DropDownListGrade.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@HallID", this.DropDownListHall.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@UserID", Guid.Parse(UserID));
                        command.Parameters.AddWithValue("@Id", this.RecordId);
                        command.ExecuteNonQuery();
                    }
                }
            }
            #endregion
            this.ReturnToList();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            this.ReturnToList();
        }


    }
}