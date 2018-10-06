using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD.Account.Student.Class
{
    public partial class Request : System.Web.UI.Page
    {

        protected void Page_Init(object sender, EventArgs e)
        {
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    String UserName = System.Web.HttpContext.Current.User.Identity.Name;
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT USERDATA.UserID, USERDATA.Title + ' ' + USERDATA.UserFirstName + ' ' + USERDATA.UserMiddleName + ' ' + USERDATA.UserLastName AS 'UserName' FROM [dbo].[UsersData] AS USERDATA, [dbo].[UsersInRoles] AS ROLETEACHER WHERE USERDATA.UserID = ROLETEACHER.UserID AND  ROLETEACHER.RoleId = '3616F83C-F4E8-4138-8421-DC0FE6D3DDDB'";
                    DataTable table = new DataTable();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    adapter.Fill(table);
                    maxTeachersDropDownList.DataSource = table;
                    maxTeachersDropDownList.DataValueField = "UserID";
                    maxTeachersDropDownList.DataTextField = "UserName";
                    maxTeachersDropDownList.DataBind();
                    maxTeachersDropDownList.Attributes.Add("Size", "10");
                }
            }
        }

        protected void maxTeachersDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    String UserName = System.Web.HttpContext.Current.User.Identity.Name;
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT UserID, ClassId, ClassName + ' - FROM ' + CONVERT(VARCHAR(8), ClassStartTime,100) + ' TO ' + CONVERT(VARCHAR(8), ClassEndTime,100) + ' AT ' + ClassDate AS 'Class' FROM [dbo].[Class] WHERE UserID = '" + maxTeachersDropDownList.SelectedValue.ToString() + "'";
                    DataTable table = new DataTable();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    adapter.Fill(table);
                    maxClassesDropDownList.DataSource = table;
                    maxClassesDropDownList.DataValueField = "ClassId";
                    maxClassesDropDownList.DataTextField = "Class";
                    maxClassesDropDownList.DataBind();
                    maxClassesDropDownList.Attributes.Add("Size", "10");
                }
            }
        }

        protected void ButtonRequest_Click(object sender, EventArgs e)
        {
            try
            {
                if (!IsRequestTeacher())
                {
                    using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                    {
                        using (SqlCommand command = connection.CreateCommand())
                        {
                            String UserName = System.Web.HttpContext.Current.User.Identity.Name;
                            command.CommandType = CommandType.Text;
                            command.CommandText = "INSERT INTO [dbo].[ResetTeacher] VALUES ( @TID, (SELECT UserId FROM [dbo].[Users] WHERE UserName = @SID), 'PENDING', getdate())";
                            command.Parameters.AddWithValue("@TID", maxTeachersDropDownList.SelectedValue.ToString());
                            command.Parameters.AddWithValue("@SID", System.Web.HttpContext.Current.User.Identity.Name);
                            command.ExecuteScalar();
                        }
                    }
                }
                if (!IsRequestClass())
                {
                    using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                    {
                        using (SqlCommand command = connection.CreateCommand())
                        {
                            String UserName = System.Web.HttpContext.Current.User.Identity.Name;
                            command.CommandType = CommandType.Text;
                            command.CommandText = "INSERT INTO [dbo].[ResetClass] VALUES ((SELECT UserId FROM [dbo].[Users] WHERE UserName = @SID), @CID, 'PENDING', getdate())";
                            command.Parameters.AddWithValue("@SID", System.Web.HttpContext.Current.User.Identity.Name);
                            command.Parameters.AddWithValue("@CID", maxClassesDropDownList.SelectedValue.ToString());
                            command.ExecuteScalar();
                        }
                    }
                }
                Response.Redirect("~/Account/Student/Class/Default.aspx");
            }
            catch( Exception){}
        }

        private Boolean IsRequestTeacher()
        {
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    String UserName = System.Web.HttpContext.Current.User.Identity.Name;
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT TeacherID, StudentID FROM [dbo].[ResetTeacher] WHERE TeacherID = '" + maxTeachersDropDownList.SelectedValue.ToString() + "' AND StudentID = (SELECT UserId FROM [dbo].[Users] WHERE UserName = '" + System.Web.HttpContext.Current.User.Identity.Name + "')";
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read()) { return true; }
                        else { return false; }
                    }
                }
            }
        }

        private Boolean IsRequestClass()
        {
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    String UserName = System.Web.HttpContext.Current.User.Identity.Name;
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT StudentID, ClassID FROM [dbo].[ResetClass] WHERE ClassID = " + maxClassesDropDownList.SelectedValue.ToString() + " AND StudentID = (SELECT UserId FROM [dbo].[Users] WHERE UserName = '" + System.Web.HttpContext.Current.User.Identity.Name + "')";
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read()) { return true; }
                        else { return false; }
                    }
                }
            }
        }


    }
}