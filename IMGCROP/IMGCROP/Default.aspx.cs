using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing.Drawing2D;
using SD = System.Drawing;

namespace IMGCROP
{
    public partial class Default1 : System.Web.UI.Page
    {
        String path = HttpContext.Current.Request.PhysicalApplicationPath + "images\\";

        protected void maxSaveSlideImage_Click(object sender, EventArgs e)
        {
            Boolean FileOK = false;
            Boolean FileSaved = false;

            if (Upload.HasFile)
            {
                Session["WorkingImage"] = Upload.FileName;
                String FileExtension = Path.GetExtension(Session["WorkingImage"].ToString()).ToLower();
                String[] allowedExtensions = { ".png", ".jpeg", ".jpg", ".gif" };
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (FileExtension == allowedExtensions[i])
                    {
                        FileOK = true;
                    }
                }
            }

            if (FileOK)
            {
                try
                {
                    Upload.PostedFile.SaveAs(path + Session["WorkingImage"]);
                    FileSaved = true;
                }
                catch (Exception ex)
                {
                    maxSlideImageUpLoadErrorMesage.Text = "File could not be uploaded." + ex.Message.ToString();
                    maxSlideImageUpLoadErrorMesage.Visible = true;
                    FileSaved = false;
                }
            }
            else
            {
                maxSlideImageUpLoadErrorMesage.Text = "Cannot accept files of this type.";
                maxSlideImageUpLoadErrorMesage.Visible = true;
            }

            if (FileSaved)
            {
                maxSlideUploadPanel.Visible = false;
                maxSlideEditPanel.Visible = true;
                maxSlideImageUpLoadedOrgnImage.ImageUrl = "images/" + Session["WorkingImage"].ToString();

            }
        }











        protected void maxCropSlideImage_Click(object sender, EventArgs e)
        {


            Boolean FileOK = false;
            Boolean FileSaved = false;

            if (Upload.HasFile)
            {
                Session["WorkingImage"] = Upload.FileName;
                String FileExtension = Path.GetExtension(Session["WorkingImage"].ToString()).ToLower();
                String[] allowedExtensions = { ".png", ".jpeg", ".jpg", ".gif" };
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (FileExtension == allowedExtensions[i])
                    {
                        FileOK = true;
                    }
                }
            }

            if (FileOK)
            {
                try
                {
                    Upload.PostedFile.SaveAs(path + Session["WorkingImage"]);
                    FileSaved = true;
                }
                catch (Exception ex)
                {
                    maxSlideImageUpLoadErrorMesage.Text = "File could not be uploaded." + ex.Message.ToString();
                    maxSlideImageUpLoadErrorMesage.Visible = true;
                    FileSaved = false;
                }
            }
            else
            {
                maxSlideImageUpLoadErrorMesage.Text = "Cannot accept files of this type.";
                maxSlideImageUpLoadErrorMesage.Visible = true;
            }

            if (FileSaved)
            {
                maxSlideUploadPanel.Visible = false;
                maxSlideEditPanel.Visible = true;
                maxSlideImageUpLoadedOrgnImage.ImageUrl = "images/" + Session["WorkingImage"].ToString();

            }












            string ImageName = Session["WorkingImage"].ToString();
            int w = Convert.ToInt32(W.Value);
            int h = Convert.ToInt32(H.Value);
            int x = Convert.ToInt32(X.Value);
            int y = Convert.ToInt32(Y.Value);

            byte[] CropImage = Crop(path + ImageName, w, h, x, y);
            using (MemoryStream ms = new MemoryStream(CropImage, 0, CropImage.Length))
            {
                ms.Write(CropImage, 0, CropImage.Length);
                using (SD.Image CroppedImage = SD.Image.FromStream(ms, true))
                {
                    string SaveTo = path + "crop" + ImageName;
                    CroppedImage.Save(SaveTo, CroppedImage.RawFormat);
                    maxSlideEditPanel.Visible = false;
                    pnlCropped.Visible = true;
                    imgCropped.ImageUrl = "images/crop" + ImageName;
                }
            }
        }














        protected void Page_Load(object sender, EventArgs e)
        {

        }








        static byte[] Crop(string Img, int Width, int Height, int X, int Y)
        {
            try
            {
                using (SD.Image OriginalImage = SD.Image.FromFile(Img))
                {
                    using (SD.Bitmap bmp = new SD.Bitmap(Width, Height))
                    {
                        bmp.SetResolution(OriginalImage.HorizontalResolution, OriginalImage.VerticalResolution);
                        using (SD.Graphics Graphic = SD.Graphics.FromImage(bmp))
                        {
                            Graphic.SmoothingMode = SmoothingMode.AntiAlias;
                            Graphic.InterpolationMode = InterpolationMode.HighQualityBicubic;
                            Graphic.PixelOffsetMode = PixelOffsetMode.HighQuality;
                            Graphic.DrawImage(OriginalImage, new SD.Rectangle(0, 0, Width, Height), X, Y, Width, Height, SD.GraphicsUnit.Pixel);
                            MemoryStream ms = new MemoryStream();
                            bmp.Save(ms, OriginalImage.RawFormat);
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







    }
}