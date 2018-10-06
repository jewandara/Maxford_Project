using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace maxACCOUNT.Admin.web.EVENTS
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            Display();
        }

        private void Display()
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                String EventID = Request.QueryString["EventID"];
                SqlCommand cmd = new SqlCommand("SELECT * FROM aspnet_PageEvent WHERE (EventID = '" + EventID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                SqlDataReader ddlValues = cmd.ExecuteReader();
                if (ddlValues.HasRows)
                {
                    maxEventTitleTextBox.Text = ddlValues["EventTitle"].ToString();
                    maxEventSubTextBox.Text = ddlValues["EventSub"].ToString();
                    maxEventBodyeditor.Text = ddlValues["EventBody"].ToString();
                    maxEventDiscripitionTextBox.Text = ddlValues["Discripition"].ToString();
                }
                ddlValues.Close();
                cmd.Connection.Close();
            }
        }

        protected void maxEventSave_Click(object sender, EventArgs e)
        {
            maxEventSubError.Visible = false;
            maxEventTitleError.Visible = false;
            maxACCOUNT.config.Validation valClass = new maxACCOUNT.config.Validation();

            if (valClass.chexckMaxLength(50, 15, maxEventTitleTextBox.Text))
            {
                if (valClass.chexckMaxLength(80, 40, maxEventSubTextBox.Text))
                {

                    if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
                    {
                        String EventID = Request.QueryString["EventID"];
                        SqlCommand cmd = new SqlCommand("UPDATE dbo.aspnet_PageEvent SET EventTitle = @EventTitle, EventSub = @EventSub, EventBody = @EventBody, EventDiscripition = @EventDiscripition, Activiated = 1, ModifiedDate = getdate() WHERE (EventID = '" + EventID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                        cmd.Connection.Open();

                        cmd.Parameters.Add("@EventTitle", SqlDbType.VarChar).Value = maxEventTitleTextBox.Text;
                        cmd.Parameters.Add("@EventTitle", SqlDbType.VarChar).Value = maxEventSubTextBox.Text;
                        cmd.Parameters.Add("@EventBody", SqlDbType.VarChar).Value = maxEventBodyeditor.Text;
                        cmd.Parameters.Add("@EventDiscripition", SqlDbType.VarChar).Value = maxEventDiscripitionTextBox.Text;

                        cmd.ExecuteNonQuery();
                        cmd.Connection.Close();
                        Response.Redirect("Default.aspx");
                    }

                }
                else
                {
                    maxEventSubError.Text = "Event Sub Me must be within 40 and 80 letters";
                    maxEventSubError.Visible = true;
                }
            }
            else
            {
                maxEventTitleError.Text = "Event Title must be within 15 and 50 letters";
                maxEventTitleError.Visible = true;
            }
        }

    }
}