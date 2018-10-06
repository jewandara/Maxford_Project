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
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CatName = Request.QueryString["Catogory"];
            String htmlCodeBody = "";

            //if (CatName == "") { PanelCode.Enabled = true; PanelCatogory.Enabled = false; }

            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT DISTINCT GradeName,GradeId FROM dbo.ClassGrade WHERE GradeCatogory = 'PRIMARY'";
                    using (SqlDataReader Reader = command.ExecuteReader())
                    { while (Reader.Read()) { htmlCodeBody = htmlCodeBody + "<li><a href='Primary.aspx?GradeID=" + Reader["GradeId"].ToString() + "'>" + Reader["GradeName"].ToString() + " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>"; } }
                    LabelGradeMenu.Text = htmlCodeBody;
                    command.Dispose();
                    htmlCodeBody = "";

                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT DISTINCT GradeName,GradeId FROM dbo.ClassGrade WHERE GradeCatogory = 'SECONDARY'";
                    using (SqlDataReader Reader = command.ExecuteReader())
                    { while (Reader.Read()) { htmlCodeBody = htmlCodeBody + "<li><a href='Secondary.aspx?GradeID=" + Reader["GradeId"].ToString() + "'>" + Reader["GradeName"].ToString() + " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>"; } }
                    LabelGradeMenuTwo.Text = htmlCodeBody;
                    command.Dispose();
                    htmlCodeBody = "";

                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT DISTINCT GradeName,GradeId FROM dbo.ClassGrade WHERE GradeCatogory = 'ORDINARY'";
                    using (SqlDataReader Reader = command.ExecuteReader())
                    { while (Reader.Read()) { htmlCodeBody = htmlCodeBody + "<li><a href='Ordinary.aspx?GradeID=" + Reader["GradeId"].ToString() + "'>" + Reader["GradeName"].ToString() + " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>"; } }
                    LabelGradeMenuThree.Text = htmlCodeBody;
                    command.Dispose();
                    htmlCodeBody = "";

                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT DISTINCT SubjectCatogory FROM dbo.ClassSubject WHERE SubjectCode = 'ADVANCED'";
                    using (SqlDataReader Reader = command.ExecuteReader())
                    {  while (Reader.Read()) { htmlCodeBody = htmlCodeBody + "<li><a href='Advanced.aspx?Catogory=" + Reader["SubjectCatogory"].ToString() + "'>" + Reader["SubjectCatogory"].ToString() + " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>"; } }
                    LabelGradeMenuFour.Text = htmlCodeBody;
                    command.Dispose();
                    connection.Close();


                }
            }



        }
    }
}