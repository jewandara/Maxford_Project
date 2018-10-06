using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAXFORD.Account.Admin.WebPage.Pages
{
    public partial class Default : System.Web.UI.Page
    {
        protected void EditRecord(int id)
        {
            Response.Redirect("EditSlide.aspx?SlideID=" + id.ToString(), true);
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int id = (int)this.GridView1.DataKeys[e.NewEditIndex].Value;
            this.EditRecord(id);
        }
    }
}