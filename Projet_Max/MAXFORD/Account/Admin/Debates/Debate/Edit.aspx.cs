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

namespace MAXFORD.Account.Admin.Debates.Debate
{
    public partial class Edit : System.Web.UI.Page
    {



        protected void Page_Init(object sender, EventArgs e)
        {
            Display();
        }

        protected void Page_Load(object sender, EventArgs e)
        {      
            if (this.ScriptManager1.IsInAsyncPostBack) { ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "initializeUI", "initializeUI();", true); }
            if (!this.IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request.QueryString["DebateID"])){ this.RecordId = int.Parse(Request.QueryString["DebateID"]);}
                this.Picture1.CropConstraint = new FixedCropConstraint(600, 300);
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
                            command.CommandText = "SELECT *,DATEPART(DD, DebateDate) AS 'DD',DATEPART(MM, DebateDate) AS 'MM',DATEPART(YY, DebateDate) AS 'YY', DATEPART(HOUR,DebateTime) AS 'HH', DATEPART(MINUTE,DebateTime) AS 'MINIT', (CASE WHEN DATEPART(HOUR, DebateTime) > 12 THEN 'PM' ELSE 'AM' END) AS 'TT' FROM dbo.Debate WHERE DebateID = @Id";
                            command.Parameters.AddWithValue("@Id", this.RecordId);

                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                if (reader.Read())
                                {
                                    DropDownListDate.SelectedValue = Convert.ToString(reader["DD"]);
                                    DropDownListMonth.SelectedValue = Convert.ToString(reader["MM"]);
                                    DropDownListYear.SelectedValue = Convert.ToString(reader["YY"]);

                                    DropDownListDebateHour.SelectedValue = Convert.ToString(reader["HH"]);
                                    DropDownListDebateMinit.SelectedValue = Convert.ToString(reader["MINIT"]);
                                    DropDownListDebateTime.SelectedValue = Convert.ToString(reader["TT"]);

                                    this.DebateTopic.Text = Convert.ToString(reader["DebateTopic"]);
                                    this.DebateLocation.Text = Convert.ToString(reader["DebateLocation"]);
                                    this.DebateTolkingMetheds.Text = Convert.ToString(reader["DebateTolkingMetheds"]);
                                    this.DebateBody.Text = Convert.ToString(reader["DebateBody"]);

                                    PictureTrimmerValue picture1Value = PictureTrimmerValue.FromJSON(Convert.ToString(reader["DebateImageTrimmerValue"]));
                                    this.Picture1FileName_upload = Convert.ToString(reader["DebateImageUpload"]);
                                    this.Picture1FileName_main = Convert.ToString(reader["DebateImageMain"]);
                                    this.Picture1FileName_thumbnail = Convert.ToString(reader["DebateImageThumbnail"]);

                                    this.Activiated.Text = Convert.ToString(reader["Activiated"]);
                                    this.InsertedDate.Text = Convert.ToString(reader["InsertedDate"]);
                                    this.ModifiedDate.Text = Convert.ToString(reader["ModifiedDate"]);

                                    if (!string.IsNullOrEmpty(this.Picture1FileName_upload))
                                    {
                                        // Load the image into the SimpleImageUpload ASCX control
                                        string picture1FilePath_upload = System.IO.Path.Combine(Server.MapPath("~/store/Debates/upload/"), this.Picture1FileName_upload);
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
                    this.labelRecordId.Text = "New Debate Details";
                    this.Panel1.Visible = false;
                }
                #endregion
            }
            this.UpdateProgress1.AssociatedUpdatePanelID = this.UpdatePanel1.UniqueID;
        }

        public void Display()
        {
            DropDownListDate.Dispose();
            DropDownListMonth.Dispose();
            DropDownListYear.Dispose();

            DropDownListDebateHour.Dispose();
            DropDownListDebateMinit.Dispose();
            DropDownListDebateTime.Dispose();

            int yearNow = Int32.Parse(DateTime.Now.Year.ToString());

            DropDownListDate.SelectedIndex = 1;
            for (int i = 1; i < 32; i++)
            {
                DropDownListDate.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
            }

            //VIEW MONTH
            DropDownListMonth.SelectedIndex = 1;
            DropDownListMonth.Items.Add(new ListItem("January", "1", true));
            DropDownListMonth.Items.Add(new ListItem("February", "2", true));
            DropDownListMonth.Items.Add(new ListItem("March", "3", true));
            DropDownListMonth.Items.Add(new ListItem("April", "4", true));
            DropDownListMonth.Items.Add(new ListItem("May", "5", true));
            DropDownListMonth.Items.Add(new ListItem("June", "6", true));
            DropDownListMonth.Items.Add(new ListItem("July", "7", true));
            DropDownListMonth.Items.Add(new ListItem("August", "8", true));
            DropDownListMonth.Items.Add(new ListItem("September", "9", true));
            DropDownListMonth.Items.Add(new ListItem("October", "10", true));
            DropDownListMonth.Items.Add(new ListItem("November", "11", true));
            DropDownListMonth.Items.Add(new ListItem("December", "12", true));


            //VIEW YEAR
            DropDownListYear.SelectedIndex = yearNow;
            for (int i = yearNow + 10; i > yearNow - 25; i--)
            {
                DropDownListYear.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
            }



            //VIEW HOUR
            DropDownListDebateHour.SelectedIndex = 12;
            for (int i = 0; i < 13; i++)
            {
                DropDownListDebateHour.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
            }

            //VIEW HOUR
            DropDownListDebateMinit.SelectedIndex = 12;
            for (int i = 0; i < 61; i++)
            {
                DropDownListDebateMinit.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
            }

            //VIEW HOUR
            DropDownListDebateTime.SelectedValue = "PM";
            DropDownListDebateTime.Items.Add(new ListItem("PM", "PM", true));
            DropDownListDebateTime.Items.Add(new ListItem("AM", "AM", true));

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

            if (!this.IsValid) { return; }

            #region Manage the image files

            #region Delete the previous image files
            if (this.RecordId != 0)
            {
                if ((!this.Picture1.HasImage) || (this.Picture1.HasNewImage))
                {
                    if (!string.IsNullOrEmpty(this.Picture1FileName_upload))
                    {
                        string picture1FilePath_upload = System.IO.Path.Combine(Server.MapPath("~/store/Debates/upload/"), this.Picture1FileName_upload);
                        if (System.IO.File.Exists(picture1FilePath_upload))
                        { System.IO.File.Delete(picture1FilePath_upload); }
                        this.Picture1FileName_upload = "";
                        string picture1FilePath_main = System.IO.Path.Combine(Server.MapPath("~/store/Debates/main/"), this.Picture1FileName_main);
                        if (System.IO.File.Exists(picture1FilePath_main))
                        { System.IO.File.Delete(picture1FilePath_main); }
                        this.Picture1FileName_main = "";
                        string picture1FilePath_thumbnail = System.IO.Path.Combine(Server.MapPath("~/store/Debates/thumbnail/"), this.Picture1FileName_thumbnail);
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
                string picture1folderPath_upload = Server.MapPath("~/store/Debates/upload/");
                this.Picture1FileName_upload = CodeCarvings.Piczard.Helpers.IOHelper.GetUniqueFileName(picture1folderPath_upload, this.Picture1.SourceImageClientFileName);
                string picture1FilePath_upload = System.IO.Path.Combine(picture1folderPath_upload, this.Picture1FileName_upload);
                System.IO.File.Copy(this.Picture1.TemporarySourceImageFilePath, picture1FilePath_upload, true);
                string picture1folderPath_main = Server.MapPath("~/store/Debates/main/");
                this.Picture1FileName_main = CodeCarvings.Piczard.Helpers.IOHelper.GetUniqueFileName(picture1folderPath_main, System.IO.Path.GetFileNameWithoutExtension(this.Picture1.SourceImageClientFileName) + ImageArchiver.GetFileExtensionFromImageFormatId(System.Drawing.Imaging.ImageFormat.Jpeg.Guid));
                string picture1FilePath_main = System.IO.Path.Combine(picture1folderPath_main, this.Picture1FileName_main);
                this.Picture1.SaveProcessedImageToFileSystem(picture1FilePath_main);
                string picture1folderPath_thumbnail = Server.MapPath("~/store/Debates/thumbnail/");
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
                        command.CommandText = "UPDATE dbo.Debate SET DebateTopic=@DebateTopic,DebateDate=@DebateDate,DebateTime=@DebateTime,DebateLocation=@DebateLocation,DebateTolkingMetheds=@DebateTolkingMetheds,DebateImageMain=@ImgLinkM,DebateImageThumbnail=@ImgLinkT,DebateImageUpload=@ImgLinkU,DebateImageTrimmerValue=@TrimmerValue,DebateBody=@Body,Activiated=1,ModifiedDate=GETDATE() WHERE DebateID=@Id";

                        command.Parameters.AddWithValue("@DebateTopic", this.DebateTopic.Text);
                        command.Parameters.AddWithValue("@DebateDate", DropDownListMonth.SelectedValue.ToString() + "/" + DropDownListDate.SelectedValue.ToString() + "/" + DropDownListYear.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@DebateTime", DropDownListDebateHour.SelectedValue.ToString() + ":" + DropDownListDebateMinit.SelectedValue.ToString() + ":00" + DropDownListDebateTime.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@DebateLocation", this.DebateLocation.Text);
                        command.Parameters.AddWithValue("@DebateTolkingMetheds", this.DebateTolkingMetheds.Text);
                        command.Parameters.AddWithValue("@ImgLinkM", this.Picture1FileName_main);
                        command.Parameters.AddWithValue("@ImgLinkT", this.Picture1FileName_thumbnail);
                        command.Parameters.AddWithValue("@ImgLinkU", this.Picture1FileName_upload);
                        command.Parameters.AddWithValue("@TrimmerValue", JSONSerializer.SerializeToString(this.Picture1.Value));
                        command.Parameters.AddWithValue("@Body", this.DebateBody.Text);

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
                        command.CommandText = "INSERT INTO dbo.Debate VALUES (@DebateDate,@DebateTime,@DebateTopic,@DebateLocation,@DebateTolkingMetheds,@DebateBody,0,@ImgLinkM,@ImgLinkT,@ImgLinkU,@TrimmerValue,1,GETDATE(),GETDATE())";
                        command.Parameters.AddWithValue("@DebateTopic", this.DebateTopic.Text);
                        command.Parameters.AddWithValue("@DebateDate", DropDownListMonth.SelectedValue.ToString() + "/" + DropDownListDate.SelectedValue.ToString() + "/" + DropDownListYear.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@DebateTime", DropDownListDebateHour.SelectedValue.ToString() + ":" + DropDownListDebateMinit.SelectedValue.ToString() + ":00" + DropDownListDebateTime.SelectedValue.ToString());
                        command.Parameters.AddWithValue("@DebateLocation", this.DebateLocation.Text);
                        command.Parameters.AddWithValue("@DebateTolkingMetheds", this.DebateTolkingMetheds.Text);
                        command.Parameters.AddWithValue("@ImgLinkM", this.Picture1FileName_main);
                        command.Parameters.AddWithValue("@ImgLinkT", this.Picture1FileName_thumbnail);
                        command.Parameters.AddWithValue("@ImgLinkU", this.Picture1FileName_upload);
                        command.Parameters.AddWithValue("@TrimmerValue", JSONSerializer.SerializeToString(this.Picture1.Value));
                        command.Parameters.AddWithValue("@DebateBody", this.DebateBody.Text);

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