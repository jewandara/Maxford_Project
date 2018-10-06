using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAXFORD.Account.Config.DataConnection;


namespace MAXFORD.maxTimeTable
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int GradeID = 0;
            String htmlCodeBody = "";
            String htmlCodeBodyTable = "";

            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT DISTINCT GradeName,GradeId FROM dbo.ClassGrade";
                    using (SqlDataReader Reader = command.ExecuteReader())
                    {
                        while (Reader.Read())
                        {

                            if (GradeID == int.Parse(Reader["GradeId"].ToString())){ htmlCodeBody = htmlCodeBody + "<li><a href='Ordinary.aspx?GradeID=" + Reader["GradeId"].ToString() + "' style='text-decoration:none;background:#366;color:#fff;'>" + Reader["GradeName"].ToString() + " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src='images/point.png' style=' margin-bottom:10px; width:11px;'/></a></li>"; }
                            else { htmlCodeBody = htmlCodeBody + "<li><a href='Ordinary.aspx?GradeID=" + Reader["GradeId"].ToString() + "'>" + Reader["GradeName"].ToString() + " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>"; }

                            htmlCodeBodyTable = htmlCodeBodyTable + createClass(Reader["GradeId"].ToString(), Reader["GradeName"].ToString());

                        }
                        connection.Close();
                    }
                }
            }
            LabelGradeMenu.Text = htmlCodeBody;
            LabelClassTime.Text = htmlCodeBodyTable;
        }






        private String createClass(String GradeID, String GradeName)
        {
            String RETURN_STRING = "<div style='border:2px solid #022; padding:2px 2px 2px 2px; margin-top:6px; background:#fff;'><h2 style='padding-left:12px;padding-top:12px;font-size:25px;font-weight:bold;'>" + GradeName + " Classes</h2><table><tr style='border-bottom:2px solid #808080; width:100%;'>" +
                                    "<th style='width:50px;'><p style='padding:5px 5px 5px 5px;'></p></th>" +                 
                                    "<th style='width:180px;'><p style='padding:5px 5px 5px 5px;'>Teacher</p></th>" +
                                    "<th><p style='padding:5px 5px 5px 5px;'>Subject</p></th>" +
                                    "<th style='width:100px;'><p style='padding:5px 5px 5px 5px;'>Grade</p></th>" +
                                    "<th><p style='padding:5px 5px 5px 5px;'>Date</p></th>"+
                                    "<th style='width:170px;'><p style='padding:5px 5px 5px 5px;'>Time</p></th></tr>";
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand SecoCommand = connection.CreateCommand())
                {
                    SecoCommand.CommandType = CommandType.Text;
                    SecoCommand.CommandText = "SELECT * FROM [vw_maxford_Classes] WHERE GradeID = " + GradeID;
                    using (SqlDataReader SecoReader = SecoCommand.ExecuteReader())
                    {
                        while (SecoReader.Read())
                        {
                            RETURN_STRING = RETURN_STRING +
                                "<tr style='border-bottom:1px solid #808080'><td style='width:50px;padding-left:10px;'><img src='../Store/Teacher/" + SecoReader["UserName"].ToString() + "/thumbnail/" + SecoReader["TeacherImg"].ToString() + "'/></td>" +
                                "<td><a href='../maxTeacher/Default?UserID=" + SecoReader["UserID"].ToString() + "'><p style='padding:5px 5px 5px 5px'>" + SecoReader["ClassName"].ToString() + "</p></a></td>" +
                                "<td><p style='padding:5px 5px 5px 5px'>" + SecoReader["SubjectName"].ToString() + "</p></td>" +
                                "<td><p style='padding:5px 5px 5px 5px'>" + GradeName + "</p></td>" +
                                "<td><p style='padding:5px 5px 5px 5px'>" + SecoReader["ClassDate"].ToString() + "</p></td>" +
                                "<td><p style='padding:5px 5px 5px 5px'>" + SecoReader["TimeDuretion"].ToString() + "</p></td></tr>";
                        }
                    }
                    SecoCommand.Cancel();
                    SecoCommand.Dispose();
                }
                RETURN_STRING = RETURN_STRING + "</table></div><br /><br />";
            }
            return RETURN_STRING; 
        }





    }
}