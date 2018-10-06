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


namespace MAXFORD.Max_Account.MaxfordUser.Administrator.maxSLIDE
{
    public partial class slideINSERT1 : System.Web.UI.Page
    {
        //String path = HttpContext.Current.Request.PhysicalApplicationPath + "Max_Data\\Max_Slides\\";
        //string maxImageFullName = "";

        //protected void maxCropSlideImage_Click(object sender, EventArgs e)
        //{
        //    if (DataValidate())
        //    {

        //        maxImageFullName = maxSlideTitleTextBox.Text + "__" + maxUploadImage.FileName;
        //        Session["maxImage"] = maxImageFullName;
        //        String savePath = Server.MapPath("~/Max_Data/Max_Slide/ORIG/");

        //        if (ImageCheck(maxUploadImage.FileName))
        //        {
        //            if (ImageSave(savePath + maxImageFullName))
        //            {
        //                int w = Convert.ToInt32(W1.Value);
        //                int h = Convert.ToInt32(H1.Value);
        //                int x = Convert.ToInt32(X1.Value);
        //                int y = Convert.ToInt32(Y1.Value);

        //                byte[] CropImage = Crop(savePath + maxImageFullName, w, h, x, y);

        //                if (ImageSaveReSize(CropImage, maxImageFullName))
        //                {
        //                    if (ImageSaveSever(maxSlideTitleTextBox.Text, maxSlideReadMeTextBox.Text, maxImageFullName))
        //                    {
        //                        maxSLIDETitleLabel.Text = maxSlideTitleTextBox.Text;
        //                        maxSLIDECropedImage.ImageUrl = "http://www.maxford.lk/Max_Data/Max_Slide/SLIDE/" + maxImageFullName;
        //                        maxSlideUploadPanel.Visible = false;
        //                        maxCropImagePenel.Visible = false;
        //                        maxINSERTSlidePanel.Visible = true;
        //                    }
        //                    else
        //                    {
        //                        maxSlideImageUpLoadErrorMesage.Text = "Can not Save !. Image Save SQL Sever Error.";
        //                        maxSlideImageUpLoadErrorMesage.ForeColor = Color.Red;
        //                        maxSlideImageUpLoadErrorMesage.Visible = true;
        //                    }
        //                }
        //                else
        //                {
        //                    maxSlideImageUpLoadErrorMesage.Text = "Can not Crop !. Image Crop Data Error.";
        //                    maxSlideImageUpLoadErrorMesage.ForeColor = Color.Red;
        //                    maxSlideImageUpLoadErrorMesage.Visible = true;
        //                }
        //            }
        //            else
        //            {
        //                maxSlideImageUpLoadErrorMesage.Text = "Can not Find Folder Path !. Insert Correct Image Path.";
        //                maxSlideImageUpLoadErrorMesage.ForeColor = Color.Red;
        //                maxSlideImageUpLoadErrorMesage.Visible = true;
        //            }

        //        }
        //        else
        //        {
        //            maxSlideImageUpLoadErrorMesage.Text = "Can not Upload !. Insert Correct Image Type.";
        //            maxSlideImageUpLoadErrorMesage.ForeColor = Color.Red;
        //            maxSlideImageUpLoadErrorMesage.Visible = true;
        //        }

        //    }
        //    else
        //    {
        //        maxSlideImageUpLoadErrorMesage.Text = "Can not Save !. Insert Title of the Slide.";
        //        maxSlideImageUpLoadErrorMesage.ForeColor = Color.Red;
        //        maxSlideImageUpLoadErrorMesage.Visible = true;
        //    }
        //}


        //static byte[] Crop(string Img, int Width, int Height, int X, int Y)
        //{
        //    try
        //    {
        //        using (SD.Image OriginalImage = SD.Image.FromFile(Img))
        //        {
        //            using (SD.Bitmap bmp = new SD.Bitmap(Width, Height))
        //            {
        //                bmp.SetResolution(OriginalImage.HorizontalResolution, OriginalImage.VerticalResolution);
        //                using (SD.Graphics Graphic = SD.Graphics.FromImage(bmp))
        //                {
        //                    Graphic.SmoothingMode = SmoothingMode.AntiAlias;
        //                    Graphic.InterpolationMode = InterpolationMode.HighQualityBicubic;
        //                    Graphic.PixelOffsetMode = PixelOffsetMode.HighQuality;
        //                    Graphic.DrawImage(OriginalImage, new SD.Rectangle(0, 0, Width, Height), X, Y, Width, Height, SD.GraphicsUnit.Pixel);
        //                    MemoryStream ms = new MemoryStream();
        //                    bmp.Save(ms, OriginalImage.RawFormat);
        //                    return ms.GetBuffer();
        //                }
        //            }
        //        }
        //    }
        //    catch (Exception Ex)
        //    {
        //        throw (Ex);
        //    }
        //}


