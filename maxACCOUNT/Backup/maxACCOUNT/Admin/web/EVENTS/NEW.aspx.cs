using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace maxACCOUNT.Admin.web.EVENTS
{
    public partial class NEW : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            Display();
        }

        private void Display()
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                SqlCommand cmd = new SqlCommand("SELECT MenuID, MenuName FROM dbo.aspnet_PageMenu WHERE (MenuType = 'EVENT') ORDER BY MenuName ASC", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                SqlDataReader ddlValues;
                ddlValues = cmd.ExecuteReader();
                maxSlideCatDropDownList.DataSource = ddlValues;
                maxSlideCatDropDownList.DataValueField = "MenuID";
                maxSlideCatDropDownList.DataTextField = "MenuName";
                maxSlideCatDropDownList.DataBind();
                cmd.Connection.Close();
            }
        }

        protected void maxEventTypeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            UploadErrorLabel.Visible = false;
            if (maxEventTypeDropDownList.SelectedValue == "TEXT")
            {
                maxUploadEventData.Dispose();
                maxDataPanel.Visible = false;
            }
            else if (maxEventTypeDropDownList.SelectedValue == "IMAGE" || maxEventTypeDropDownList.SelectedValue == "VIDEO")
            {
                maxDataPanel.Visible = true;
            }
            else
            {
                maxDataPanel.Visible = true;
            }
        }

        protected String UploadEventDataExt(String extFileName)
        {
            String returnST = "";
            String allowedExtensions = Path.GetExtension(extFileName).ToLower();
            if (allowedExtensions == ".jpg" || allowedExtensions == ".png" || allowedExtensions == ".gif" || allowedExtensions == ".jpeg" || allowedExtensions == ".tif")
            {
                returnST = "IMAGE";
            }
            else if (allowedExtensions == ".mp4" || allowedExtensions == ".flv" || allowedExtensions == ".webm")
            {
                returnST = "VIDEO";
            }
            else
            {
                returnST = "UNKNOWN";
            }
            return returnST;
        }

        private Boolean DataValidate()
        {
            Boolean valiError = true;
            maxACCOUNT.config.Validation valClass = new maxACCOUNT.config.Validation();
            if (valClass.chexckMaxLength(26, 6, maxEventTitleTextBox.Text))
            {
                if (valClass.chexckMaxLength(500, 40, maxEventSubTextBox.Text))
                {
                    valiError = true;
                }
                else
                {
                    maxEventSubError.Text = "Event Text must be within 40 and 500 letters";
                    maxEventSubError.Visible = true;
                    valiError = false;
                }
            }
            else
            {
                maxEventTitleError.Text = "Event title must be within 6 and 26 letters";
                maxEventTitleError.Visible = true;
                valiError = false;
            }
            return valiError;
        }

        protected String saveDataBase(String EVENT_ID, String DATA_FILE_NAME, String SELET_TYPE, String CATOGORY_ID, String EVET_TITLE, String EVENT_SUB)
        {
            String ReturnSt = "";
            Guid EventID = new Guid(EVENT_ID);
            try
            {
                SqlCommand Eventcmd = new SqlCommand("INSERT INTO dbo.aspnet_PageEvent (EventID, EventType, EventTitle, EventSub, EventLink, EventDataName, Activiated, InsertedDate, ModifiedDate) VALUES (@EventID, @EventType, @EventTitle, @EventSub, @EventLink, @EventDataName, 0, getdate(), getdate())", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                Eventcmd.Parameters.Add("@EventID", SqlDbType.UniqueIdentifier).Value = EventID;
                Eventcmd.Parameters.Add("@EventType", SqlDbType.VarChar).Value = SELET_TYPE;
                Eventcmd.Parameters.Add("@EventTitle", SqlDbType.VarChar).Value = EVET_TITLE;
                Eventcmd.Parameters.Add("@EventSub", SqlDbType.VarChar).Value = EVENT_SUB;
                Eventcmd.Parameters.Add("@EventLink", SqlDbType.VarChar).Value = "MAX-DATA/EVENT/" + EVENT_ID + "/" + DATA_FILE_NAME;
                Eventcmd.Parameters.Add("@EventDataName", SqlDbType.VarChar).Value = DATA_FILE_NAME;

                Eventcmd.Connection.Open();
                Eventcmd.ExecuteNonQuery();
                Eventcmd.Connection.Close();

                maxACCOUNT.Config.maxConnection GetID = new maxACCOUNT.Config.maxConnection();
                SqlCommand cmd = new SqlCommand("INSERT INTO dbo.aspnet_PageEventView (EventID, UserID, MenuID, EventViewInTop, Activiated, InsertedDate, ModifiedDate) VALUES (@EventID, @UserID, @MenuID, 0, 0, getdate(), getdate())", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));

                cmd.Parameters.Add("@EventID", SqlDbType.UniqueIdentifier).Value = EventID;
                cmd.Parameters.Add("@UserID", SqlDbType.VarChar).Value = GetID.GetUserID();
                cmd.Parameters.Add("@MenuID", SqlDbType.VarChar).Value = CATOGORY_ID;

                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                ReturnSt = "";
            }
            catch (Exception ex)
            {
                ReturnSt = ex.Message.ToString();
            }
            return ReturnSt;
        }

        protected void saveEventData()
        {
            maxEventTitleError.Visible = false;
            maxEventSubError.Visible = false;

            if (DataValidate())
            {
                String error = "";
                UploadErrorLabel.Visible = false;
                maxACCOUNT.config.Validation EventIDCode = new maxACCOUNT.config.Validation();
                String EventCode = EventIDCode.generateID();

                if (maxUploadEventData.HasFile && maxUploadEventData.PostedFile != null && maxUploadEventData.PostedFile.FileName != "")
                {
                    if (maxEventTypeDropDownList.SelectedValue == "IMAGE")
                    {
                        if (UploadEventDataExt(maxUploadEventData.FileName) == "IMAGE")
                        {
                            String location = Server.MapPath("../../../MAX-DATA/EVENT/" + EventCode);
                            if (!Directory.Exists(location))
                            {
                                Directory.CreateDirectory(location);
                            }
                            maxUploadEventData.PostedFile.SaveAs(location + "/" + EventCode + ".jpg");
                            error = saveDataBase(EventCode, EventCode + ".jpg", "IMAGE", maxSlideCatDropDownList.SelectedValue, maxEventTitleTextBox.Text, maxEventSubTextBox.Text);
                        }
                        else
                        {
                            UploadErrorLabel.Visible = true;
                            UploadErrorLabel.Text = "Image file format is incorrect.";
                        }
                    }
                    else if (maxEventTypeDropDownList.SelectedValue == "VIDEO")
                    {
                        if (UploadEventDataExt(maxUploadEventData.FileName) == "VIDEO")
                        {
                            String location = Server.MapPath("../../../MAX-DATA/EVENT/" + EventCode);
                            if (!Directory.Exists(location))
                            {
                                Directory.CreateDirectory(location);
                            }
                            maxUploadEventData.PostedFile.SaveAs(location + "/" + EventCode + ".mp4");
                            error = saveDataBase(EventCode, EventCode + ".mp4", "VIDEO", maxSlideCatDropDownList.SelectedValue, maxEventTitleTextBox.Text, maxEventSubTextBox.Text);
                        }
                        else
                        {
                            UploadErrorLabel.Visible = true;
                            UploadErrorLabel.Text = "Video file format is incorrect. (MP4) ";
                        }

                    }
                    else if (maxEventTypeDropDownList.SelectedValue == "TEXT")
                    {
                        UploadErrorLabel.Visible = true;
                        UploadErrorLabel.Text = "You have uploaded '" + UploadEventDataExt(maxUploadEventData.FileName) + "' file.";
                    }
                }
                else 
                {
                    if (maxEventTypeDropDownList.SelectedValue == "IMAGE")
                    {
                        UploadErrorLabel.Visible = true;
                        UploadErrorLabel.Text = "Sorry, You have not uploaded the image file.";
                    }
                    else if (maxEventTypeDropDownList.SelectedValue == "VIDEO")
                    {
                        UploadErrorLabel.Visible = true;
                        UploadErrorLabel.Text = "Sorry, You have not uploaded the video file.";
                    }
                    else if (maxEventTypeDropDownList.SelectedValue == "TEXT")
                    {
                        String location = Server.MapPath("../../../MAX-DATA/EVENT/" + EventCode);
                        if (!Directory.Exists(location))
                        {
                            Directory.CreateDirectory(location);
                        }
                        error = saveDataBase(EventCode, "", "TEXT", maxSlideCatDropDownList.SelectedValue, maxEventTitleTextBox.Text, maxEventSubTextBox.Text);
                    }
                    else
                    {
                        UploadErrorLabel.Visible = true;
                        UploadErrorLabel.Text = "Sorry, We can not process the data files.";
                    }
                }
                if (error == "") {

                    Response.Redirect("Default.aspx");
                
                
                }
                else{
                    UploadErrorLabel.Visible = true;
                    UploadErrorLabel.Text = "Sorry, DataBase Error.";
                }
            }
        }

        protected void maxSaveEvent_Click(object sender, EventArgs e)
        {
            saveEventData();
        }
    }
}