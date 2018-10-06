using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Drawing;
using CodeCarvings.Piczard;
using CodeCarvings.Piczard.Web;
using CodeCarvings.Piczard.Serialization;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD.Account.Teacher.Profile
{
    public partial class Image : System.Web.UI.Page
    {


        private string UserName = System.Web.HttpContext.Current.User.Identity.Name;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.ScriptManager1.IsInAsyncPostBack){ ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "initializeUI", "initializeUI();", true); }
            if (!this.IsPostBack)
            {
                this.Picture1.CropConstraint = new FixedCropConstraint(400, 400);
                this.Picture1.CropConstraint.DefaultImageSelectionStrategy = CropConstraintImageSelectionStrategy.WholeImage;
                this.Picture1.PreviewFilter = null;
                this.Picture1.AutoOpenImageEditPopupAfterUpload = true;
                    
                using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                {
                    using (SqlCommand command = connection.CreateCommand())
                    {
                        command.CommandType = CommandType.Text;
                        command.CommandText = "SELECT * FROM dbo._vw_maxford_UsersData WHERE UserName = '" + UserName + "'";
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                this.LabelTeacherName.Text = Convert.ToString(reader["Title"]) + "  " + Convert.ToString(reader["UserFirstName"]) + "  " + Convert.ToString(reader["UserLastName"]);
                                PictureTrimmerValue picture1Value = PictureTrimmerValue.FromJSON(Convert.ToString(reader["UserImageTrimmerValue"]));
                                this.Picture1FileName_upload = Convert.ToString(reader["UserImageUpload"]);
                                this.Picture1FileName_main = Convert.ToString(reader["UserImageMain"]);
                                this.Picture1FileName_thumbnail = Convert.ToString(reader["UserImageThumbnail"]);
                                if (!string.IsNullOrEmpty(this.Picture1FileName_upload))
                                {
                                    string picture1FilePath_upload = System.IO.Path.Combine(Server.MapPath("~/Store/Teacher/" + UserName + "/upload/"), this.Picture1FileName_upload);
                                    this.Picture1.LoadImageFromFileSystem(picture1FilePath_upload, picture1Value);
                                }
                            }
                            else
                            {
                                this.ReturnToList();
                                return;
                            }
                        }
                    }
                }
            }
            this.UpdateProgress1.AssociatedUpdatePanelID = this.UpdatePanel1.UniqueID;
        }


        #region Properties

        protected int RecordId
        {
            get
            {
                if (this.ViewState["RecordId"] != null)
                {
                    return (int)this.ViewState["RecordId"];
                }
                else
                {
                    return 0;
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
            Response.Redirect("Image.aspx", true);
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {

            #region Delete the previous image files
            if ((!this.Picture1.HasImage) || (this.Picture1.HasNewImage))
            {
                if (!string.IsNullOrEmpty(this.Picture1FileName_upload))
                {
                    string picture1FilePath_upload = System.IO.Path.Combine(Server.MapPath("~/store/Teacher/" + UserName + "/upload/"), this.Picture1FileName_upload);
                    if (System.IO.File.Exists(picture1FilePath_upload)){ System.IO.File.Delete(picture1FilePath_upload); }
                    this.Picture1FileName_upload = "";
                    string picture1FilePath_main = System.IO.Path.Combine(Server.MapPath("~/store/Teacher/" + UserName + "/main/"), this.Picture1FileName_main);
                    if (System.IO.File.Exists(picture1FilePath_main)) { System.IO.File.Delete(picture1FilePath_main); }
                    this.Picture1FileName_main = "";
                    string picture1FilePath_thumbnail = System.IO.Path.Combine(Server.MapPath("~/store/Teacher/" + UserName + "/thumbnail/"), this.Picture1FileName_thumbnail);
                    if (System.IO.File.Exists(picture1FilePath_thumbnail)){ System.IO.File.Delete(picture1FilePath_thumbnail); }
                    this.Picture1FileName_thumbnail = "";
                }
            }
            #endregion

            #region Save the new image
            if (this.Picture1.HasNewImage)
            {
                string picture1folderPath_upload = Server.MapPath("~/store/Teacher/" + UserName + "/upload/");
                this.Picture1FileName_upload = CodeCarvings.Piczard.Helpers.IOHelper.GetUniqueFileName(picture1folderPath_upload, this.Picture1.SourceImageClientFileName);
                string picture1FilePath_upload = System.IO.Path.Combine(picture1folderPath_upload, this.Picture1FileName_upload);
                System.IO.File.Copy(this.Picture1.TemporarySourceImageFilePath, picture1FilePath_upload, true);
                string picture1folderPath_main = Server.MapPath("~/store/Teacher/" + UserName + "/main/");
                this.Picture1FileName_main = CodeCarvings.Piczard.Helpers.IOHelper.GetUniqueFileName(picture1folderPath_main, System.IO.Path.GetFileNameWithoutExtension(this.Picture1.SourceImageClientFileName) + ImageArchiver.GetFileExtensionFromImageFormatId(System.Drawing.Imaging.ImageFormat.Jpeg.Guid));
                string picture1FilePath_main = System.IO.Path.Combine(picture1folderPath_main, this.Picture1FileName_main);
                this.Picture1.SaveProcessedImageToFileSystem(picture1FilePath_main);
                string picture1folderPath_thumbnail = Server.MapPath("~/store/Teacher/" + UserName + "/thumbnail/");
                this.Picture1FileName_thumbnail = CodeCarvings.Piczard.Helpers.IOHelper.GetUniqueFileName(picture1folderPath_thumbnail, System.IO.Path.GetFileNameWithoutExtension(this.Picture1.SourceImageClientFileName) + ImageArchiver.GetFileExtensionFromImageFormatId(System.Drawing.Imaging.ImageFormat.Jpeg.Guid));
                string picture1FilePath_thumbnail = System.IO.Path.Combine(picture1folderPath_thumbnail, this.Picture1FileName_thumbnail);
                ImageProcessingJob job = this.Picture1.GetImageProcessingJob();
                job.Filters.Add(new FixedResizeConstraint(100, 100));
                job.SaveProcessedImageToFileSystem(this.Picture1.TemporarySourceImageFilePath, picture1FilePath_thumbnail, new JpegFormatEncoderParams(80));
            }
            #endregion

            #region Save the Record into the DB
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    command.CommandType = CommandType.Text;
                    command.CommandText = "UPDATE dbo.UsersData SET UserImageMain=@ImgLinkM,UserImageThumbnail=@ImgLinkT,UserImageUpload=@ImgLinkU,UserImageTrimmerValue=@TrimmerValue WHERE UserId = (SELECT UserId FROM dbo.Users WHERE UserName='" + UserName + "')";
                    command.Parameters.AddWithValue("@ImgLinkM", this.Picture1FileName_main);
                    command.Parameters.AddWithValue("@ImgLinkT", this.Picture1FileName_thumbnail);
                    command.Parameters.AddWithValue("@ImgLinkU", this.Picture1FileName_upload);
                    command.Parameters.AddWithValue("@TrimmerValue", JSONSerializer.SerializeToString(this.Picture1.Value));
                    command.ExecuteNonQuery();
                }
            }
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