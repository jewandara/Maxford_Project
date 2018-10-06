using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD.Account.Admin.Database.Teacher
{
    public partial class Default : System.Web.UI.Page
    {

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("New.aspx", true);
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            String id = this.GridView1.DataKeys[e.NewEditIndex].Value.ToString(); ;
            Response.Redirect("Edit.aspx?UserID=" + id, true);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            String id = this.GridView1.DataKeys[e.RowIndex].Value.ToString();
            Response.Redirect("Delete.aspx?UserID=" + id, true);
        }

    }
}