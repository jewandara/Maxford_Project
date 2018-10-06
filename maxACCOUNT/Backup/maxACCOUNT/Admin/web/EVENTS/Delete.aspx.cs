using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;

namespace maxACCOUNT.Admin.web.EVENTS
{
    public partial class Delete : System.Web.UI.Page
    {
        public void Page_Init(object o, EventArgs e)
        {
            Display();
        }

        public void Display()
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                String EventID = Request.QueryString["EventID"];
                SqlCommand cmd = new SqlCommand("SELECT * FROM aspnet_PageEvent WHERE (EventID = '" + EventID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                SqlDataReader ddlValues = cmd.ExecuteReader();
                if (ddlValues.HasRows)
                {
                    ddlValues.Read();
                    maxEventTitleLabel.Text = ddlValues["EventTitle"].ToString();
                    maxEventSubLabel.Text = ddlValues["EventSub"].ToString();
                }

                ddlValues.Close();
                cmd.Connection.Close();
            }
        }

        protected void maxDeleteEvent_Click(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string EventID = Request.QueryString["EventID"];

                SqlCommand mcmd = new SqlCommand("DELETE FROM dbo.aspnet_PageEventView WHERE (EventID = '" + EventID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                mcmd.Connection.Open();
                mcmd.ExecuteNonQuery();
                mcmd.Connection.Close();

                SqlCommand cmd = new SqlCommand("DELETE FROM dbo.aspnet_PageEvent WHERE (EventID = '" + EventID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();

                maxPanelDeleteSlide.Visible = false;
                maxEventDeletePanelOk.Visible = true;

            }
        }

        protected void maxOkEvent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}