        //private Boolean DataValidate()
        //{
        //    Boolean error = true;
        //    MAXFORD.Max_Data.Max_Validation.validate valClass = new Max_Data.Max_Validation.validate();
        //    if (valClass.chexckMaxLength(50, 15, maxSlideTitleTextBox.Text))
        //    {
        //        if (valClass.chexckMaxLength(80, 40, maxSlideReadMeTextBox.Text))
        //        {
        //            error = true;
        //        }
        //        else
        //        {
        //            Response.Write("<script>alert('Slide Read Me must be within 40 and 80 letters')</script>");
        //            error = false;
        //        }
        //    }
        //    else
        //    {
        //        Response.Write("<script>alert('Slide Title must be within 15 and 50 letters')</script>");
        //        error = false;
        //    }
        //    return error;
        //}


        //private Boolean ImageCheck(String MAX_IMG_NAME)
        //{
        //    Boolean FileOK = false;
        //    if (maxUploadImage.HasFile)
        //    {
        //        String FileExtension = Path.GetExtension(MAX_IMG_NAME).ToLower();
        //        String[] allowedExtensions = { ".png", ".jpeg", ".jpg", ".gif" };
        //        for (int i = 0; i < allowedExtensions.Length; i++)
        //        {
        //            if (FileExtension == allowedExtensions[i])
        //            {
        //                FileOK = true;
        //            }
        //        }
        //    }
        //    return FileOK;
        //}


        //private Boolean ImageSave(String MAX_IMG_PATH)
        //{
        //    Boolean FileSaved = false;
        //    try
        //    {
        //        maxUploadImage.PostedFile.SaveAs(MAX_IMG_PATH);
        //        FileSaved = true;
        //    }
        //    catch (Exception ex)
        //    {
        //        maxSlideImageUpLoadErrorMesage.Text = "Image File Saving Error.<br/> Ex : " + ex.Message.ToString();
        //        FileSaved = false;
        //    }
        //    return FileSaved;
        //}


        //private Boolean ImageSaveReSize(byte[] MAX_CROP_IMAGE, string MAX_IMG_SAVE_PATH)
        //{
        //    Boolean SaveResize = false;
        //    using (MemoryStream ms = new MemoryStream(MAX_CROP_IMAGE, 0, MAX_CROP_IMAGE.Length))
        //    {
        //        ms.Write(MAX_CROP_IMAGE, 0, MAX_CROP_IMAGE.Length);
        //        using (SD.Image CroppedImage = SD.Image.FromStream(ms, true))
        //        {
        //            String savePathSMALL = Server.MapPath("~/Max_Data/Max_Slide/SMALL/");
        //            String savePathSLIDE = Server.MapPath("~/Max_Data/Max_Slide/SLIDE/");

        //            Bitmap maxSlideOriginalBMP = new Bitmap(CroppedImage);
        //            int origWidth = maxSlideOriginalBMP.Width;
        //            int origHeight = maxSlideOriginalBMP.Height;
        //            int newWidth = 1000;
        //            int newHeight = 430;

        //            Bitmap newSmallBMP = new Bitmap(maxSlideOriginalBMP, newWidth / 10, newHeight / 10);
        //            Graphics oGraphicsSmall = Graphics.FromImage(newSmallBMP);
        //            oGraphicsSmall.SmoothingMode = SmoothingMode.AntiAlias;
        //            oGraphicsSmall.InterpolationMode = InterpolationMode.HighQualityBicubic;
        //            oGraphicsSmall.DrawImage(newSmallBMP, 0, 0, newWidth / 10, newHeight / 10);
        //            newSmallBMP.Save(savePathSMALL + MAX_IMG_SAVE_PATH);
        //            newSmallBMP.Dispose();
        //            oGraphicsSmall.Dispose();

        //            Bitmap newLargeBMP = new Bitmap(maxSlideOriginalBMP, newWidth, newHeight);
        //            Graphics oGraphicsLarge = Graphics.FromImage(newLargeBMP);
        //            oGraphicsLarge.SmoothingMode = SmoothingMode.AntiAlias;
        //            oGraphicsLarge.InterpolationMode = InterpolationMode.HighQualityBicubic;
        //            oGraphicsLarge.DrawImage(newLargeBMP, 0, 0, newWidth, newHeight);
        //            newLargeBMP.Save(savePathSLIDE + MAX_IMG_SAVE_PATH);
        //            newLargeBMP.Dispose();
        //            oGraphicsLarge.Dispose();

        //            maxSlideOriginalBMP.Dispose();
        //            SaveResize = true;
        //        }
        //    }
        //    return SaveResize;
        //}


