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
    public partial class Privacy : System.Web.UI.Page
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
                                    this.DriverLicen.Text = Convert.ToString(reader["DriverLicen"]);
                                    this.NICNumber.Text = Convert.ToString(reader["NICNumber"]);
                                    this.maxUserID.Text = Convert.ToString(reader["UserID"]);
                                    this.InsertedDate.Text = Convert.ToString(reader["InsertedDate"]);
                                    this.ModifiedDate.Text = Convert.ToString(reader["ModifiedDate"]);

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
                    command.CommandText = "UPDATE dbo.UsersData SET DriverLicen=@DriverLicen,NICNumber=@NICNumber  WHERE UserId = (SELECT UserId FROM dbo.Users WHERE UserName='" + UserName + "')";

                    command.Parameters.AddWithValue("@DriverLicen", this.DriverLicen.Text);
                    command.Parameters.AddWithValue("@NICNumber", this.NICNumber.Text);

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