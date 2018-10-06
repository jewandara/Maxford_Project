using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;

namespace maxACCOUNT.Admin.web.SLIDES
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
                string SlideCode = Request.QueryString["SlideCode"];
                SqlCommand cmd = new SqlCommand("SELECT * FROM aspnet_PageSlide WHERE (SlideCode = '" + SlideCode + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
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
                }

                ddlValues.Close();
                cmd.Connection.Close();
            }
        }

        protected void maxDeleteSlideImage_Click(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string SlideCode = Request.QueryString["SlideCode"];
                SqlCommand cmd = new SqlCommand("DELETE FROM dbo.aspnet_PageSlide WHERE (SlideCode = '" + SlideCode + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                maxPanelDeleteSlide.Visible = false;
                maxSlideDeletePanelOk.Visible = true;
                cmd.Connection.Close();
            }
        }

        protected void maxOkSlideImage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

    }
}