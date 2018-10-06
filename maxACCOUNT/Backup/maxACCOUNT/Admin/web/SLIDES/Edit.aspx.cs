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
    public partial class Edit : System.Web.UI.Page
    {
        SD.Image OriginalImage;

        protected void Page_Init(object sender, EventArgs e)
        {
            Display();
        }

        private void Display()
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
                    maxSlideImageUpLoadedOrgnImage.ImageUrl = "data:image/jpeg;base64," + base64String;
                    OriginalImage = (Bitmap)((new ImageConverter()).ConvertFrom(ddlValues["SlidePicture"]));
                    maxSlideTitleTextBox.Text = ddlValues["SlideTitle"].ToString();
                    maxSlideReadMeTextBox.Text = ddlValues["SlideReadMe"].ToString();
                    maxSlideBodyeditor.Text = ddlValues["SlideBodyMain"].ToString();
                    maxSlideSlectImage.ImageUrl = "../../../MAX-DATA/SLIDE/" + SlideCode + "/" + SlideCode + ".jpg";
                    maxSlideTheamColorOne.Text = ddlValues["SlideTheamColorOne"].ToString();
                    maxSlideTheamColorTwo.Text = ddlValues["SlideTheamColorTwo"].ToString();
                    maxSlideDiscripitionTextBox.Text = ddlValues["SlideDiscripition"].ToString();
                    SlideTitleSubTextBox.Text = ddlValues["SlideTitleSub"].ToString();

                }
                ddlValues.Close();
                cmd.Connection.Close();
            }
        }

        protected void maxCropSlideImage_Click(object sender, EventArgs e)
        {
            int w = Convert.ToInt32(W1.Value);
            int h = Convert.ToInt32(H1.Value);
            int x = Convert.ToInt32(X1.Value);
            int y = Convert.ToInt32(Y1.Value);
            string SlideCode = Request.QueryString["SlideCode"];
            byte[] CropImage = Crop(OriginalImage, w, h, x, y);

            maxSlideReadMeError.Visible = false;
            maxSlideTitleError.Visible = false;
            maxACCOUNT.config.Validation valClass = new maxACCOUNT.config.Validation();

            if (valClass.chexckMaxLength(50, 15, maxSlideTitleTextBox.Text))
            {
                if (valClass.chexckMaxLength(80, 40, maxSlideReadMeTextBox.Text))
                {
                    if (ImageSaveReSize(CropImage, SlideCode + ".jpg", SlideCode))
                    {
                        if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
                        {
                            SqlCommand cmd = new SqlCommand("UPDATE dbo.aspnet_PageSlide SET SlideTitleSub = @SlideTitleSub, SlideBodyMain = @SlideBodyMain, SlidePictureLink = @SlidePictureLink, SlideTheamColorOne = @SlideTheamColorOne, SlideTheamColorTwo = @SlideTheamColorTwo, SlideDiscripition = @SlideDiscripition, SlideSelect = 1, ModifiedDate = getdate() WHERE (SlideCode = '" + SlideCode + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                            cmd.Connection.Open();

                            cmd.Parameters.Add("@SlideTitleSub", SqlDbType.VarChar).Value = SlideTitleSubTextBox.Text;
                            cmd.Parameters.Add("@SlideBodyMain", SqlDbType.VarChar).Value = maxSlideBodyeditor.Text;
                            cmd.Parameters.Add("@SlidePictureLink", SqlDbType.VarChar).Value = SlideCode + ".jpg";
                            cmd.Parameters.Add("@SlideTheamColorOne", SqlDbType.VarChar).Value = maxSlideTheamColorOne.Text;
                            cmd.Parameters.Add("@SlideTheamColorTwo", SqlDbType.VarChar).Value = maxSlideTheamColorTwo.Text;
                            cmd.Parameters.Add("@SlideDiscripition", SqlDbType.VarChar).Value = maxSlideDiscripitionTextBox.Text;

                            cmd.ExecuteNonQuery();
                            cmd.Connection.Close();
                            Response.Redirect("Default.aspx");
                        }
                    }
                }
                else
                {
                    maxSlideReadMeError.Text = "Slide Read Me must be within 40 and 80 letters";
                    maxSlideReadMeError.Visible = true;
                }
            }
            else
            {
                maxSlideTitleError.Text = "Slide Title must be within 15 and 50 letters";
                maxSlideTitleError.Visible = true;
            }
        }

        static byte[] Crop(SD.Image Img, int Width, int Height, int X, int Y)
        {
            try
            {
                using (SD.Image OImage = Img)
                {
                    using (SD.Bitmap bmp = new SD.Bitmap(Width, Height))
                    {
                        bmp.SetResolution(OImage.HorizontalResolution, OImage.VerticalResolution);
                        using (SD.Graphics Graphic = SD.Graphics.FromImage(bmp))
                        {
                            Graphic.SmoothingMode = SmoothingMode.AntiAlias;
                            Graphic.InterpolationMode = InterpolationMode.HighQualityBicubic;
                            Graphic.PixelOffsetMode = PixelOffsetMode.HighQuality;
                            Graphic.DrawImage(OImage, new SD.Rectangle(0, 0, Width, Height), X, Y, Width, Height, SD.GraphicsUnit.Pixel);
                            MemoryStream ms = new MemoryStream();
                            bmp.Save(ms, OImage.RawFormat);
                            return ms.GetBuffer();
                        }
                    }
                }
            }
            catch (Exception Ex)
            {
                throw (Ex);
            }
        }

        private Boolean ImageSaveReSize(byte[] MAX_CROP_IMAGE, string MAX_IMG_SAVE_PATH, string MAX_SLIDE_ID)
        {
            Boolean SaveResize = false;
            using (MemoryStream ms = new MemoryStream(MAX_CROP_IMAGE, 0, MAX_CROP_IMAGE.Length))
            {
                ms.Write(MAX_CROP_IMAGE, 0, MAX_CROP_IMAGE.Length);
                using (SD.Image CroppedImage = SD.Image.FromStream(ms, true))
                {
                    String saveSlideSeverPath = "../../../MAX-DATA/SLIDE/" + MAX_SLIDE_ID;

                    //-------CREATING SLIDE PARTH


                    string directoryPath = Server.MapPath(saveSlideSeverPath);
                    if (!Directory.Exists(directoryPath))
                    {
                        Directory.CreateDirectory(directoryPath);
                    }


                    Bitmap maxSlideOriginalBMP = new Bitmap(CroppedImage);
                    int origWidth = maxSlideOriginalBMP.Width;
                    int origHeight = maxSlideOriginalBMP.Height;
                    int newWidth = 1000;
                    int newHeight = 430;

                    //-------CREATING SMALL SLIDE
                    Bitmap newSmallBMP = new Bitmap(maxSlideOriginalBMP, newWidth / 10, newHeight / 10);
                    Graphics oGraphicsSmall = Graphics.FromImage(newSmallBMP);
                    oGraphicsSmall.SmoothingMode = SmoothingMode.AntiAlias;
                    oGraphicsSmall.InterpolationMode = InterpolationMode.HighQualityBicubic;
                    oGraphicsSmall.DrawImage(newSmallBMP, 0, 0, newWidth / 10, newHeight / 10);
                    newSmallBMP.Save(HttpContext.Current.Server.MapPath(saveSlideSeverPath + "/" + MAX_IMG_SAVE_PATH));
                    newSmallBMP.Dispose();
                    oGraphicsSmall.Dispose();

                    //-------CREATING LARGE SLIDE
                    Bitmap newLargeBMP = new Bitmap(maxSlideOriginalBMP, newWidth, newHeight);
                    Graphics oGraphicsLarge = Graphics.FromImage(newLargeBMP);
                    oGraphicsLarge.SmoothingMode = SmoothingMode.AntiAlias;
                    oGraphicsLarge.InterpolationMode = InterpolationMode.HighQualityBicubic;
                    oGraphicsLarge.DrawImage(newLargeBMP, 0, 0, newWidth, newHeight);
                    newLargeBMP.Save(HttpContext.Current.Server.MapPath(saveSlideSeverPath + "/max_" + MAX_IMG_SAVE_PATH));
                    newLargeBMP.Dispose();
                    oGraphicsLarge.Dispose();

                    maxSlideOriginalBMP.Dispose();
                    SaveResize = true;
                }
            }
            return SaveResize;
        }

    }
}