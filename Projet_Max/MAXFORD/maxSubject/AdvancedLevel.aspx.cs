using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAXFORD.maxSubject
{
    public partial class AdvancedLevel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string GradeID = Request.QueryString["SubjectCatogory"];
            String htmlCodeBody = "";

            SqlCommand cmd = new SqlCommand("SELECT DISTINCT SubjectCatogory FROM dbo.aspnet_ClassSubject WHERE SubjectCode = 'ADVANCED'", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
            cmd.Connection.Open();

            using (SqlDataReader MSDReader = cmd.ExecuteReader())
            {
                while (MSDReader.Read())
                {
                    if (GradeID == MSDReader["SubjectCatogory"].ToString())
                    {
                        htmlCodeBody = htmlCodeBody + "<li><a href='AdvancedLevel.aspx?SubjectCatogory=" + MSDReader["SubjectCatogory"].ToString() + "' style='text-decoration:none;background:#366;color:#fff;'>" + MSDReader["SubjectCatogory"].ToString() + " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src='images/point.png' style=' margin-bottom:-2px; width:10px;'/></a></li>";
                    }
                    else
                    {
                        htmlCodeBody = htmlCodeBody + "<li><a href='AdvancedLevel.aspx?SubjectCatogory=" + MSDReader["SubjectCatogory"].ToString() + "'>" + MSDReader["SubjectCatogory"].ToString() + " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>";
                    }
                }
            }
            cmd.Connection.Close();
            LabelGradeMenu.Text = htmlCodeBody;
        }
    }
}