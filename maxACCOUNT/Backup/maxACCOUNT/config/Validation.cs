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
using System.Text.RegularExpressions;

namespace maxACCOUNT.config
{
    public class Validation
    {




        //public void checkTeleNumber(String TELENUMBER)
        //{
        //    if (Regex.IsMatch(TELENUMBER, @"^[0-9\-\+]+$"))
        //    {
        //        TELENUMBER = "Ok Fine!";
        //    }
        //    else
        //    {
        //        TELENUMBER = "Special Characters are not allowed";
        //    }
        //}



        public string generateID()
        {
            return Guid.NewGuid().ToString("N");
        }


        public Boolean chexckMaxLength(int maxMAX, int maxMIN, string maxTEXT)
        {
            Boolean error = true;
            if (maxTEXT.Length >= maxMIN && maxTEXT.Length <= maxMAX)
            {
                error = true;
            }
            else
            {
                error = false;
            }
            return error;
        }

        public bool IsMaxValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }





        //public SD.Image byteArrayToImage(byte[] byteArrayIn)
        //{
        //    SD.Image returnImage;
        //    try
        //    {
        //        MemoryStream ms = new MemoryStream(byteArrayIn,0,byteArrayIn.Length);
        //        ms.Write(byteArrayIn, 0, byteArrayIn.Length);
        //        returnImage = SD.Image.FromStream(ms,true);
        //    }
        //    catch { }

        //    return returnImage;
        //}


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



        private Boolean ImageSaveReSize(byte[] MAX_CROP_IMAGE, string MAX_IMG_SAVE_PATH)
        {
            Boolean SaveResize = false;
            using (MemoryStream ms = new MemoryStream(MAX_CROP_IMAGE, 0, MAX_CROP_IMAGE.Length))
            {
                ms.Write(MAX_CROP_IMAGE, 0, MAX_CROP_IMAGE.Length);
                using (SD.Image CroppedImage = SD.Image.FromStream(ms, true))
                {
                    //String savePathSMALL = Server.MapPath("~/../../MAX_DATA/SMALL/");
                    //String savePathSLIDE = Server.MapPath("~/../../MAX_DATA/SLIDE/");

                    Bitmap maxSlideOriginalBMP = new Bitmap(CroppedImage);
                    int origWidth = maxSlideOriginalBMP.Width;
                    int origHeight = maxSlideOriginalBMP.Height;
                    int newWidth = 1000;
                    int newHeight = 430;

                    Bitmap newSmallBMP = new Bitmap(maxSlideOriginalBMP, newWidth / 10, newHeight / 10);
                    Graphics oGraphicsSmall = Graphics.FromImage(newSmallBMP);
                    oGraphicsSmall.SmoothingMode = SmoothingMode.AntiAlias;
                    oGraphicsSmall.InterpolationMode = InterpolationMode.HighQualityBicubic;
                    oGraphicsSmall.DrawImage(newSmallBMP, 0, 0, newWidth / 10, newHeight / 10);
                    newSmallBMP.Save(HttpContext.Current.Server.MapPath(MAX_IMG_SAVE_PATH));
                    newSmallBMP.Dispose();
                    oGraphicsSmall.Dispose();

                    Bitmap newLargeBMP = new Bitmap(maxSlideOriginalBMP, newWidth, newHeight);
                    Graphics oGraphicsLarge = Graphics.FromImage(newLargeBMP);
                    oGraphicsLarge.SmoothingMode = SmoothingMode.AntiAlias;
                    oGraphicsLarge.InterpolationMode = InterpolationMode.HighQualityBicubic;
                    oGraphicsLarge.DrawImage(newLargeBMP, 0, 0, newWidth, newHeight);
                    newLargeBMP.Save(HttpContext.Current.Server.MapPath("max_" + MAX_IMG_SAVE_PATH));
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