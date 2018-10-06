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


namespace MAXFORD.Account.Teacher.Article
{
    public partial class Edit : System.Web.UI.Page
    {



        String UserID = "";
        public void Page_Init(object o, EventArgs e)
        {           
           ClassData();
           DropDownListArticleType.SelectedIndex = 1;
           DropDownListArticleType.Items.Add(new ListItem("PUBLIC", "PUBLIC", true));
           DropDownListArticleType.Items.Add(new ListItem("PRIVATE", "PRIVATE", true));
           DropDownListCatogory.SelectedIndex = 1;
        }

        public void ClassData()
        {
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT CatID, CatName FROM dbo.PageCatogory";
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        DropDownListCatogory.DataSource = reader;
                        DropDownListCatogory.DataValueField = "CatID";
                        DropDownListCatogory.DataTextField = "CatName";
                        DropDownListCatogory.DataBind();
                        reader.Dispose();
                    }

                    command.Dispose();
                    string UserName = System.Web.HttpContext.Current.User.Identity.Name;
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT UserID FROM dbo.Users WHERE UserName = '" + UserName + "'";
                    using (SqlDataReader reader = command.ExecuteReader())
                    { if (reader.Read()) { UserID = Convert.ToString(reader["UserID"]); } reader.Dispose(); }
                    command.Dispose();
                }
            }
        }
        


        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.ScriptManager1.IsInAsyncPostBack) { ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "initializeUI", "initializeUI();", true); }
            if (!this.IsPostBack)
            {
                string UserName = System.Web.HttpContext.Current.User.Identity.Name;
                if (!string.IsNullOrEmpty(Request.QueryString["ArticleID"])) { this.RecordId = Request.QueryString["ArticleID"]; }
                this.Picture1.CropConstraint = new FixedCropConstraint(800, 350);
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
                            String LinkText = "";
                            command.CommandType = CommandType.Text;
                            command.Parameters.AddWithValue("@Id", this.RecordId);

                            command.CommandText = "SELECT CatName FROM dbo.PageCatogory AS PCAT INNER JOIN dbo.ArticleCatagory AS ACAT ON PCAT.CatID = ACAT.CatID AND ACAT.ArticleID = @Id";
                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                while (reader.Read()) { LinkText = LinkText + "<tr><td style='padding:5px;vertical-align: text-top;'><strong><br /></strong></td><td style='padding:5px;'><p style='background:#a1e2c8; color:#808080;border:1px solid #000; padding:5px; padding-left:20px; width:400px'>" + Convert.ToString(reader["CatName"]) + "</p></td><td></td></tr>"; } 
                                reader.Dispose(); 
                            }
                            LabelLink.Text = LinkText;
                            command.Dispose();

                            command.CommandText = "SELECT * FROM dbo.vw_maxford_Article WHERE ArticleID = @Id AND UserName = '" + UserName + "'";
                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                if (reader.Read())
                                {
                                    DropDownListArticleType.SelectedValue = Convert.ToString(reader["ArticleType"]);
                                    this.ArticleName.Text = Convert.ToString(reader["ArticleName"]);
                                    this.ArticleTitle.Text = Convert.ToString(reader["ArticleTitle"]);
                                    this.ArticleBody.Text = Convert.ToString(reader["ArticleBody"]);
                                    PictureTrimmerValue picture1Value = PictureTrimmerValue.FromJSON(Convert.ToString(reader["ArticleImageTrimmerValue"]));
                                    this.Picture1FileName_upload = Convert.ToString(reader["ArticleImageUpload"]);
                                    this.Picture1FileName_main = Convert.ToString(reader["ArticleImageMain"]);
                                    this.Picture1FileName_thumbnail = Convert.ToString(reader["ArticleImageThumbnail"]);
                                    this.Activiated.Text = Convert.ToString(reader["Activiated"]);
                                    this.InsertedDate.Text = Convert.ToString(reader["InsertedDate"]);
                                    this.ModifiedDate.Text = Convert.ToString(reader["ModifiedDate"]);

                                    if (!string.IsNullOrEmpty(this.Picture1FileName_upload))
                                    {
                                        string picture1FilePath_upload = System.IO.Path.Combine(Server.MapPath("~/store/Article/upload/"), this.Picture1FileName_upload);
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
                else
                {
                    // NEW RECORD
                    this.labelRecordId.Text = "New Debate Details";
                    this.Panel1.Visible = false;
                }
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

            if (!this.IsValid) { return; }

            #region Manage the image files

            #region Delete the previous image files
            if (this.RecordId != "")
            {
                if ((!this.Picture1.HasImage) || (this.Picture1.HasNewImage))
                {
                    if (!string.IsNullOrEmpty(this.Picture1FileName_upload))
                    {
                        string picture1FilePath_upload = System.IO.Path.Combine(Server.MapPath("~/store/Article/upload/"), this.Picture1FileName_upload);
                        if (System.IO.File.Exists(picture1FilePath_upload))
                        { System.IO.File.Delete(picture1FilePath_upload); }
                        this.Picture1FileName_upload = "";
                        string picture1FilePath_main = System.IO.Path.Combine(Server.MapPath("~/store/Article/main/"), this.Picture1FileName_main);
                        if (System.IO.File.Exists(picture1FilePath_main))
                        { System.IO.File.Delete(picture1FilePath_main); }
                        this.Picture1FileName_main = "";
                        string picture1FilePath_thumbnail = System.IO.Path.Combine(Server.MapPath("~/store/Article/thumbnail/"), this.Picture1FileName_thumbnail);
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
                string picture1folderPath_upload = Server.MapPath("~/store/Article/upload/");
                this.Picture1FileName_upload = CodeCarvings.Piczard.Helpers.IOHelper.GetUniqueFileName(picture1folderPath_upload, this.Picture1.SourceImageClientFileName);
                string picture1FilePath_upload = System.IO.Path.Combine(picture1folderPath_upload, this.Picture1FileName_upload);
                System.IO.File.Copy(this.Picture1.TemporarySourceImageFilePath, picture1FilePath_upload, true);
                string picture1folderPath_main = Server.MapPath("~/store/Article/main/");
                this.Picture1FileName_main = CodeCarvings.Piczard.Helpers.IOHelper.GetUniqueFileName(picture1folderPath_main, System.IO.Path.GetFileNameWithoutExtension(this.Picture1.SourceImageClientFileName) + ImageArchiver.GetFileExtensionFromImageFormatId(System.Drawing.Imaging.ImageFormat.Jpeg.Guid));
                string picture1FilePath_main = System.IO.Path.Combine(picture1folderPath_main, this.Picture1FileName_main);
                this.Picture1.SaveProcessedImageToFileSystem(picture1FilePath_main);
                string picture1folderPath_thumbnail = Server.MapPath("~/store/Article/thumbnail/");
                this.Picture1FileName_thumbnail = CodeCarvings.Piczard.Helpers.IOHelper.GetUniqueFileName(picture1folderPath_thumbnail, System.IO.Path.GetFileNameWithoutExtension(this.Picture1.SourceImageClientFileName) + ImageArchiver.GetFileExtensionFromImageFormatId(System.Drawing.Imaging.ImageFormat.Jpeg.Guid));
                string picture1FilePath_thumbnail = System.IO.Path.Combine(picture1folderPath_thumbnail, this.Picture1FileName_thumbnail);
                ImageProcessingJob job = this.Picture1.GetImageProcessingJob();
                job.Filters.Add(new FixedResizeConstraint(150, 150));
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
                        command.CommandText = "UPDATE dbo.Article SET ArticleName=@ArticleName,ArticleType=@ArticleType,ArticleTitle=@ArticleTitle,ArticleBody=@ArticleBody,ArticleImageMain=@ImgLinkM,ArticleImageThumbnail=@ImgLinkT,ArticleImageUpload=@ImgLinkU,ArticleImageTrimmerValue=@TrimmerValue,Activiated=1,ModifiedDate=GETDATE() WHERE ArticleID=@Id AND UserID='" + UserID + "'";

                        command.Parameters.AddWithValue("@ArticleName", this.ArticleName.Text);
                        command.Parameters.AddWithValue("@ArticleType", DropDownListArticleType.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@ArticleTitle", this.ArticleTitle.Text);
                        command.Parameters.AddWithValue("@ArticleBody", this.ArticleBody.Text);

                        command.Parameters.AddWithValue("@ImgLinkM", this.Picture1FileName_main);
                        command.Parameters.AddWithValue("@ImgLinkT", this.Picture1FileName_thumbnail);
                        command.Parameters.AddWithValue("@ImgLinkU", this.Picture1FileName_upload);
                        command.Parameters.AddWithValue("@TrimmerValue", JSONSerializer.SerializeToString(this.Picture1.Value));

                        command.Parameters.AddWithValue("@Id", Guid.Parse(RecordId)); 
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
                        command.CommandText = "INSERT INTO dbo.Article VALUES (NEWID(),@UserID,@ArticleName,@ArticleType,@ArticleTitle,@ArticleBody,@ImgLinkM,@ImgLinkT,@ImgLinkU,@TrimmerValue,1,GETDATE(),GETDATE())";
                        command.Parameters.AddWithValue("@UserID", UserID);
                        command.Parameters.AddWithValue("@ArticleName", this.ArticleName.Text);
                        command.Parameters.AddWithValue("@ArticleType", DropDownListArticleType.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@ArticleTitle", this.ArticleTitle.Text);
                        command.Parameters.AddWithValue("@ArticleBody", this.ArticleBody.Text);
                        command.Parameters.AddWithValue("@ImgLinkM", this.Picture1FileName_main);
                        command.Parameters.AddWithValue("@ImgLinkT", this.Picture1FileName_thumbnail);
                        command.Parameters.AddWithValue("@ImgLinkU", this.Picture1FileName_upload);
                        command.Parameters.AddWithValue("@TrimmerValue", JSONSerializer.SerializeToString(this.Picture1.Value));

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


        protected void btnSaveCat_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    command.CommandText = "INSERT INTO dbo.ArticleCatagory VALUES (@Id,@CatID,GETDATE())";
                    command.Parameters.AddWithValue("@Id", Guid.Parse(RecordId));
                    command.Parameters.AddWithValue("@CatID", DropDownListCatogory.SelectedValue.ToString());
                    command.ExecuteNonQuery();
                }
            }
        }








    }
}