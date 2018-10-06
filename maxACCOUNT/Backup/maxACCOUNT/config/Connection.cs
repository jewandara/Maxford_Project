using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Security;


namespace maxACCOUNT.Config
{
    class maxConnection
    {


        private String MaxSeverSqlConnectionRunStoredProcedure(String Max_Stored_Procedure_Name, object[] MaxObjects)
        {
            string Error = "";
            string connetionString = null;
            SqlConnection con;
            connetionString = "Data Source=YELLOW.mysitehosted.com;Initial Catalog=ZionxMaxUserDB;User ID=maxDBAdmin;Password=maxDBAdmin123!@";
            con = new SqlConnection(connetionString);
            using (con)
            {

                try
                {
                    con.Open();
                    int a = MaxObjects.Length;
                    object[] abc = new object[a];
                    SqlCommand SQLCmd;
                    SqlCommand MaxCommand = new SqlCommand();
                    MaxCommand.Connection = con;
                    MaxCommand.CommandText = Max_Stored_Procedure_Name;
                    MaxCommand.CommandType = CommandType.StoredProcedure;
                    SqlCommandBuilder.DeriveParameters(MaxCommand);
                    for (int i = 0; i < MaxCommand.Parameters.Count - 1; i++)
                    {
                        abc[i] = MaxCommand.Parameters[i + 1].ParameterName.ToString();
                    }
                    SQLCmd = new SqlCommand(Max_Stored_Procedure_Name, con);
                    for (int i = 0; i < MaxObjects.Length; i++)
                    {
                        SqlParameter MaxSqlPerameter = new SqlParameter();
                        MaxSqlPerameter.ParameterName = abc[i].ToString();
                        MaxSqlPerameter.Value = MaxObjects[i];
                        SQLCmd.Parameters.Add(MaxSqlPerameter);
                    }
                    SQLCmd.CommandType = CommandType.StoredProcedure;
                    SQLCmd.ExecuteNonQuery();
                    con.Close();
                }
                catch (Exception ex)
                {
                    Error = "SQL Error ( Data Insert ) - " + ex.ToString();
                }
                return Error;
            }
        }


        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        string erroMessage = "";

        //        MAXFORD.Max_Account.App_Config.config MaxSqlCon = new MAXFORD.Max_Account.App_Config.config();
        //        string testT = Server.HtmlEncode(editor1.InnerText);

        //        string sp = "maxAboutUs_Default";
        //        object[] o = new object[2];
        //        o[0] = sp.Trim();
        //        o[1] = Server.HtmlDecode(testT).Trim();
        //        erroMessage = MaxSqlCon.MaxInsert(o, "dbo.MAX_SP_PageUpdate");
        //        Response.Write("<script>alert('" + erroMessage + "')</script>");
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "')</script>");
        //    }
        //}



        public String Call_Sever_SP(String Max_Stored_Procedure_Name, object[] MaxObjects)
        {
            return MaxSeverSqlConnectionRunStoredProcedure(Max_Stored_Procedure_Name, MaxObjects);
        }



        public string generateID()
        {
            return Guid.NewGuid().ToString("N");
        }




        public String GetUserID()
        { 
            String maxUserID = "";
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                SqlCommand cmd = new SqlCommand("aspnet_Users_GetUserID", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter parm = new SqlParameter("@UserID", SqlDbType.VarChar,500);
                parm.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(parm);
                cmd.Parameters.Add(new SqlParameter("@UserName", System.Web.HttpContext.Current.User.Identity.Name.ToString().Trim()));
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                maxUserID = parm.Value.ToString();
            }
            return maxUserID;
        }


























    }

}
