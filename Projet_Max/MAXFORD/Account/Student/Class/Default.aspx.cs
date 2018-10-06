using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD.Account.Student.Class
{
    public partial class Default : System.Web.UI.Page
    {

        private SqlDataSource SqlDataSource1 = new SqlDataSource();

        protected void Page_Load(object sender, EventArgs e)
        {
            string UserName = System.Web.HttpContext.Current.User.Identity.Name;
            SqlDataSource1.ID = "SqlDataSource1";
            this.Page.Controls.Add(SqlDataSource1);
            SqlDataSource1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlDataSource1.SelectCommand = "SELECT RE.ClassID AS 'ClassID', RE.State AS 'ClassState', CL.ClassName + ' - FROM ' + CONVERT(VARCHAR(8), CL.ClassStartTime,100) + ' TO ' + CONVERT(VARCHAR(8), CL.ClassEndTime,100) + ' AT ' + CL.ClassDate AS 'Class' FROM [dbo].[ResetClass] AS RE, [dbo].[Class] AS CL WHERE RE.ClassID = CL.ClassID AND RE.StudentID = (SELECT UserId FROM [dbo].[Users] WHERE UserName = '" + System.Web.HttpContext.Current.User.Identity.Name + "')";
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }




        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            string id = this.GridView1.DataKeys[e.NewEditIndex].Value.ToString();
            Response.Redirect("Edit.aspx?ClassID=" + id, true);
        }



        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
        }

        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            switch (e.SortExpression)
            {
                case "ClassID":
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