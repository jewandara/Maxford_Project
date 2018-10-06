using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxACCOUNT
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Init()
        {
            Response.Redirect("login.aspx");
        }
    }
}