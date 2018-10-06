/// <summary>
/// Summary description for Class1
/// </summary>
public class CodiCode
{
    public static bool Resize_Picture(string Org, string Des, int FinalWidth, int FinalHeight, int ImageQuality)
    {
        System.Drawing.Bitmap NewBMP;
        System.Drawing.Graphics graphicTemp;
        System.Drawing.Bitmap bmp = new System.Drawing.Bitmap(Org);

        int iWidth;
        int iHeight;
        if ((FinalHeight == 0) && (FinalWidth != 0))
        {
            iWidth = FinalWidth;
            iHeight = (bmp.Size.Height * iWidth / bmp.Size.Width);
        }
        else if ((FinalHeight != 0) && (FinalWidth == 0))
        {
            iHeight = FinalHeight;
            iWidth = (bmp.Size.Width * iHeight / bmp.Size.Height);
        }
        else
        {
            iWidth = FinalWidth;
            iHeight = FinalHeight;
        }

        NewBMP = new System.Drawing.Bitmap(iWidth, iHeight);
        graphicTemp = System.Drawing.Graphics.FromImage(NewBMP);
        graphicTemp.CompositingMode = System.Drawing.Drawing2D.CompositingMode.SourceOver;
        graphicTemp.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
        graphicTemp.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
        graphicTemp.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
        graphicTemp.PixelOffsetMode = System.Drawing.Drawing2D.PixelOffsetMode.HighQuality;
        graphicTemp.DrawImage(bmp, 0, 0, iWidth, iHeight);
        graphicTemp.Dispose();
        System.Drawing.Imaging.EncoderParameters encoderParams = new System.Drawing.Imaging.EncoderParameters();
        System.Drawing.Imaging.EncoderParameter encoderParam = new System.Drawing.Imaging.EncoderParameter(System.Drawing.Imaging.Encoder.Quality, ImageQuality);
        encoderParams.Param[0] = encoderParam;
        System.Drawing.Imaging.ImageCodecInfo[] arrayICI = System.Drawing.Imaging.ImageCodecInfo.GetImageEncoders();
        for (int fwd = 0; fwd <= arrayICI.Length - 1; fwd++)
        {
            if (arrayICI[fwd].FormatDescription.Equals("JPEG"))
            {
                NewBMP.Save(Des, arrayICI[fwd], encoderParams);
            }
        }

        NewBMP.Dispose();
        bmp.Dispose();

        return true;
    }
}