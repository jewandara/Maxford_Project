using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD.maxClasses
{
    public partial class Advanced : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string CatName = Request.QueryString["Catogory"];
            String htmlCodeBody = "";

            if (CatName == "") { PanelCode.Enabled = true; PanelCatogory.Enabled = false; }

            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT DISTINCT SubjectCatogory FROM dbo.ClassSubject WHERE SubjectCode = 'ADVANCED'";

                    using (SqlDataReader Reader = command.ExecuteReader())
                    {

                        while (Reader.Read())
                        {
                            if (CatName == Reader["SubjectCatogory"].ToString())
                            {
                                htmlCodeBody = htmlCodeBody + "<li><a href='Advanced.aspx?Catogory=" + Reader["SubjectCatogory"].ToString() + "' style='text-decoration:none;background:#366;color:#fff;'>" + Reader["SubjectCatogory"].ToString() + " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src='images/point.png' style=' margin-bottom:10px; width:11px;'/></a></li>";
                            }
                            else
                            {
                                htmlCodeBody = htmlCodeBody + "<li><a href='Advanced.aspx?Catogory=" + Reader["SubjectCatogory"].ToString() + "'>" + Reader["SubjectCatogory"].ToString() + " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>";
                            }
                        }
                        connection.Close();
                    }
                }
            }

            LabelGradeMenu.Text = htmlCodeBody;
        }

    }
}