using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAXFORD.Account.Config.DataConnection;


namespace MAXFORD.Account.Teacher.Event
{
    public partial class Edit : System.Web.UI.Page
    {


        String UserID = "";

        public void Page_Init(object o, EventArgs e)
        {
            Display();
            EventData();
            DropDownListEventType.SelectedIndex = 1;
        }

        public void Display()
        {
            DropDownListDate.Dispose();
            DropDownListMonth.Dispose();
            DropDownListYear.Dispose();

            DropDownListHour.Dispose();
            DropDownListMinit.Dispose();
            DropDownListTime.Dispose();

            int yearNow = Int32.Parse(DateTime.Now.Year.ToString());

            DropDownListDate.SelectedIndex = 1;
            for (int i = 1; i < 32; i++)
            {
                DropDownListDate.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
            }

            //VIEW MONTH
            DropDownListMonth.SelectedIndex = 1;
            DropDownListMonth.Items.Add(new ListItem("January", "1", true));
            DropDownListMonth.Items.Add(new ListItem("February", "2", true));
            DropDownListMonth.Items.Add(new ListItem("March", "3", true));
            DropDownListMonth.Items.Add(new ListItem("April", "4", true));
            DropDownListMonth.Items.Add(new ListItem("May", "5", true));
            DropDownListMonth.Items.Add(new ListItem("June", "6", true));
            DropDownListMonth.Items.Add(new ListItem("July", "7", true));
            DropDownListMonth.Items.Add(new ListItem("August", "8", true));
            DropDownListMonth.Items.Add(new ListItem("September", "9", true));
            DropDownListMonth.Items.Add(new ListItem("October", "10", true));
            DropDownListMonth.Items.Add(new ListItem("November", "11", true));
            DropDownListMonth.Items.Add(new ListItem("December", "12", true));

            //VIEW YEAR
            DropDownListYear.SelectedIndex = yearNow;
            for (int i = yearNow + 10; i > yearNow - 25; i--)
            {
                DropDownListYear.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
            }

            //VIEW HOUR
            DropDownListHour.SelectedIndex = 12;
            for (int i = 1; i < 13; i++)
            {
                DropDownListHour.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
            }

            //VIEW HOUR
            DropDownListMinit.SelectedIndex = 12;
            for (int i = 0; i < 61; i++)
            {
                DropDownListMinit.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
            }

            //VIEW HOUR
            DropDownListTime.SelectedValue = "AM";
            DropDownListTime.Items.Add(new ListItem("PM", "PM", true));
            DropDownListTime.Items.Add(new ListItem("AM", "AM", true));
        }

        public void EventData()
        {
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT CatID, CatName FROM dbo.PageCatogory";
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        DropDownListEventType.DataSource = reader;
                        DropDownListEventType.DataValueField = "CatID";
                        DropDownListEventType.DataTextField = "CatName";
                        DropDownListEventType.DataBind();
                        reader.Dispose();
                    }

