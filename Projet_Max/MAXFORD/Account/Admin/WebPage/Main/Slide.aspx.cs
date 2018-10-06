using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAXFORD.Account.Admin.WebPage.Main
{
    public partial class Slide : System.Web.UI.Page
    {
        protected void EditRecord(string id)
        {
            Response.Redirect("EditSlide.aspx?SlideID=" + id.ToString(), true);
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            string id = (string)this.GridView1.DataKeys[e.NewEditIndex].Value.ToString();
            this.EditRecord(id);
        }
    }
}