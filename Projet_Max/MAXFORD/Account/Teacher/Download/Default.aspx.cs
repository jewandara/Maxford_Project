using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAXFORD.Account.Config.DataConnection;


namespace MAXFORD.Account.Teacher.Download
{
    public partial class Default : System.Web.UI.Page
    {

        protected void EditRecord(int id)
        {
            Response.Redirect("Edit.aspx?DebateID=" + id.ToString(), true);
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            this.EditRecord(0);
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


    }
}