﻿using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAXFORD.maxSubject
{
    public partial class SecondaryLevel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string GradeID = Request.QueryString["GradeID"];
            String htmlCodeBody = "";

            SqlCommand cmd = new SqlCommand("SELECT * FROM [aspnet_ClassGrade] WHERE ([GradeCatogory] ='SECONDARY')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
            cmd.Connection.Open();

            using (SqlDataReader MSDReader = cmd.ExecuteReader())
            {
                while (MSDReader.Read())
                {
                    if (GradeID == MSDReader["GradeId"].ToString())
                    {
                        htmlCodeBody = htmlCodeBody + "<li><a href='SecondaryLevel.aspx?GradeID=" + MSDReader["GradeId"].ToString() + "' style='text-decoration:none;background:#366;color:#fff;'>" + MSDReader["GradeName"].ToString() + " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src='images/point.png' style=' margin-bottom:-2px; width:10px;'/></a></li>";
                    }
                    else
                    {
                        htmlCodeBody = htmlCodeBody + "<li><a href='SecondaryLevel.aspx?GradeID=" + MSDReader["GradeId"].ToString() + "'>" + MSDReader["GradeName"].ToString() + " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>";
                    }
                }
            }
            cmd.Connection.Close();
            LabelGradeMenu.Text = htmlCodeBody;
        }
    }
}