        //private Boolean ImageSaveSever(string MAX_SLIDE_TITLE, string MAX_SLIDE_REDME, string MAX_SLIDE_IMG_NAME)
        //{
        //    Boolean SaveSQL = false;
        //    String UserName = System.Web.HttpContext.Current.User.Identity.Name;
        //    HttpCookie RMaxCookie = new HttpCookie(UserName);
        //    RMaxCookie = Request.Cookies[UserName];

        //    if (RMaxCookie != null)
        //    {
        //        string userID = RMaxCookie.Value.ToString();
        //        string connetionString = null;
        //        SqlConnection cnn;
        //        connetionString = "Data Source=YELLOW.mysitehosted.com;Initial Catalog=ZionxMaxDatabaseNet16;User ID=maxDBAdmin;Password=maxDBAdmin123!@";
        //        cnn = new SqlConnection(connetionString);

        //        try
        //        {
        //            cnn.Open();
        //            SqlCommand MaxCommand = new SqlCommand();
        //            MaxCommand.Connection = cnn;
        //            MaxCommand.CommandText = "dbo.SP_MAX_PAGE_SLIDE_INSERT";

        //            MaxCommand.CommandType = CommandType.StoredProcedure;
        //            MaxCommand.Parameters.AddWithValue("@UserID", userID);
        //            MaxCommand.Parameters.AddWithValue("@SlideTitle", MAX_SLIDE_TITLE);
        //            MaxCommand.Parameters.AddWithValue("@SlideReadMe", MAX_SLIDE_REDME);
        //            MaxCommand.Parameters.AddWithValue("@SlideLink", MAX_SLIDE_IMG_NAME);
        //            MaxCommand.ExecuteNonQuery();
        //            cnn.Close();
        //            SaveSQL = true;

        //        }
        //        catch (Exception ex)
        //        {
        //            SaveSQL = false;
        //        }
        //    }
        //    else
        //    {
        //        SaveSQL = false;
        //    }
        //    return SaveSQL;
        //}


        //protected void slideInsertButton_Click(object sender, EventArgs e)
        //{
        //    String UserName = System.Web.HttpContext.Current.User.Identity.Name;
        //    HttpCookie RMaxCookie = new HttpCookie(UserName);
        //    RMaxCookie = Request.Cookies[UserName];

        //    maxImageFullName = Session["maxImage"].ToString();

        //    if (RMaxCookie != null)
        //    {
        //        try
        //        {
        //            string userID = RMaxCookie.Value.ToString();
        //            string testT = HttpContext.Current.Server.HtmlEncode(editor1.InnerText).ToString();

        //            string connetionString = null;
        //            SqlConnection cnn;
        //            connetionString = "Data Source=YELLOW.mysitehosted.com;Initial Catalog=ZionxMaxDatabaseNet16;User ID=maxDBAdmin;Password=maxDBAdmin123!@";
        //            cnn = new SqlConnection(connetionString);
        //            cnn.Open();
        //            SqlCommand MaxCommand = new SqlCommand();
        //            MaxCommand.Connection = cnn;
        //            MaxCommand.CommandText = "dbo.SP_MAX_PAGE_SLIDE_INSERT_REST";

        //            MaxCommand.CommandType = CommandType.StoredProcedure;
        //            MaxCommand.Parameters.AddWithValue("@UserID", userID);
        //            MaxCommand.Parameters.AddWithValue("@SlideLink", maxImageFullName);
        //            MaxCommand.Parameters.AddWithValue("@SlideTitleSub", SlideTitleSubTextBox.Text);
        //            MaxCommand.Parameters.AddWithValue("@SlideBody", HttpContext.Current.Server.HtmlDecode(testT));

        //            MaxCommand.Parameters.AddWithValue("@SlideTheamColorOne", "#" + maxSlideTheamColorOne.Text);
        //            MaxCommand.Parameters.AddWithValue("@SlideTheamColorTwo", "#" + maxSlideTheamColorTwo.Text);
        //            MaxCommand.Parameters.AddWithValue("@SlideDiscripition", maxSlideDiscripitionTextBox.Text);
        //            MaxCommand.ExecuteNonQuery();
        //            cnn.Close();

        //            maxINSERTSlidePanel.Visible = false;
        //            maxCompleteSlideTitleLabel.Text = maxSlideTitleTextBox.Text;
        //            maxSMALLCropedImage.ImageUrl = "http://www.maxford.lk/Max_Data/Max_Slide/SMALL/" + maxImageFullName;
        //            maxSlideInsertCompletePanel.Visible = true;
        //            Response.Write("<script>alert('Data Inserted Successfully')</script>");
        //        }
        //        catch (Exception ex)
        //        {
        //            Response.Write("<script>alert('SQL INSERT ERROR : " + ex.ToString() + "')</script>");
        //        }
        //    }
        //    else
        //    {
        //        Response.Write("<script>alert('COOKIE ERROR : Can not Find the user')</script>");
        //    }
        //}



    }
}