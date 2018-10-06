using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD.Account.Teacher.Class
{
    public partial class Wednesday : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string dataTable = "";
            int maxTime = 7;
            while (maxTime <= 12)
            {
                dataTable = dataTable + "<tr class='row_1'><td class='tt_hours_column'>" + maxTime + ":00 AM</td>";
                dataTable = dataTable + AddClass(maxTime.ToString() + ":00", "Wednesday") + "</tr>";

                dataTable = dataTable + "<tr class='row_1 row_gray'><td class='tt_hours_column'>" + maxTime + ":30 AM</td>";
                dataTable = dataTable + AddClass(maxTime.ToString() + ":30", "Wednesday") + "</tr>";

                maxTime = maxTime + 1;
            }


            maxTime = 13;
            int maxshowTime = 1;
            while (maxTime <= 21)
            {
                dataTable = dataTable + "<tr class='row_1'><td class='tt_hours_column'>" + maxshowTime + ":00 PM</td>";
                dataTable = dataTable + AddClass(maxTime.ToString() + ":00", "Wednesday") + "</tr>";


                dataTable = dataTable + "<tr class='row_1 row_gray'><td class='tt_hours_column'>" + maxshowTime + ":30 PM</td>";
                dataTable = dataTable + AddClass(maxTime.ToString() + ":30", "Wednesday") + "</tr>";

                maxshowTime = maxshowTime + 1;
                maxTime = maxTime + 1;
            }




            Label1.Text = dataTable;
        }


        public String AddClass(String TableTime, String TableDate)
        {
            String htmlCodeBody = "";
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT * FROM [vw_aspnet_TimeTable] WHERE TimeStart = '" + TableTime + "' AND TimeDate = '" + TableDate + "'";
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            htmlCodeBody = htmlCodeBody + "<td class='event' rowspan='" + reader["TimePeriod"].ToString() + "'><div class='event_container'>";
                            htmlCodeBody = htmlCodeBody + "<a class='event_header' href='#' title=''>" + reader["TimeName"].ToString() + "</a>";
                            htmlCodeBody = htmlCodeBody + "<div class='before_hour_text'><a href='#' title='' style='font-size:12px;'>" + reader["TeacherName"].ToString() + "</a></div>";
                            htmlCodeBody = htmlCodeBody + "<div class='top_hour'>" + reader["TimeDuretion"].ToString() + "</div>";
                            htmlCodeBody = htmlCodeBody + "<div class='after_hour_text'>" + reader["GradeName"].ToString() + "</div>";
                            htmlCodeBody = htmlCodeBody + "<div class='after'> [" + reader["GradeCatogory"].ToString() + "] </div><div class='after'><br></div>";
                            htmlCodeBody = htmlCodeBody + "<div class='after'><h4>" + reader["SubjectName"].ToString() + "</h4></div>";
                            htmlCodeBody = htmlCodeBody + "</div></td>";
                        }
                        connection.Close();  
                    }
                }
            }
            return htmlCodeBody;
        }



    }
}