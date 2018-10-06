using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using CodeCarvings.Piczard;
using CodeCarvings.Piczard.Web;
using CodeCarvings.Piczard.Serialization;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD.Account.Admin.WebPage.Main
{
    public partial class EditSlide : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.ScriptManager1.IsInAsyncPostBack) { ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "initializeUI", "initializeUI();", true); }
            if (!this.IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request.QueryString["SlideID"])) { this.RecordId = Request.QueryString["SlideID"].ToString(); }
                this.Picture1.CropConstraint = new FixedCropConstraint(600, 400);
                this.Picture1.CropConstraint.DefaultImageSelectionStrategy = CropConstraintImageSelectionStrategy.WholeImage;
                this.Picture1.PreviewFilter = null;
                this.Picture1.AutoOpenImageEditPopupAfterUpload = true;
                #region Load the Record
                if (this.RecordId != "")
                {
                    this.labelRecordId.Text = this.RecordId.ToString();
                    using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                    {
                        using (SqlCommand command = connection.CreateCommand())
                        {
                            command.CommandType = CommandType.Text;
                            command.CommandText = "SELECT * FROM dbo.PageMain WHERE MainID = @Id";
                            command.Parameters.AddWithValue("@Id", this.RecordId);
                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                if (reader.Read())
                                {
                                    this.PageMainName.Text = Convert.ToString(reader["PageMainName"]);
                                    this.PageMainTitle.Text = Convert.ToString(reader["PageMainTitle"]);
                                    PictureTrimmerValue picture1Value = PictureTrimmerValue.FromJSON(Convert.ToString(reader["PageMainImageTrimmerValue"]));
                                    this.Picture1FileName_upload = Convert.ToString(reader["PageMainImageUpload"]);
                                    this.Picture1FileName_main = Convert.ToString(reader["PageMainImageMain"]);
                                    this.Picture1FileName_thumbnail = Convert.ToString(reader["PageMainImageThumbnail"]);
                                    this.PageMainBody.Text = Convert.ToString(reader["PageMainBody"]);
                                    this.PageMainTitleLink.Text = Convert.ToString(reader["PageMainTitleLink"]);
                                    this.Activiated.Text = Convert.ToString(reader["Activiated"]);
                                    this.InsertedDate.Text = Convert.ToString(reader["InsertedDate"]);
                                    this.ModifiedDate.Text = Convert.ToString(reader["ModifiedDate"]);

                                    if (!string.IsNullOrEmpty(this.Picture1FileName_upload))
                                    {
                                        string picture1FilePath_upload = System.IO.Path.Combine(Server.MapPath("~/store/Slide/upload/"), this.Picture1FileName_upload);
                                        this.Picture1.LoadImageFromFileSystem(picture1FilePath_upload, picture1Value);
                                    }
                                }
                                else { this.ReturnToList(); return; }
                            }
                        }
                    }
                }
                else { this.ReturnToList(); }
                #endregion
            }
            this.UpdateProgress1.AssociatedUpdatePanelID = this.UpdatePanel1.UniqueID;
        }

        #region Properties

        protected string RecordId
        {
            get
            {
                if (this.ViewState["RecordId"] != null)
                {
                    return (string)this.ViewState["RecordId"];
                }
                else
                {
                    return "";
                }
            }
            set
            {
                this.ViewState["RecordId"] = value;
            }
        }

        protected string Picture1FileName_upload
        {
            get
            {
                if (this.ViewState["Picture1FileName_upload"] != null)
                {
                    return (string)this.ViewState["Picture1FileName_upload"];
                }
                else
                {
                    return "";
                }
            }
            set
            {
                this.ViewState["Picture1FileName_upload"] = value;
            }
        }

        protected string Picture1FileName_main
        {
            get
            {
                if (this.ViewState["Picture1FileName_main"] != null)
                {
                    return (string)this.ViewState["Picture1FileName_main"];
                }
                else
                {
                    return "";
                }
            }
            set
            {
                this.ViewState["Picture1FileName_main"] = value;
            }
        }

        protected string Picture1FileName_thumbnail
        {
            get
            {
                if (this.ViewState["Picture1FileName_thumbnail"] != null)
                {
                    return (string)this.ViewState["Picture1FileName_thumbnail"];
                }
                else
                {
                    return "";
                }
            }
            set
            {
                this.ViewState["Picture1FileName_thumbnail"] = value;
            }
        }

        #endregion


        protected void ReturnToList()
        {
            Response.Redirect("default.aspx", true);
        }






        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (!this.IsValid){ return; }

            #region Manage the image files

            #region Delete the previous image files
            if (this.RecordId != "")
            {
                if ((!this.Picture1.HasImage) || (this.Picture1.HasNewImage))
                {
                    if (!string.IsNullOrEmpty(this.Picture1FileName_upload))
                    {
                        string picture1FilePath_upload = System.IO.Path.Combine(Server.MapPath("~/store/Slide/upload/"), this.Picture1FileName_upload);
                        if (System.IO.File.Exists(picture1FilePath_upload)){ System.IO.File.Delete(picture1FilePath_upload);}
                        this.Picture1FileName_upload = "";
                        string picture1FilePath_main = System.IO.Path.Combine(Server.MapPath("~/store/Slide/main/"), this.Picture1FileName_main);
                        if (System.IO.File.Exists(picture1FilePath_main)){ System.IO.File.Delete(picture1FilePath_main); }
                        this.Picture1FileName_main = "";
                        string picture1FilePath_thumbnail = System.IO.Path.Combine(Server.MapPath("~/store/Slide/thumbnail/"), this.Picture1FileName_thumbnail);
                        if (System.IO.File.Exists(picture1FilePath_thumbnail))
                        { System.IO.File.Delete(picture1FilePath_thumbnail); }
                        this.Picture1FileName_thumbnail = "";
                    }
                }
            }
            #endregion

            #region Save the new image
            if (this.Picture1.HasNewImage)
            {
                string picture1folderPath_upload = Server.MapPath("~/store/Slide/upload/");
                this.Picture1FileName_upload = CodeCarvings.Piczard.Helpers.IOHelper.GetUniqueFileName(picture1folderPath_upload, this.Picture1.SourceImageClientFileName);
                string picture1FilePath_upload = System.IO.Path.Combine(picture1folderPath_upload, this.Picture1FileName_upload);
                System.IO.File.Copy(this.Picture1.TemporarySourceImageFilePath, picture1FilePath_upload, true);
                string picture1folderPath_main = Server.MapPath("~/store/Slide/main/");
                this.Picture1FileName_main = CodeCarvings.Piczard.Helpers.IOHelper.GetUniqueFileName(picture1folderPath_main, System.IO.Path.GetFileNameWithoutExtension(this.Picture1.SourceImageClientFileName) + ImageArchiver.GetFileExtensionFromImageFormatId(System.Drawing.Imaging.ImageFormat.Jpeg.Guid));
                string picture1FilePath_main = System.IO.Path.Combine(picture1folderPath_main, this.Picture1FileName_main);
                this.Picture1.SaveProcessedImageToFileSystem(picture1FilePath_main);
                string picture1folderPath_thumbnail = Server.MapPath("~/store/Slide/thumbnail/");
                this.Picture1FileName_thumbnail = CodeCarvings.Piczard.Helpers.IOHelper.GetUniqueFileName(picture1folderPath_thumbnail, System.IO.Path.GetFileNameWithoutExtension(this.Picture1.SourceImageClientFileName) + ImageArchiver.GetFileExtensionFromImageFormatId(System.Drawing.Imaging.ImageFormat.Jpeg.Guid));
                string picture1FilePath_thumbnail = System.IO.Path.Combine(picture1folderPath_thumbnail, this.Picture1FileName_thumbnail);
                ImageProcessingJob job = this.Picture1.GetImageProcessingJob();
                job.Filters.Add(new FixedResizeConstraint(300, 200));
                job.SaveProcessedImageToFileSystem(this.Picture1.TemporarySourceImageFilePath, picture1FilePath_thumbnail, new JpegFormatEncoderParams(80));
            }
            #endregion

            #endregion

            #region Save the Record into the DB
            if (this.RecordId != "")
            {
                using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                {
                    using (SqlCommand command = connection.CreateCommand())
                    {
                        command.CommandType = CommandType.Text;
                        command.CommandText = "UPDATE dbo.PageMain SET PageMainName=@PageMainName,PageMainTitle=@PageMainTitle,PageMainBody=@PageMainBody,PageMainTitleLink=@PageMainTitleLink,PageMainImageMain=@ImgLinkM,PageMainImageThumbnail=@ImgLinkT,PageMainImageUpload=@ImgLinkU,PageMainImageTrimmerValue=@TrimmerValue,Activiated=1,ModifiedDate=GETDATE() WHERE MainID=@Id";
                        command.Parameters.AddWithValue("@PageMainName", this.PageMainName.Text);
                        command.Parameters.AddWithValue("@PageMainTitle", this.PageMainTitle.Text);
                        command.Parameters.AddWithValue("@PageMainBody", this.PageMainBody.Text);
                        command.Parameters.AddWithValue("@PageMainTitleLink", this.PageMainTitleLink.Text);
                        command.Parameters.AddWithValue("@ImgLinkM", this.Picture1FileName_main);
                        command.Parameters.AddWithValue("@ImgLinkT", this.Picture1FileName_thumbnail);
                        command.Parameters.AddWithValue("@ImgLinkU", this.Picture1FileName_upload);
                        command.Parameters.AddWithValue("@TrimmerValue", JSONSerializer.SerializeToString(this.Picture1.Value));
                        command.Parameters.AddWithValue("@Id", this.RecordId);
                        command.ExecuteNonQuery();
                    }
                }
            }
            else { ReturnToList(); }
            #endregion
            this.Picture1.ClearTemporaryFiles();
            this.ReturnToList();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            this.Picture1.ClearTemporaryFiles();
            this.ReturnToList();
        }




    }
}