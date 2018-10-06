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
    public partial class New : System.Web.UI.Page
    {
        string[] rolesArray;
        public void Page_Load(object sender, EventArgs args)
        {
            if (!IsPostBack)
            {
                rolesArray = Roles.GetAllRoles();
            }
        }



        public void CreateRole_OnClick(object sender, EventArgs args)
        {
            string createRole = maxRoleName.Text;
            try
            {
                if (Roles.RoleExists(createRole))
                {
                    maxLabelRoleError.Visible = true;
                    maxLabelRoleError.Text = "Role '<b>" + Server.HtmlEncode(createRole) + "</b>' already exists.";
                    return;
                }
                maxPanelNewRole.Visible = false;
                maxPanelNewSuccess.Visible = true;
                Roles.CreateRole(createRole);
                maxLabelSccces.Text = "Role '" + Server.HtmlEncode(createRole) + "' created.";
                rolesArray = Roles.GetAllRoles();
            }
            catch (Exception e)
            {
                maxLabelRoleError.Visible = true;
                maxLabelRoleError.Text = "Role '" + Server.HtmlEncode(createRole) + "' <u>not</u> created.";
                Response.Write(e.ToString());
            }
        }



        public void CreateRoleReturn_OnClick(object sender, EventArgs args)
        {
            Response.Redirect("Default.aspx");
        }


    }
}