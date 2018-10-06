using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace maxACCOUNT.Admin.web.USER_ROLE
{
    public partial class Edit : System.Web.UI.Page
    {
        public void Page_Init(object o, EventArgs e)
        {
            Display();
        }


        public void Display()
        {
            string UserName = "";
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                UserName = System.Web.HttpContext.Current.User.Identity.Name;
            }
            string RoleID = Request.QueryString["RoleID"];
            SqlCommand cmd = new SqlCommand("SELECT * FROM aspnet_Roles WHERE (RoleId = '" + RoleID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
            cmd.Connection.Open();
            SqlDataReader ddlValues = cmd.ExecuteReader();
            if (ddlValues.HasRows)
            {
                while (ddlValues.Read())
                {
                    maxPageTitle.Text = "Edit Maxford Role : " + ddlValues["RoleName"].ToString();
                    maxRoleID.Text = ddlValues["RoleId"].ToString();
                    maxRoleName.Text = ddlValues["RoleName"].ToString();
                    maxRoleDescription.Text = ddlValues["Description"].ToString();
                }
            }
            else
            {
                maxPageTitle.Text = "NO CLASS FOUND";
            }
            ddlValues.Close();
            cmd.Connection.Close();
        }


        protected void SaveClass_Click(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string RoleID = Request.QueryString["RoleID"];
                SqlCommand cmd = new SqlCommand("UPDATE dbo.aspnet_Roles SET RoleName = @RoleName, Description = @Description WHERE (RoleID = @RoleID)", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();

                cmd.Parameters.Add("@RoleID", SqlDbType.VarChar).Value = RoleID;
                cmd.Parameters.Add("@RoleName", SqlDbType.VarChar).Value = maxRoleName.Text;
                cmd.Parameters.Add("@Description", SqlDbType.VarChar).Value = maxRoleDescription.Text;

                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                Response.Redirect("Default.aspx");
            }
        }


        protected void DeleteClass_Click(object sender, EventArgs e)
        {
            {
                Response.Redirect("Delete.aspx?RoleID=" + Request.QueryString["RoleID"]);
            }
        }




    }
}