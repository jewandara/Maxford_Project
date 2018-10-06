using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace maxACCOUNT.Teacher.web
{
    public partial class Classes : System.Web.UI.Page
    {



        public void Page_Init(object o, EventArgs e)
        {
            Display();
        }





        protected void Display()
        {
            string UserName = "";
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                UserName = System.Web.HttpContext.Current.User.Identity.Name;
            }
            SqlCommand cmd = new SqlCommand("SELECT * FROM vw_aspnet_TimeTable WHERE (UserName = '" + UserName + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
            cmd.Connection.Open();
            SqlDataReader ddlValues = cmd.ExecuteReader();
            if (ddlValues.HasRows)
            {
                while (ddlValues.Read())
                {

                    //VIEW NAME
                    maxTeacherName.Text = ddlValues["TeacherName"].ToString();


                    //VIEW CLASSES
                    maxClassData.Text = maxClassData.Text +
                        "<tr><td class='center'>" + ddlValues["TimeName"].ToString() +
                        "</td><td class='center'>" + ddlValues["SubjectName"].ToString() +
                        "</td><td class='center'>" + ddlValues["GradeName"].ToString() +
                        "</td><td class='center'>" + ddlValues["TimeDate"].ToString() +
                        "</td><td class='center'>" + ddlValues["TimeDuretion"].ToString() +
                        "</td><td class='center'><a class='btn btn-success' href='Class/Edit.aspx?ClassID=" + ddlValues["TimeID"].ToString() +
                        "' ><i class='icon-edit icon-white'></i>  Edit</a><a class='btn btn-danger' href='Class/Delete.aspx?ClassID=" + ddlValues["TimeID"].ToString() +
                        "' ><i class='icon-trash icon-white'></i>  Delete</a></td></tr>";
                }
            }
            else
            {
            }
            ddlValues.Close();
            cmd.Connection.Close();
        }










    }
}