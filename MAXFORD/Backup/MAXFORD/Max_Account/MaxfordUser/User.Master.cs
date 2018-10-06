using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MAXFORD.Max_Account.MaxfordUser
{  
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Init()
        {
            CreateCookie();
        }

        private void CreateCookie()
        {
            String UserName = System.Web.HttpContext.Current.User.Identity.Name;
            String AccessCode = "";

            HttpCookie RMaxCookie = new HttpCookie(UserName);
            RMaxCookie = Request.Cookies[UserName];
            if (RMaxCookie != null){}
            else
            {
                    MAXFORD.Max_Account.MaxfordUser.MaxConfig.UserCookies CookClass = new MAXFORD.Max_Account.MaxfordUser.MaxConfig.UserCookies();
                    foreach (DataRow dr in CookClass.LoadCookie(UserName).Rows)
                    {
                        AccessCode = dr["COOKIE"].ToString();
                    }
                    HttpCookie MaxCookie = new HttpCookie(UserName);
                    MaxCookie.Value = AccessCode;
                    MaxCookie.Expires = DateTime.Now.AddDays(1);
                    Response.Cookies.Add(MaxCookie);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
    }
}