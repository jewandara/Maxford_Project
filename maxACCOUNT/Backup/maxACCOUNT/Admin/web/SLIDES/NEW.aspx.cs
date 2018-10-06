using System;
using System.Collections.Generic;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using SD = System.Drawing;


namespace maxACCOUNT.Admin.web.SLIDES
{
    public partial class NEW : System.Web.UI.Page
    {
       
        protected void Page_Init(object sender, EventArgs e)
        {
            Display();
        }

        private void Display()
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                SqlCommand cmd = new SqlCommand("SELECT MenuID, MenuName FROM dbo.aspnet_PageMenu WHERE (MenuType = 'EVENT') ORDER BY MenuName ASC", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                SqlDataReader ddlValues;
                ddlValues = cmd.ExecuteReader();
                maxSlideCatDropDownList.DataSource = ddlValues;
                maxSlideCatDropDownList.DataValueField = "MenuID";
                maxSlideCatDropDownList.DataTextField = "MenuName";
                maxSlideCatDropDownList.DataBind();
                cmd.Connection.Close();
            }
        }

        protected void SaveUpload_Click(object sender, EventArgs e)
        {
            maxSlideReadMeError.Visible = false;
            maxSlideTitleError.Visible = false;
            maxSlideImageLoadError.Visible = false;
            string UserName = "";
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                UserName = System.Web.HttpContext.Current.User.Identity.Name;
                if (DataValidate())
                {
                    if (maxUploadImage.HasFile)
                    {
                        if (ImageCheck(maxUploadImage.FileName))
                        {
                            maxACCOUNT.config.Validation SlideCodeID = new maxACCOUNT.config.Validation();
                            String ImageIDCode = SlideCodeID.generateID();

                            int length = maxUploadImage.PostedFile.ContentLength;
                            byte[] imgbyte = new byte[length];

                            HttpPostedFile img = maxUploadImage.PostedFile;
                            img.InputStream.Read(imgbyte, 0, length);
                            SqlCommand cmd = new SqlCommand("INSERT INTO dbo.aspnet_PageSlide (MenuID,SlideTitle,SlideReadMe,SlidePicture,SlideDiscripition,SlideSelect,Activiated,InsertedDate,ModifiedDate,SlideCode) VALUES (@MenuID, @SlideTitle, @SlideReadMe, @SlidePicture,'Discripition',0,1,getdate(),getdate(),@SlideCode)", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                            cmd.Connection.Open();

                            cmd.Parameters.Add("@MenuID", SqlDbType.VarChar).Value = maxSlideCatDropDownList.SelectedValue;
                            cmd.Parameters.Add("@SlideTitle", SqlDbType.VarChar).Value = maxSlideTitleTextBox.Text;
                            cmd.Parameters.Add("@SlideReadMe", SqlDbType.VarChar).Value = maxSlideReadMeTextBox.Text;
                            cmd.Parameters.Add("@SlidePicture", SqlDbType.Image).Value = imgbyte;
                            cmd.Parameters.Add("@SlideCode", SqlDbType.VarChar).Value = ImageIDCode;

                            cmd.ExecuteNonQuery();
                            cmd.Connection.Close();

                            Response.Redirect("NEW_SAVE.aspx?SlideCode=" + ImageIDCode);
                        }
                    }
                    else { 
                        maxSlideImageLoadError.Text = "Can not Find Image Folder Path !. Insert Correct Image Path.";
                        maxSlideImageLoadError.Visible = true;
                    }
                }
            }
        }

        private Boolean DataValidate()
        {
            Boolean error = true;
            maxACCOUNT.config.Validation valClass = new maxACCOUNT.config.Validation();
            if (valClass.chexckMaxLength(50, 15, maxSlideTitleTextBox.Text))
            {
                if (valClass.chexckMaxLength(80, 40, maxSlideReadMeTextBox.Text))
                {
                    error = true;
                }
                else
                {
                    maxSlideReadMeError.Text = "Slide Read Me must be within 40 and 80 letters";
                    maxSlideReadMeError.Visible = true;
                    error = false;
                }
            }
            else
            {
                maxSlideTitleError.Text = "Slide Title must be within 15 and 50 letters";
                maxSlideTitleError.Visible = true;
                error = false;
            }
            return error;
        }

        private Boolean ImageCheck(String MAX_IMG_NAME)
        {
            Boolean FileOK = false;
            if (maxUploadImage.HasFile)
            {
                String FileExtension = Path.GetExtension(MAX_IMG_NAME).ToLower();
                String[] allowedExtensions = { ".png", ".jpeg", ".jpg", ".gif" };
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (FileExtension == allowedExtensions[i])
                    {
                        FileOK = true;
                    }
                }
            }
            return FileOK;
        }

    }
}