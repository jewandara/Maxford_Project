using System;
using System.Collections;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD.Account.Admin.Database.Teacher
{
    public partial class Edit : System.Web.UI.Page
    {

  
        protected String RecordId
        {
            get
            {
                if (this.ViewState["RecordId"] != null)
                {
                    return (String)this.ViewState["RecordId"];
                }
                else
                {
                    return "";
                }
            }
            set
            {
                this.ViewState["RecordId"] = value.ToString();
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {

            if (this.ScriptManager1.IsInAsyncPostBack)
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "initializeUI", "initializeUI();", true);
            }


            if (!this.IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request.QueryString["UserID"]))
                {
                    this.RecordId = Request.QueryString["UserID"];
                }

                #region Load the Record
                if (this.RecordId != "")
                {
                    // UPDATE
                    this.labelRecordId.Text = this.RecordId.ToString();

                    using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                    {
                        using (SqlCommand command = connection.CreateCommand())
                        {
                            command.CommandText = "SELECT * FROM dbo.UsersData WHERE UserID = @Id";
                            command.Parameters.AddWithValue("@Id", this.RecordId);

                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                if (reader.Read())
                                {
                                    this.LabelTeacherName.Text = Convert.ToString(reader["Title"]) + "  " + Convert.ToString(reader["UserFirstName"]) + "  " + Convert.ToString(reader["UserLastName"]);
                                    
                                    DropDownListTitle.Items.Add(new ListItem(reader["Title"].ToString(), reader["Title"].ToString(), true));
                                    DropDownListTitle.Items.Add(new ListItem("Mr", "Mr", true));
                                    DropDownListTitle.Items.Add(new ListItem("Miss", "Miss", true));
                                    DropDownListTitle.Items.Add(new ListItem("Mrs", "Mrs", true));
                                    DropDownListTitle.Items.Add(new ListItem("Ms", "Ms", true));
                                    DropDownListTitle.Items.Add(new ListItem("Doctor", "Doctor", true));
                                    DropDownListTitle.Items.Add(new ListItem("Prof", "Prof", true));

                                    DropDownListGender.Items.Add(new ListItem(reader["Gender"].ToString(), reader["Gender"].ToString(), true));
                                    DropDownListGender.Items.Add(new ListItem("MALE", "MALE", true));
                                    DropDownListGender.Items.Add(new ListItem("FEMALE", "FEMALE", true));

                                    this.TeacherFirstName.Text = Convert.ToString(reader["UserFirstName"]);
                                    this.TeacherLastName.Text = Convert.ToString(reader["UserLastName"]);
                                    this.AboutTeacher.Text = Convert.ToString(reader["AboutUser"]);
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
                    this.labelRecordId.Text = "New record";
                }
                #endregion

            }

            this.UpdateProgress1.AssociatedUpdatePanelID = this.UpdatePanel1.UniqueID;
        }








        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (TeacherFirstName.Text.Length > 4 && TeacherLastName.Text.Length > 5)
            {

            }
        }

        private Boolean createTeacher(String UNAME)
        {
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    //command.CommandType = CommandType.Text;
                    command.CommandText = "EXEC dbo._sp_maxford_CREATE_TEACHER @UserName='" + UNAME + "',@FirstName='" + this.TeacherFirstName.Text + "',@LastName='" + this.TeacherLastName.Text + "',@Title='" + this.DropDownListTitle.SelectedValue + "',@Gender='" + this.DropDownListGender.SelectedValue + "',@AboutUser='" + this.AboutTeacher.Text + "'";
                    command.ExecuteNonQuery();
                    return true;
                }
            }
        }

        protected void ReturnToList()
        {
            Response.Redirect("default.aspx", true);
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            this.ReturnToList();
        }

    }
}