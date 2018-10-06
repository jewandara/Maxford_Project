using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAXFORD.Account.Config.DataConnection;


namespace MAXFORD.Account.Teacher.Profile
{
    public partial class Details : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.ScriptManager1.IsInAsyncPostBack)
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "initializeUI", "initializeUI();", true);
            }

            if (!this.IsPostBack)
            {
                #region Load the Profile
                if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                    {
                        using (SqlCommand command = connection.CreateCommand())
                        {
                            String UserName = System.Web.HttpContext.Current.User.Identity.Name;
                            command.CommandType = CommandType.Text;
                            command.CommandText = "SELECT * FROM dbo._vw_maxford_UsersData WHERE UserName = '" + UserName + "'";
                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                if (reader.Read())
                                {
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

                                    int Todate = DateTime.Now.Year;
                                    DropDownListYear.Items.Add(new ListItem(reader["BYear"].ToString(), reader["BYear"].ToString(), true));
                                    for (int i = Todate; i > (Todate - 100); i--)
                                    {
                                        DropDownListYear.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
                                    }

                                    DropDownListMonth.Items.Add(new ListItem(reader["BMonth"].ToString(), reader["BMonth"].ToString(), true));
                                    DropDownListMonth.Items.Add(new ListItem("January", "January", true));
                                    DropDownListMonth.Items.Add(new ListItem("February", "February", true));
                                    DropDownListMonth.Items.Add(new ListItem("March", "March", true));
                                    DropDownListMonth.Items.Add(new ListItem("April", "April", true));
                                    DropDownListMonth.Items.Add(new ListItem("May", "May", true));
                                    DropDownListMonth.Items.Add(new ListItem("June", "June", true));
                                    DropDownListMonth.Items.Add(new ListItem("July", "July", true));
                                    DropDownListMonth.Items.Add(new ListItem("August", "August", true));
                                    DropDownListMonth.Items.Add(new ListItem("September", "September", true));
                                    DropDownListMonth.Items.Add(new ListItem("October", "October", true));
                                    DropDownListMonth.Items.Add(new ListItem("November", "November", true));
                                    DropDownListMonth.Items.Add(new ListItem("December", "December", true));

                                    DropDownListDate.Items.Add(new ListItem(reader["BDay"].ToString(), reader["BDay"].ToString(), true));
                                    for (int i = 1; i < 32; i++)
                                    {
                                        DropDownListDate.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
                                    }

                                    this.LabelTeacherName.Text = Convert.ToString(reader["Title"]) + "  " + Convert.ToString(reader["UserFirstName"]) + "  " + Convert.ToString(reader["UserLastName"]);
                                    this.UserFirstName.Text = Convert.ToString(reader["UserFirstName"]);
                                    this.UserMiddleName.Text = Convert.ToString(reader["UserMiddleName"]);
                                    this.UserLastName.Text = Convert.ToString(reader["UserLastName"]);
                                    this.UserSurname.Text = Convert.ToString(reader["UserSurname"]);
                                    this.UserInitialName.Text = Convert.ToString(reader["UserInitialName"]);

                                    connection.Close();
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
                #endregion
            }
            this.UpdateProgress1.AssociatedUpdatePanelID = this.UpdatePanel1.UniqueID;
        }

        protected void ReturnToList()
        {
            Response.Redirect("default.aspx", true);
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            if (!this.IsValid)
            {
                return;
            }
            
            #region Save the Record into the DB

                using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                {
                    using (SqlCommand command = connection.CreateCommand())
                    {
                        String UserName = System.Web.HttpContext.Current.User.Identity.Name;

                        command.CommandType = CommandType.Text;
                        command.CommandText = "UPDATE dbo.UsersData SET Title=@Title,DateOfBirth=@DateOfBirth,Gender=@Gender,UserFirstName=@UserFirstName,UserMiddleName=@UserMiddleName,UserLastName=@UserLastName,UserSurname=@UserSurname,UserInitialName=@UserInitialName WHERE UserId = (SELECT UserId FROM dbo.Users WHERE UserName='" + UserName + "')";

                        command.Parameters.AddWithValue("@Title", this.DropDownListTitle.Text);
                        command.Parameters.AddWithValue("@Gender", this.DropDownListGender.Text);
                        command.Parameters.AddWithValue("@DateOfBirth", DropDownListDate.Text + "/" + DropDownListMonth.Text + "/" + DropDownListYear.Text);

                        command.Parameters.AddWithValue("@UserFirstName", this.UserFirstName.Text);
                        command.Parameters.AddWithValue("@UserMiddleName", this.UserMiddleName.Text);
                        command.Parameters.AddWithValue("@UserLastName", this.UserLastName.Text);
                        command.Parameters.AddWithValue("@UserSurname", this.UserSurname.Text);
                        command.Parameters.AddWithValue("@UserInitialName", this.UserInitialName.Text);

                        command.ExecuteNonQuery();
                        connection.Close();
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