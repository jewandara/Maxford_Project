using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxACCOUNT.Admin.web.SLIDES
{
    public partial class Edit_Act : System.Web.UI.Page
    {

        public void Page_Init(object o, EventArgs e)
        {
            Display();
        }

        public void Display()
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string SlideID = Request.QueryString["SlideID"];
                SqlCommand cmd = new SqlCommand("SELECT * FROM aspnet_PageSlide WHERE (SlideID = '" + SlideID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                SqlDataReader ddlValues = cmd.ExecuteReader();
                if (ddlValues.HasRows)
                {
                    ddlValues.Read();
                    byte[] btImage = (byte[])ddlValues["SlidePicture"];
                    string base64String = Convert.ToBase64String(btImage, 0, btImage.Length);
                    maxSlideImage.ImageUrl = "data:image/jpeg;base64," + base64String;

                    maxSlideTitleLabel.Text = ddlValues["SlideTitle"].ToString();
                    maxSlideReadMeLabel.Text = ddlValues["SlideReadMe"].ToString();

                    maxSlideSelectDropDownList.Items.Add(new ListItem(ddlValues["SlideSelect"].ToString(), ddlValues["SlideSelect"].ToString(), true));
                    maxSlideSelectDropDownList.Items.Add(new ListItem("true", "true", true));
                    maxSlideSelectDropDownList.Items.Add(new ListItem("false", "false", true));

                    maxSlideActiveDropDownList.Items.Add(new ListItem(ddlValues["Activiated"].ToString(), ddlValues["Activiated"].ToString(), true));
                    maxSlideActiveDropDownList.Items.Add(new ListItem("true", "true", true));
                    maxSlideActiveDropDownList.Items.Add(new ListItem("false", "false", true));
                }

                ddlValues.Close();
                cmd.Connection.Close();
            }
        }

        protected void maxActiveSlideImage_Click(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string SlideID = Request.QueryString["SlideID"];
                SqlCommand cmd = new SqlCommand("UPDATE dbo.aspnet_PageSlide SET SlideSelect = @SlideSelect, Activiated = @SlideActiviated, ModifiedDate = getdate() WHERE (SlideID = '" + SlideID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();

                cmd.Parameters.Add("@SlideSelect", SqlDbType.VarChar).Value = maxSlideSelectDropDownList.SelectedValue;
                cmd.Parameters.Add("@SlideActiviated", SqlDbType.VarChar).Value = maxSlideActiveDropDownList.SelectedValue;

                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                Response.Redirect("Default.aspx");
            }
        }

    }
}