                    command.Dispose();
                    string UserName = System.Web.HttpContext.Current.User.Identity.Name;
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT UserID FROM dbo.Users WHERE UserName = '" + UserName + "'";
                    using (SqlDataReader reader = command.ExecuteReader())
                    { if (reader.Read()) { UserID = Convert.ToString(reader["UserID"]); } reader.Dispose(); }
                    command.Dispose();
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.ScriptManager1.IsInAsyncPostBack) { ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "initializeUI", "initializeUI();", true); }
            if (!this.IsPostBack)
            {
                string UserName = System.Web.HttpContext.Current.User.Identity.Name;
                if (!string.IsNullOrEmpty(Request.QueryString["EventID"])) { this.RecordId = Request.QueryString["EventID"]; }
                #region Load the Record
                if (this.RecordId != "")
                {
                    this.labelRecordId.Text = this.RecordId.ToString();
                    using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                    {
                        using (SqlCommand command = connection.CreateCommand())
                        {
                            command.CommandType = CommandType.Text;
                            command.Parameters.AddWithValue("@Id", this.RecordId);
                            command.CommandText = "SELECT * FROM dbo.vw_maxford_Event WHERE EventID = @Id AND UserName = '" + UserName + "'";
                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                if (reader.Read())
                                {
                                    DropDownListEventType.SelectedValue = Convert.ToString(reader["CatID"]);
                                    DropDownListDate.SelectedValue = Convert.ToString(reader["DD"]);
                                    DropDownListMonth.SelectedValue = Convert.ToString(reader["MM"]);
                                    DropDownListYear.SelectedValue = Convert.ToString(reader["YY"]);

                                    DropDownListHour.SelectedValue = Convert.ToString(reader["HOUR"]);
                                    DropDownListMinit.SelectedValue = Convert.ToString(reader["MINIT"]);
                                    DropDownListTime.SelectedValue = Convert.ToString(reader["FORM"]);

                                    this.EventName.Text = Convert.ToString(reader["EventName"]);
                                    this.EventTitle.Text = Convert.ToString(reader["EventTitle"]);
                                    this.EventBody.Text = Convert.ToString(reader["EventBody"]);
                                    this.Activiated.Text = Convert.ToString(reader["Activiated"]);
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
                    this.labelRecordId.Text = "New Debate Details";
                    this.Panel1.Visible = false;
                }
                #endregion
            }
            this.UpdateProgress1.AssociatedUpdatePanelID = this.UpdatePanel1.UniqueID;
        }

        protected string RecordId
        {
            get
            {
                if (this.ViewState["RecordId"] != null)
                {
                    return (string)this.ViewState["RecordId"];
                }
                else
                {
                    return "";
                }
            }
            set
            {
                this.ViewState["RecordId"] = value;
            }
        }

        protected void ReturnToList()
        {
            Response.Redirect("default.aspx", true);
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (!this.IsValid) { return; }
            #region Save the Record into the DB
            if (this.RecordId != "")
            {
                using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                {
                    using (SqlCommand command = connection.CreateCommand())
                    {
                        command.CommandType = CommandType.Text;
                        command.CommandText = "UPDATE dbo.Event SET CatID=@CatID,EventName=@EventName,EventDate=@EventDate,EventTime=@EventTime,EventTitle=@EventTitle,EventBody=@EventBody,ModifiedDate=GETDATE() WHERE EventID=@Id AND UserID='" + UserID + "'";
                        command.Parameters.AddWithValue("@CatID", DropDownListEventType.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@EventName", this.EventName.Text);
                        command.Parameters.AddWithValue("@EventDate", DropDownListMonth.SelectedValue.ToString() + "/" + DropDownListDate.SelectedValue.ToString() + "/" + DropDownListYear.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@EventTime", DropDownListHour.SelectedValue.ToString() + ":" + DropDownListMinit.SelectedValue.ToString() + "" + DropDownListTime.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@EventTitle", this.EventTitle.Text);
                        command.Parameters.AddWithValue("@EventBody", this.EventBody.Text);

                        command.Parameters.AddWithValue("@Id", Guid.Parse(RecordId));
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
                        command.CommandText = "INSERT INTO dbo.Event VALUES (NEWID(),@UserID,@EventName,@CatID,@EventDate,@EventTime,@EventTitle,@EventBody,1,GETDATE(),GETDATE())";
                        command.Parameters.AddWithValue("@UserID", UserID);
                        command.Parameters.AddWithValue("@EventName", this.EventName.Text);
                        command.Parameters.AddWithValue("@CatID", DropDownListEventType.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@EventDate", DropDownListMonth.SelectedValue.ToString() + "/" + DropDownListDate.SelectedValue.ToString() + "/" + DropDownListYear.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@EventTime", DropDownListHour.SelectedValue.ToString() + ":" + DropDownListMinit.SelectedValue.ToString() + "" + DropDownListTime.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@EventTitle", this.EventTitle.Text);
                        command.Parameters.AddWithValue("@EventBody", this.EventBody.Text);
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