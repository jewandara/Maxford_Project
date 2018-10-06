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
    public partial class Delete : System.Web.UI.Page
    {
        public void Page_Init(object o, EventArgs e)
        {
            Display();
        }



        protected void Display()
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string RoleID = Request.QueryString["RoleID"];
                SqlCommand cmd = new SqlCommand("SELECT * FROM aspnet_Roles WHERE (RoleId = '" + RoleID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
       
                cmd.Connection.Open();
                SqlDataReader ddlValues = cmd.ExecuteReader();
                if (ddlValues.HasRows)
                {
                    while (ddlValues.Read())
                    {
                        maxLabelRoleName.Text = ddlValues["RoleName"].ToString();
                        maxLabelRoleId.Text = ddlValues["RoleId"].ToString();
                    }
                }
                ddlValues.Close();
                cmd.Connection.Close();
            }
        }


        protected void DeleteClass_Click(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM dbo.aspnet_Roles WHERE (RoleId = @RoleID)", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();

                cmd.Parameters.Add("@RoleID", SqlDbType.VarChar).Value = Request.QueryString["RoleID"];

                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                Response.Redirect("Default.aspx");
            }
        }


        protected void CancelDeleteClass_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }


    }
}