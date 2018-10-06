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
    public partial class Secondary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int GradeID = 0;
            String htmlCodeBody = "";

            if (!string.IsNullOrEmpty(Request.QueryString["GradeID"]))
            { GradeID = int.Parse(Request.QueryString["GradeID"]); }

            if (GradeID == 0) { PanelCode.Enabled = true; PanelCatogory.Enabled = false; }

            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT DISTINCT GradeName,GradeId FROM dbo.ClassGrade WHERE GradeCatogory = 'SECONDARY'";

                    using (SqlDataReader Reader = command.ExecuteReader())
                    {

                        while (Reader.Read())
                        {
                            if (GradeID == int.Parse(Reader["GradeId"].ToString()))
                            {
                                htmlCodeBody = htmlCodeBody + "<li><a href='Secondary.aspx?GradeID=" + Reader["GradeId"].ToString() + "' style='text-decoration:none;background:#366;color:#fff;'>" + Reader["GradeName"].ToString() + " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src='images/point.png' style=' margin-bottom:10px; width:11px;'/></a></li>";
                            }
                            else
                            {
                                htmlCodeBody = htmlCodeBody + "<li><a href='Secondary.aspx?GradeID=" + Reader["GradeId"].ToString() + "'>" + Reader["GradeName"].ToString() + " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>";
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