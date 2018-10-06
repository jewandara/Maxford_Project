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

namespace MAXFORD.Account.Admin.Database.Hall
{
    public partial class Edit : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (this.ScriptManager1.IsInAsyncPostBack)
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "initializeUI", "initializeUI();", true);
            }


            if (!this.IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request.QueryString["HallID"]))
                {
                    this.RecordId = int.Parse(Request.QueryString["HallID"]);
                }

                this.Picture1.CropConstraint = new FixedCropConstraint(800, 600);
                this.Picture1.CropConstraint.DefaultImageSelectionStrategy = CropConstraintImageSelectionStrategy.WholeImage;
                this.Picture1.PreviewFilter = null;

                this.Picture1.AutoOpenImageEditPopupAfterUpload = true;

                #region Load the Record
                if (this.RecordId != 0)
                {
                    // UPDATE
                    this.labelRecordId.Text = this.RecordId.ToString();

                    using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                    {
                        using (SqlCommand command = connection.CreateCommand())
                        {
                            command.CommandType = CommandType.Text;
                            command.CommandText = "SELECT * FROM dbo.ClassHall WHERE HallID = @Id";
                            command.Parameters.AddWithValue("@Id", this.RecordId);

                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                if (reader.Read())
                                {
                                    this.HallName.Text = Convert.ToString(reader["HallName"]);
                                    this.HallTitle.Text = Convert.ToString(reader["HallTitle"]);
                                    PictureTrimmerValue picture1Value = PictureTrimmerValue.FromJSON(Convert.ToString(reader["HallImageTrimmerValue"]));
                                    this.Picture1FileName_upload = Convert.ToString(reader["HallImageUpload"]);
                                    this.Picture1FileName_main = Convert.ToString(reader["HallImageMain"]);
                                    this.Picture1FileName_thumbnail = Convert.ToString(reader["HallImageThumbnail"]);
                                    this.HallBody.Text = Convert.ToString(reader["HallBody"]);
                                    this.HallLocation.Text = Convert.ToString(reader["HallLocation"]);
                                    this.HallCapacity.Text = Convert.ToString(reader["HallCapacity"]);
                                    this.HallFlow.Text = Convert.ToString(reader["HallFlow"]);
                                    this.HallNumberOfDesk.Text = Convert.ToString(reader["HallNumberOfDesk"]);
                                    this.HallNumberOfChires.Text = Convert.ToString(reader["HallNumberOfChires"]);
                                    this.Activiated.Text = Convert.ToString(reader["Activiated"]);
                                    this.InsertedDate.Text = Convert.ToString(reader["InsertedDate"]);
                                    this.ModifiedDate.Text = Convert.ToString(reader["ModifiedDate"]);

                                    if (!string.IsNullOrEmpty(this.Picture1FileName_upload))
                                    {
                                        // Load the image into the SimpleImageUpload ASCX control
                                        string picture1FilePath_upload = System.IO.Path.Combine(Server.MapPath("~/store/Hall/upload/"), this.Picture1FileName_upload);
                                        this.Picture1.LoadImageFromFileSystem(picture1FilePath_upload, picture1Value);
                                    }
                                }
                                else
                                {
                                    // Record not found, return to list
                                    this.ReturnToList();
                                    return;
                                }
                            }
                        }
                    }
                }
                else
                {
                    // NEW RECORD
                    this.labelRecordId.Text = "New record";
                    this.Panel1.Visible = false;
                }
                #endregion
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
            Response.Redirect("default.aspx", true);
        }






        protected void btnSave_Click(object sender, EventArgs e)
        {

            if (!this.IsValid)
            {
                return;
            }

            #region Manage the image files

            #region Delete the previous image files
            if (this.RecordId != 0)
            {

                if ((!this.Picture1.HasImage) || (this.Picture1.HasNewImage))
                {

                    if (!string.IsNullOrEmpty(this.Picture1FileName_upload))
                    {

                        string picture1FilePath_upload = System.IO.Path.Combine(Server.MapPath("~/store/Hall/upload/"), this.Picture1FileName_upload);
                        if (System.IO.File.Exists(picture1FilePath_upload))
                        {
                            System.IO.File.Delete(picture1FilePath_upload);
                        }
                        this.Picture1FileName_upload = "";

                        string picture1FilePath_main = System.IO.Path.Combine(Server.MapPath("~/store/Hall/main/"), this.Picture1FileName_main);
                        if (System.IO.File.Exists(picture1FilePath_main))
                        {
                            System.IO.File.Delete(picture1FilePath_main);
                        }
                        this.Picture1FileName_main = "";

                        string picture1FilePath_thumbnail = System.IO.Path.Combine(Server.MapPath("~/store/Hall/thumbnail/"), this.Picture1FileName_thumbnail);
                        if (System.IO.File.Exists(picture1FilePath_thumbnail))
                        {
                            System.IO.File.Delete(picture1FilePath_thumbnail);
                        }
                        this.Picture1FileName_thumbnail = "";

                    }
                }
            }
            #endregion

            #region Save the new image
            if (this.Picture1.HasNewImage)
            {

                string picture1folderPath_upload = Server.MapPath("~/store/Hall/upload/");
                this.Picture1FileName_upload = CodeCarvings.Piczard.Helpers.IOHelper.GetUniqueFileName(picture1folderPath_upload, this.Picture1.SourceImageClientFileName);
                string picture1FilePath_upload = System.IO.Path.Combine(picture1folderPath_upload, this.Picture1FileName_upload);
                System.IO.File.Copy(this.Picture1.TemporarySourceImageFilePath, picture1FilePath_upload, true);


                string picture1folderPath_main = Server.MapPath("~/store/Hall/main/");
                this.Picture1FileName_main = CodeCarvings.Piczard.Helpers.IOHelper.GetUniqueFileName(picture1folderPath_main, System.IO.Path.GetFileNameWithoutExtension(this.Picture1.SourceImageClientFileName) + ImageArchiver.GetFileExtensionFromImageFormatId(System.Drawing.Imaging.ImageFormat.Jpeg.Guid));
                string picture1FilePath_main = System.IO.Path.Combine(picture1folderPath_main, this.Picture1FileName_main);
                this.Picture1.SaveProcessedImageToFileSystem(picture1FilePath_main);


                string picture1folderPath_thumbnail = Server.MapPath("~/store/Hall/thumbnail/");
                this.Picture1FileName_thumbnail = CodeCarvings.Piczard.Helpers.IOHelper.GetUniqueFileName(picture1folderPath_thumbnail, System.IO.Path.GetFileNameWithoutExtension(this.Picture1.SourceImageClientFileName) + ImageArchiver.GetFileExtensionFromImageFormatId(System.Drawing.Imaging.ImageFormat.Jpeg.Guid));
                string picture1FilePath_thumbnail = System.IO.Path.Combine(picture1folderPath_thumbnail, this.Picture1FileName_thumbnail);
                ImageProcessingJob job = this.Picture1.GetImageProcessingJob();
                job.Filters.Add(new FixedResizeConstraint(48, 48));
                job.SaveProcessedImageToFileSystem(this.Picture1.TemporarySourceImageFilePath, picture1FilePath_thumbnail, new JpegFormatEncoderParams(80));
            }
            #endregion

            #endregion

            #region Save the Record into the DB

            if (this.RecordId != 0)
            {
                using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                {
                    using (SqlCommand command = connection.CreateCommand())
                    { 
                        command.CommandType = CommandType.Text;
                        command.CommandText = "UPDATE dbo.ClassHall SET HallName=@Name,HallTitle=@Title,HallImageMain=@ImgLinkM,HallImageThumbnail=@ImgLinkT,HallImageUpload=@ImgLinkU,HallImageTrimmerValue=@TrimmerValue,HallBody=@Body,HallLocation=@Location,HallCapacity=@Capacity,HallFlow=@Flow,HallNumberOfDesk=@NumberOfDesk,HallNumberOfChires=@NumberOfChires,Activiated=1,ModifiedDate=GETDATE() WHERE HallID=@Id";
                        command.Parameters.AddWithValue("@Name", this.HallName.Text);
                        command.Parameters.AddWithValue("@Title", this.HallTitle.Text);
                        command.Parameters.AddWithValue("@ImgLinkM", this.Picture1FileName_main);
                        command.Parameters.AddWithValue("@ImgLinkT", this.Picture1FileName_thumbnail);
                        command.Parameters.AddWithValue("@ImgLinkU", this.Picture1FileName_upload);
                        command.Parameters.AddWithValue("@TrimmerValue", JSONSerializer.SerializeToString(this.Picture1.Value));
                        command.Parameters.AddWithValue("@Body", this.HallBody.Text);
                        command.Parameters.AddWithValue("@Location", this.HallLocation.Text);
                        command.Parameters.AddWithValue("@Capacity", this.HallCapacity.Text);
                        command.Parameters.AddWithValue("@Flow", this.HallFlow.Text);
                        command.Parameters.AddWithValue("@NumberOfDesk", this.HallNumberOfDesk.Text);
                        command.Parameters.AddWithValue("@NumberOfChires", this.HallNumberOfChires.Text);
                        command.Parameters.AddWithValue("@Id", this.RecordId);

                        command.ExecuteNonQuery();
                    }
                }
            }
            else
            {
                using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
                {
                    using (SqlCommand command = connection.CreateCommand())
                    {
                        command.CommandText = "INSERT INTO dbo.ClassHall VALUES (@Name,@Title,@ImgLinkM,@ImgLinkT,@ImgLinkU,@TrimmerValue,@Body,@Location,@Capacity,@Flow,@NumberOfDesk,@NumberOfChires,1,GETDATE(),GETDATE())";
                        command.Parameters.AddWithValue("@Name", this.HallName.Text);
                        command.Parameters.AddWithValue("@Title", this.HallTitle.Text);
                        command.Parameters.AddWithValue("@ImgLinkM", this.Picture1FileName_main);
                        command.Parameters.AddWithValue("@ImgLinkT", this.Picture1FileName_thumbnail);
                        command.Parameters.AddWithValue("@ImgLinkU", this.Picture1FileName_upload);
                        command.Parameters.AddWithValue("@TrimmerValue", JSONSerializer.SerializeToString(this.Picture1.Value));
                        command.Parameters.AddWithValue("@Body", this.HallBody.Text);
                        command.Parameters.AddWithValue("@Location", this.HallLocation.Text);
                        command.Parameters.AddWithValue("@Capacity", this.HallCapacity.Text);
                        command.Parameters.AddWithValue("@Flow", this.HallFlow.Text);
                        command.Parameters.AddWithValue("@NumberOfDesk", this.HallNumberOfDesk.Text);
                        command.Parameters.AddWithValue("@NumberOfChires", this.HallNumberOfChires.Text);

                        command.ExecuteNonQuery();
                    }
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