<%@ WebHandler Language="C#" Class="SimpleImageUpload_preview" %>

using System;
using System.Web;
using System.IO;

using CodeCarvings.Piczard;
using CodeCarvings.Piczard.Web;

public class SimpleImageUpload_preview : IHttpHandler 
{
    
    public void ProcessRequest (HttpContext context) 
    {
        string temporaryFileId = context.Request["tfid"];
        string key = context.Request["k"];

        if (!this.ValidateTemporaryFileId(temporaryFileId))
        {
            this.WriteEmpty(context);
            return;
        }
        if (!this.ValidateKey(key, ""))
        {
            this.WriteEmpty(context);
            return;
        }
        
        // Transmit the image preview
        string previewImageFilePath = this.GetPreviewImageFilePath(temporaryFileId);
        if (File.Exists(previewImageFilePath))
        {
            // Preview image found

            // Set cache
            DateTime dtLastModified = DateTime.Now;
            context.Response.Cache.SetLastModified(dtLastModified);
            context.Response.Cache.SetExpires(dtLastModified.AddDays(2));
            context.Response.Cache.SetCacheability(HttpCacheability.Private);         
            
            // Transmit the image
            ImageArchiver.TransmitImageFileToWebResponse(previewImageFilePath, context.Response);
        }
        else
        {
            // Preview image not found
            this.WriteEmpty(context);
        }
    }
 
    public bool IsReusable 
    {
        get 
        {
            return false;
        }
    }

    protected bool ValidateTemporaryFileId(string temporaryFileId)
    {
        if (string.IsNullOrEmpty(temporaryFileId))
        {
            return false;
        }
        if (!TemporaryFileManager.ValidateTemporaryFileId(temporaryFileId, false))
        {
            return false;
        }

        return true;
    }
    protected bool ValidateKey(string key, string additionalData)
    {
        if (string.IsNullOrEmpty(key))
        {
            return false;
        }
        string decodedKey = CodeCarvings.Piczard.Helpers.SecurityHelper.DecryptString(key);
        string[] keyVett = decodedKey.Split('&');
        if (keyVett.Length != 4)
        {
            return false;
        }
        DateTime timestamp = new DateTime(long.Parse(keyVett[1]));
        if (timestamp < DateTime.Now.AddDays(-1))
        {
            return false;
        }
        if (keyVett[2] != additionalData)
        {
            return false;
        }

        return true;
    }

    protected string GetPreviewImageFilePath(string temporaryFileId)
    {
        return TemporaryFileManager.GetTemporaryFilePath(temporaryFileId, "_p.jpg");
    }

    protected void WriteEmpty(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        context.Response.Write("no image");
    }

}