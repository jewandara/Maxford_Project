using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD.Account.Student.Articals
{
    public partial class Default : System.Web.UI.Page
    {

        private SqlDataSource SqlDataSource1 = new SqlDataSource();

        protected void Page_Load(object sender, EventArgs e)
        {
            Display();
        }

        protected void Display()
        {
            string UserName = System.Web.HttpContext.Current.User.Identity.Name;
            SqlDataSource1.ID = "SqlDataSource1";
            this.Page.Controls.Add(SqlDataSource1);
            SqlDataSource1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlDataSource1.SelectCommand = "SELECT * FROM [dbo].[Article]";
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }

        protected void EditRecord(string id)
        {
            Response.Redirect("Edit.aspx?ArticleID=" + id, true);
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            this.EditRecord("");
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            string id = this.GridView1.DataKeys[e.NewEditIndex].Value.ToString();
            this.EditRecord(id);
        }

        protected void AccessDataSource1_Deleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = (string)GridView1.DataKeys[e.RowIndex].Value;
            Response.Redirect("Delete.aspx?ArticleID=" + id, true);
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
        }

        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            switch (e.SortExpression)
            {
                case "ArticleID":
                    if (e.SortDirection == SortDirection.Ascending)
                    {
                        GridView1.DataSource = SqlDataSource1;
                        GridView1.DataBind();
                    }
                    else
                    {
                        GridView1.DataSource = SqlDataSource1;
                        GridView1.DataBind();
                    }
                    break;
            }
        }

    }
}