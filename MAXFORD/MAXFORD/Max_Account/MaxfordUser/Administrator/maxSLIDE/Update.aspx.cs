using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MAXFORD.Max_Account.MaxfordUser.Administrator.maxSLIDE
{
    public partial class Update : System.Web.UI.Page
    {  


        protected void Page_Init()
        {
            MAXFORD.Max_Account.MaxfordUser.MaxConfig.maxView viewToUpdate = new MAXFORD.Max_Account.MaxfordUser.MaxConfig.maxView();
            string SID = Request.QueryString["SlideID"];
            string commandString = "SELECT SlideLink,SlideTitle,SlideReadMe,SlideTitleSub,SlideBodyMain,SlideBodySub,SlideTheamColorOne,SlideTheamColorTwo,SlideDiscripition FROM dbo.MAX_PAGE_Slide WHERE SlideID = '" + SID + "'";
            if (SID != null)
            {
                try
                {
                    DataTable dtble = new DataTable();
                    dtble = viewToUpdate.MaxViewData(commandString).Tables["MAXFORD"];
                    foreach (DataRow dr in dtble.Rows)
                    {
                        maxPictLabel.Text = "<img src='" + dr["SlideLink"].ToString() + "' style='width:100%;' />";
                        maxSlideTitleLabelTextBox.Text = dr["SlideTitle"].ToString();
                        maxSlideReadMeTextBox.Text = dr["SlideReadMe"].ToString();
                        SlideTitleSubTextBox.Text = dr["SlideTitleSub"].ToString();
                        editor1.InnerHtml = dr["SlideBodyMain"].ToString();
                        maxSlideBodySubTextBox.Text = dr["SlideBodySub"].ToString();
                        maxTheamLabelOne.Text = "<div style='display:block; width:18px; height:18px; " + dr["SlideTheamColorOne"].ToString() + "'></div>";
                        maxTheamLabelTwo.Text = "<div style='display:block; width:18px; height:18px; " + dr["SlideTheamColorTwo"].ToString() + "'></div>";
                        maxSlideDiscripitionTextBox.Text = dr["SlideDiscripition"].ToString();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('SQL VIEW ERROR : " + ex.ToString() + "')</script>");
                }
            }
            else
            { Response.Write("<script>alert('Sorry Page Was Not Found.')</script>"); }
        }





        protected void slideInsertButton_Click(object sender, EventArgs e)
        {
            String UserName = System.Web.HttpContext.Current.User.Identity.Name;
            HttpCookie RMaxCookie = new HttpCookie(UserName);
            RMaxCookie = Request.Cookies[UserName];
            if (DataValidate())
            {
                if (RMaxCookie != null)
                {
                    try
                    {
                        string SID = Request.QueryString["SlideID"];
                        string userID = RMaxCookie.Value.ToString();
                        string testT = HttpContext.Current.Server.HtmlEncode(editor1.InnerText).ToString();

                        string connetionString = null;
                        SqlConnection cnn;
                        connetionString = "Data Source=YELLOW.mysitehosted.com;Initial Catalog=ZionxMaxDatabaseNet16;User ID=maxDBAdmin;Password=maxDBAdmin123!@";
                        cnn = new SqlConnection(connetionString);
                        cnn.Open();
                        SqlCommand MaxCommand = new SqlCommand();
                        MaxCommand.Connection = cnn;
                        MaxCommand.CommandText = "dbo.SP_MAX_PAGE_SLIDE_UPDATE";

                        MaxCommand.CommandType = CommandType.StoredProcedure;
                        MaxCommand.Parameters.AddWithValue("@UserID", userID);
                        MaxCommand.Parameters.AddWithValue("@SlideID", SID);
                        MaxCommand.Parameters.AddWithValue("@SlideTitle", maxSlideTitleLabelTextBox.Text);
                        MaxCommand.Parameters.AddWithValue("@SlideReadMe", maxSlideReadMeTextBox.Text);
                        MaxCommand.Parameters.AddWithValue("@SlideTitleSub", SlideTitleSubTextBox.Text);
                        MaxCommand.Parameters.AddWithValue("@SlideBodyMain", HttpContext.Current.Server.HtmlDecode(testT));
                        MaxCommand.Parameters.AddWithValue("@SlideBodySub", maxSlideBodySubTextBox.Text);
                        MaxCommand.Parameters.AddWithValue("@SlideTheamColorOne", maxSlideTheamColorOneListBox.SelectedValue.ToString());
                        MaxCommand.Parameters.AddWithValue("@SlideTheamColorTwo", maxSlideTheamColorTwoListBox.SelectedValue.ToString());
                        MaxCommand.Parameters.AddWithValue("@SlideDiscripition", maxSlideDiscripitionTextBox.Text);
                        MaxCommand.ExecuteNonQuery();
                        Response.Write("<script>alert('Data Inserted Successfully')</script>");
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('SQL INSERT ERROR : " + ex.ToString() + "')</script>");
                    }
                }
            }
            else 
            {}
        }






        private Boolean DataValidate()
        {
            Boolean error = true;
            MAXFORD.Max_Data.Max_Validation.validate valClass = new Max_Data.Max_Validation.validate();
            if (valClass.chexckMaxLength(50, 15, maxSlideTitleLabelTextBox.Text))
            {
                if (valClass.chexckMaxLength(80, 40, maxSlideReadMeTextBox.Text))
                {
                    error = true;
                }
                else
                {
                    Response.Write("<script>alert('Slide Read Me must be within 40 and 80 letters')</script>");
                    error = false;
                }
            }
            else
            {
                Response.Write("<script>alert('Slide Title must be within 15 and 50 letters')</script>");
                error = false;
            }
            return error;
        }



    }
}