using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace MAXFORD.Max_Account.MaxfordUser.Administrator.maxSlide
{
    public partial class maxSlideAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void slideInsertButton_Click(object sender, EventArgs e)
        {
            if (DataValidate())
            {
                if (maxSlideLinkUpload.HasFile && maxSlidePictureLinkUpload.HasFile)
                {
                    maxSlideLinkUpload.PostedFile.SaveAs(Server.MapPath("~/Max_Data/Max_Slide/") + maxSlideLinkUpload.FileName);
                    maxSlidePictureLinkUpload.PostedFile.SaveAs(Server.MapPath("~/Max_Data/Max_Slide/LinkTwo/") + maxSlidePictureLinkUpload.FileName);

                    String UserName = System.Web.HttpContext.Current.User.Identity.Name;
                    HttpCookie RMaxCookie = new HttpCookie(UserName);
                    RMaxCookie = Request.Cookies[UserName];

                    if (RMaxCookie != null)
                    {
                        string userID = RMaxCookie.Value.ToString();
                        string testT = Server.HtmlEncode(editor1.InnerText);
                        string connetionString = null;
                        SqlConnection cnn;
                        connetionString = "Data Source=YELLOW.mysitehosted.com;Initial Catalog=ZionxMaxDatabaseNet16;User ID=maxDBAdmin;Password=maxDBAdmin123!@";
                        cnn = new SqlConnection(connetionString);

                        try
                        {
                            cnn.Open();
                            SqlCommand MaxCommand = new SqlCommand();
                            MaxCommand.Connection = cnn;
                            MaxCommand.CommandText = "dbo.SP_MAX_PAGE_SLIDE_INSERT";

                            MaxCommand.CommandType = CommandType.StoredProcedure;
                            MaxCommand.Parameters.AddWithValue("@UserID", userID);
                            MaxCommand.Parameters.AddWithValue("@SlideTitle", maxSlideTitleLabelTextBox.Text);
                            MaxCommand.Parameters.AddWithValue("@SlideReadMe", maxSlideReadMeTextBox.Text);
                            MaxCommand.Parameters.AddWithValue("@SlideTitleSub", SlideTitleSubTextBox.Text);
                            MaxCommand.Parameters.AddWithValue("@SlideBodyMain", Server.HtmlDecode(testT));
                            MaxCommand.Parameters.AddWithValue("@SlideBodySub", maxSlideBodySubTextBox.Text);
                            MaxCommand.Parameters.AddWithValue("@SlideLink", "http://www.maxford.lk/Max_Data/Max_Slide/" + maxSlideLinkUpload.FileName.ToString());
                            MaxCommand.Parameters.AddWithValue("@SlidePictureLink", "http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/" + maxSlidePictureLinkUpload.FileName.ToString());
                            MaxCommand.Parameters.AddWithValue("@SlideTheamColorOne", maxSlideTheamColorOneListBox.SelectedValue.ToString());
                            MaxCommand.Parameters.AddWithValue("@SlideTheamColorTwo", maxSlideTheamColorTwoListBox.SelectedValue.ToString());
                            MaxCommand.Parameters.AddWithValue("@SlideDiscripition", maxSlideDiscripitionTextBox.Text);
                            MaxCommand.ExecuteNonQuery();
                            Response.Write("<script>alert('Data Inserted Successfully')</script>");

                        }
                        catch (Exception ex) {
                            Response.Write("<script>alert('SQL ERROR : " + ex.ToString() + "')</script>");
                        }
                    }
                    else{
                        Response.Write("<script>alert('Could Not Find Your User Name, Log again')</script>");
                    }
                }
                else{
                    Response.Write("<script>alert('Could Not Find the Picture')</script>");
                }
            }
            else {}
        }






        private Boolean DataValidate()
        {
            Boolean error = true;
                MAXFORD.Max_Data.Max_Validation.validate valClass = new Max_Data.Max_Validation.validate();
                if (valClass.chexckMaxLength(50, 15, maxSlideTitleLabelTextBox.Text)){
                    if (valClass.chexckMaxLength(80, 40, maxSlideReadMeTextBox.Text)){
                        error = true;
                    }
                    else {
                        Response.Write("<script>alert('Slide Read Me must be within 40 and 80 letters')</script>");
                        error = false;
                    }
                }
                else {
                    Response.Write("<script>alert('Slide Title must be within 15 and 50 letters')</script>");
                    error = false; 
                }
                return error;
        }








    }
}