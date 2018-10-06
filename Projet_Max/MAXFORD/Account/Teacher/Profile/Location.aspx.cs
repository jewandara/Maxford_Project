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
    public partial class Location : System.Web.UI.Page
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
                                    this.HomeAddressOne.Text = Convert.ToString(reader["HomeAddressOne"]);
                                    this.HomeAddressTwo.Text = Convert.ToString(reader["HomeAddressTwo"]);
                                    this.OfficeAddressOne.Text = Convert.ToString(reader["OfficeAddressOne"]);
                                    this.OfficeAddressTwo.Text = Convert.ToString(reader["OfficeAddressTwo"]);
                                    this.City.Text = Convert.ToString(reader["City"]);
                                    this.States.Text = Convert.ToString(reader["States"]);
                                    this.maxRegion.Text = Convert.ToString(reader["Region"]);
                                    this.Province.Text = Convert.ToString(reader["Province"]);
                                    this.ZIPCode.Text = Convert.ToString(reader["ZIPCode"]);
                                    this.Country.Text = Convert.ToString(reader["Country"]);

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

                    command.Parameters.AddWithValue("@HomeAddressOne", this.HomeAddressOne.Text);
                    command.Parameters.AddWithValue("@HomeAddressTwo", this.HomeAddressTwo.Text);
                    command.Parameters.AddWithValue("@OfficeAddressOne",this.OfficeAddressOne.Text);

                    command.Parameters.AddWithValue("@OfficeAddressTwo", this.OfficeAddressTwo.Text);
                    command.Parameters.AddWithValue("@City", this.City.Text);
                    command.Parameters.AddWithValue("@States", this.States.Text);
                    command.Parameters.AddWithValue("@Region", this.maxRegion.Text);
                    command.Parameters.AddWithValue("@Province", this.Province.Text);
                    command.Parameters.AddWithValue("@ZIPCode", this.ZIPCode.Text);
                    command.Parameters.AddWithValue("@Country", this.Country.Text);

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