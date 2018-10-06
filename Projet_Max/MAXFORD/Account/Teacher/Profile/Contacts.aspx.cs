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
    public partial class Contacts : System.Web.UI.Page
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
                                    this.LabelTeacherName.Text = Convert.ToString(reader["Title"]) + "  " + Convert.ToString(reader["UserFirstName"]) + "  " + Convert.ToString(reader["UserLastName"]);
                                    this.PersonalEmail.Text = Convert.ToString(reader["PersonalEmail"]);
                                    this.OfficealEmail.Text = Convert.ToString(reader["OfficealEmail"]);
                                    this.TelePhone.Text = Convert.ToString(reader["TelePhone"]);
                                    this.HandPhone.Text = Convert.ToString(reader["HandPhone"]);
                                    this.ContactNo.Text = Convert.ToString(reader["ContactNo"]);
                                    this.FaxNumber.Text = Convert.ToString(reader["FaxNumber"]);

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
                    command.CommandText = "UPDATE dbo.UsersData SET HomeAddressOne=@HomeAddressOne,HomeAddressTwo=@HomeAddressTwo,OfficeAddressOne=@OfficeAddressOne,OfficeAddressTwo=@OfficeAddressTwo,City=@City,States=@States,Region=@Region,Province=@Province,ZIPCode=@ZIPCode,Country=@Country WHERE UserId = (SELECT UserId FROM dbo.Users WHERE UserName='" + UserName + "')";

                    command.Parameters.AddWithValue("@PersonalEmail", this.PersonalEmail.Text);
                    command.Parameters.AddWithValue("@OfficealEmail", this.OfficealEmail.Text);
                    command.Parameters.AddWithValue("@TelePhone", this.TelePhone.Text);

                    command.Parameters.AddWithValue("@HandPhone", this.HandPhone.Text);
                    command.Parameters.AddWithValue("@ContactNo", this.ContactNo.Text);
                    command.Parameters.AddWithValue("@FaxNumber", this.FaxNumber.Text);

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