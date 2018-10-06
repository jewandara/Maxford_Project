using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MAXFORD.Max_Account.MaxfordUser.MaxConfig
{
    public partial class maxMenuSide : System.Web.UI.UserControl
    {
        private void CreateMenu()
        {
            String UserName = System.Web.HttpContext.Current.User.Identity.Name;
            String AccessCode = "";
            HttpCookie RMaxCookie = new HttpCookie(UserName);
            RMaxCookie = Request.Cookies[UserName];

            if (RMaxCookie != null)
            {
                MAXFORD.Max_Account.MaxfordUser.MaxConfig.UserCookies CookClass = new MAXFORD.Max_Account.MaxfordUser.MaxConfig.UserCookies();
                foreach (DataRow dr in CookClass.GetMenu(RMaxCookie.Value).Rows)
                {
                    AccessCode = AccessCode + "<li><div class='max_side_menu_bar maxIconDashboard'><a href=http://www.maxford.lk/Max_Account/MaxfordUser/Administrator/max" + dr["MENU_DATA"].ToString() + "/Default.aspx>" + dr["MENU_DATA"].ToString() + "</a></div></li>";
                }
                maxAdminBaseMenu.Text = AccessCode;
            }
            else
            {
                maxAdminBaseMenu.Text = "Unauthorized Access";
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            CreateMenu();
        }
    }
}