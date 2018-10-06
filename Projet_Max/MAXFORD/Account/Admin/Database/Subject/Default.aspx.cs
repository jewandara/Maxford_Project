using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD.Account.Admin.Database.Subject
{
    public partial class Default : System.Web.UI.Page
    {

        protected void EditRecord(int id)
        {
            Response.Redirect("Edit.aspx?SubjectID=" + id.ToString(), true);
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            this.EditRecord(0);
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int id = (int)this.GridView1.DataKeys[e.NewEditIndex].Value;
            this.EditRecord(id);
        }

        protected void AccessDataSource1_Deleting(object sender, SqlDataSourceCommandEventArgs e)
        {
            string picture1FileName;
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    command.CommandText = "SELECT SubjectImageThumbnail FROM dbo.ClassSubject WHERE SubjectID = @Id";
                    command.Parameters.AddWithValue("@Id", e.Command.Parameters["@SubjectID"].Value);
                    picture1FileName = Convert.ToString(command.ExecuteScalar());
                }
            }
            if (!string.IsNullOrEmpty(picture1FileName))
            {
                string picture1FilePath_upload = System.IO.Path.Combine(Server.MapPath("~/store/Subject/upload/"), picture1FileName);
                if (System.IO.File.Exists(picture1FilePath_upload))
                {
                    System.IO.File.Delete(picture1FilePath_upload);
                }

                string picture1FilePath_main = System.IO.Path.Combine(Server.MapPath("~/store/Subject/main/"), picture1FileName);
                if (System.IO.File.Exists(picture1FilePath_main))
                {
                    System.IO.File.Delete(picture1FilePath_main);
                }

                string picture1FilePath_thumbnail = System.IO.Path.Combine(Server.MapPath("~/store/Subject/thumbnail/"), picture1FileName);
                if (System.IO.File.Exists(picture1FilePath_thumbnail))
                {
                    System.IO.File.Delete(picture1FilePath_thumbnail);
                }
            }
        }

    }
}