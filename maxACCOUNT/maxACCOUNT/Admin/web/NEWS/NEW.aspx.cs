using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace maxACCOUNT.Admin.web.NEWS
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
                maxNewsCatDropDownList.DataSource = ddlValues;
                maxNewsCatDropDownList.DataValueField = "MenuID";
                maxNewsCatDropDownList.DataTextField = "MenuName";
                maxNewsCatDropDownList.DataBind();
                cmd.Connection.Close();
            }
        }

        private Boolean DataValidate()
        {
            Boolean valiError = true;
            maxACCOUNT.config.Validation valClass = new maxACCOUNT.config.Validation();
            if (valClass.chexckMaxLength(70, 8, maxNewsTitleTextBox.Text))
            {
                if (valClass.chexckMaxLength(500, 20, maxNewsSubTextBox.Text))
                {
                    valiError = true;
                }
                else
                {
                    maxNewsSubError.Text = "News Text must be within 20 and 500 letters";
                    maxNewsSubError.Visible = true;
                    valiError = false;
                }
            }
            else
            {
                maxNewsTitleError.Text = "News title must be within 70 and 8 letters";
                maxNewsTitleError.Visible = true;
                valiError = false;
            }
            return valiError;
        }

        protected void maxSaveNews_Click(object sender, EventArgs e)
        {
            maxNewsSubError.Visible = false;
            maxNewsTitleError.Visible = false;
            sqlErrorLabel.Visible = false;
            if (DataValidate())
            {
                maxACCOUNT.config.Validation NewsIDCode = new maxACCOUNT.config.Validation();
                String NewsCode = NewsIDCode.generateID();
                String location = Server.MapPath("../../../MAX-DATA/EVENT/" + NewsCode);
                if (!Directory.Exists(location))
                {
                    Directory.CreateDirectory(location);
                }
                Guid NewsID = new Guid(NewsCode);
                try
                {
                    maxACCOUNT.Config.maxConnection GetID = new maxACCOUNT.Config.maxConnection();
                    SqlCommand Eventcmd = new SqlCommand("INSERT INTO dbo.aspnet_PageNews (NewsID, UserID, MenuID, NewsTitle, NewsSub, NewsBody, Activiated, InsertedDate, ModifiedDate) VALUES (@NewsID, @UserID, @MenuID, @NewsTitle, @NewsSub, @NewsBody, 1, getdate(), getdate())", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                    Eventcmd.Parameters.Add("@NewsID", SqlDbType.UniqueIdentifier).Value = NewsID;
                    Eventcmd.Parameters.Add("@UserID", SqlDbType.VarChar).Value = GetID.GetUserID();
                    Eventcmd.Parameters.Add("@MenuID", SqlDbType.VarChar).Value = maxNewsCatDropDownList.SelectedValue;
                    Eventcmd.Parameters.Add("@NewsTitle", SqlDbType.VarChar).Value = maxNewsTitleTextBox.Text;
                    Eventcmd.Parameters.Add("@NewsSub", SqlDbType.VarChar).Value = maxNewsSubTextBox.Text;
                    Eventcmd.Parameters.Add("@NewsBody", SqlDbType.VarChar).Value = maxNewsSubTextBox.Text;

                    Eventcmd.Connection.Open();
                    Eventcmd.ExecuteNonQuery();
                    Eventcmd.Connection.Close();
                }
                catch (Exception ex)
                {
                    sqlErrorLabel.Visible = true;
                    sqlErrorLabel.Text = ex.Message.ToString();
                }
            }
        }







    }
}