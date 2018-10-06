using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD.Account.Teacher.Class
{
    public partial class Classes : System.Web.UI.Page
    {        
               
 

        private SqlDataSource SqlDataSource1 = new SqlDataSource();

        protected void EditRecord(int id)
        {
            Response.Redirect("Edit.aspx?ClassID=" + id.ToString(), true);
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int id = (int)this.GridView1.DataKeys[e.NewEditIndex].Value;
            this.EditRecord(id);
        }

        protected void AccessDataSource1_Deleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = (int)GridView1.DataKeys[e.RowIndex].Value;
            Response.Redirect("Delete.aspx?ClassID=" + id.ToString(), true);
        }



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
            SqlDataSource1.SelectCommand = "SELECT * FROM dbo.vw_maxford_Classes WHERE UserName = '" + UserName + "'";
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
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




        protected void PRIMARY_Click(object sender, EventArgs e)
        {
            Response.Redirect("Edit.aspx?ClassID=0&ClassCatogory=PRIMARY", true);
        }

        protected void SECOUNDARY_Click(object sender, EventArgs e)
        {
            Response.Redirect("Edit.aspx?ClassID=0&ClassCatogory=SECOUNDARY", true);
        }

        protected void ORDINARY_Click(object sender, EventArgs e)
        {
            Response.Redirect("Edit.aspx?ClassID=0&ClassCatogory=ORDINARY", true);
        }

        protected void ADVANCED_Click(object sender, EventArgs e)
        {
            Response.Redirect("Edit.aspx?ClassID=0&ClassCatogory=ADVANCED", true);
        }




    }
}