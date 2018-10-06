using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxACCOUNT.Admin.web.DASHBOARD
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            iframeDiv.Controls.Add(new LiteralControl("<iframe src='http://awstats.yellow.mysitehosted.com/cgi-bin/awstats.pl?config=maxford.lk' width='99%' height='5600' ></iframe>"));
            Label1.Text = "<h3><a href='http://www.maxford.lk/'>WWW.MAXFORD.LK</a></h3>";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            iframeDiv.Controls.Add(new LiteralControl("<iframe src='http://awstats.yellow.mysitehosted.com/cgi-bin/awstats.pl?config=maxford.lk' width='99%' height='5600' ></iframe>"));
            Label1.Text = "<h3><a href='http://www.maxford.lk/'>WWW.MAXFORD.LK</a></h3>";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            iframeDiv.Controls.Add(new LiteralControl("<iframe src='http://awstats.yellow.mysitehosted.com/cgi-bin/awstats.pl?config=account.maxford.lk' width='99%' height='5600' ></iframe>"));
            Label1.Text = "<h3><a href='http://account.maxford.lk/'>ACCOUNT.MAXFORD.LK</a></h3>";
        }

    }
}