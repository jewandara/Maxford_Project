using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD.Account.Admin.WebPage.Main
{
    public partial class Header : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.ScriptManager1.IsInAsyncPostBack) { ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "initializeUI", "initializeUI();", true); }
            if (!this.IsPostBack)
            {
                using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                {
                    using (SqlCommand command = connection.CreateCommand())
                    {
                        command.CommandType = CommandType.Text;
                        command.CommandText = "SELECT * FROM dbo.PageMain WHERE PageDataCatogory = 'MAIN_HEADER'";
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                this.PageMainTitle.Text = Convert.ToString(reader["PageMainTitle"]);
                                this.PageMainBody.Text = Convert.ToString(reader["PageMainBody"]);
                                this.PageMainTitleLink.Text = Convert.ToString(reader["PageMainTitleLink"]);
                                this.ModifiedDate.Text = Convert.ToString(reader["ModifiedDate"]);
                            }
                        }
                    }
                }
            }
            this.UpdateProgress1.AssociatedUpdatePanelID = this.UpdatePanel1.UniqueID;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    command.CommandType = CommandType.Text;
                    command.CommandText = "UPDATE dbo.PageMain SET PageMainTitle=@PageMainTitle,PageMainTitleLink=@PageMainTitleLink,PageMainBody=@PageMainBody,ModifiedDate=GETDATE() WHERE PageDataCatogory = 'MAIN_HEADER'";
                    command.Parameters.AddWithValue("@PageMainTitle", this.PageMainTitle.Text);
                    command.Parameters.AddWithValue("@PageMainTitleLink", this.PageMainTitleLink.Text);
                    command.Parameters.AddWithValue("@PageMainBody", this.PageMainBody.Text);
                    command.ExecuteNonQuery();
                }
            }
        }

    }
}