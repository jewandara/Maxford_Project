using System;
using System.Data.SqlClient;
using System.Data;


namespace MAXFORD.Max_Account.MaxfordUser.MaxConfig
{
    class UserCookies
    {

        //--------- CALL TO ASPNETDB.MDF GET USERID AND ROLEID ------------//
        private DataTable GetLoginUser(string USERNAME)
        {
            string connetionString = null;
            SqlConnection cnn;
            connetionString = "Data Source=YELLOW.mysitehosted.com;Initial Catalog=ZionxMaxUserDB;Persist Security Info=True;User Id=maxDBAdmin;Password=maxDBAdmin123!@;";
            cnn = new SqlConnection(connetionString);
            DataTable dtble = new DataTable();
            try
            {
                cnn.Open();
                SqlCommand MaxCommand = new SqlCommand();
                MaxCommand.Connection = cnn;
                MaxCommand.CommandText = "dbo.aspnet_MAX_USER_DATA";
                MaxCommand.CommandType = CommandType.StoredProcedure;
                MaxCommand.Parameters.AddWithValue("@maxUserName", USERNAME);
                MaxCommand.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(MaxCommand);
                DataSet dset = new DataSet();
                da.Fill(dset, "MP");
                dtble = dset.Tables["MP"];
                cnn.Close();
            }
            catch (Exception ex)
            {
                string error = "<script type='text/javascript'>alert('" + ex + "');</script>";
            }
            return dtble;
        }



        //--------- CALL TO ZionxMaxDatabaseNet16.mdf GET COOKIE ------------//
        private DataTable GetCookie(DataTable UserTB)
        {
            String UserID = "";
            String RoleID = "";
            foreach (DataRow dr in UserTB.Rows)
            {
                UserID = dr["USERID"].ToString();
                RoleID = dr["ROLEID"].ToString();
            }
            string connetionString = null;
            SqlConnection cnn;
            connetionString = "Data Source=YELLOW.mysitehosted.com;Initial Catalog=ZionxMaxDatabaseNet16;User ID=maxDBAdmin;Password=maxDBAdmin123!@";
            cnn = new SqlConnection(connetionString);
            DataTable dtbleCook = new DataTable();
            try
            {
                cnn.Open();
                SqlCommand MaxCommand = new SqlCommand();
                MaxCommand.Connection = cnn;
                MaxCommand.CommandText = "dbo.SP_MAX_USER_COOKIE";
                MaxCommand.CommandType = CommandType.StoredProcedure;
                MaxCommand.Parameters.AddWithValue("@UserID", UserID);
                MaxCommand.Parameters.AddWithValue("@RoleID", RoleID);
                MaxCommand.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(MaxCommand);
                DataSet dset = new DataSet();
                da.Fill(dset, "CK");
                dtbleCook = dset.Tables["CK"];
                cnn.Close();
            }
            catch (Exception ex)
            {
                string error = "<script type='text/javascript'>alert('" + ex + "');</script>";
            }
            return dtbleCook;
        }


        public DataTable LoadCookie(string USERNAME)
        {
            return GetCookie(GetLoginUser(USERNAME));
        }



        //--------- CALL TO ZionxMaxDatabaseNet16.mdf GET User MENU ------------//
        private DataTable GetUserMenu(String UserID)
        {
            string connetionString = null;
            SqlConnection cnn;
            connetionString = "Data Source=YELLOW.mysitehosted.com;Initial Catalog=ZionxMaxDatabaseNet16;User ID=maxDBAdmin;Password=maxDBAdmin123!@";
            cnn = new SqlConnection(connetionString);
            DataTable dtbleCook = new DataTable();
            try
            {
                cnn.Open();
                SqlCommand MaxCommand = new SqlCommand();
                MaxCommand.Connection = cnn;
                MaxCommand.CommandText = "dbo.SP_MAX_USER_LOAD_MENU";
                MaxCommand.CommandType = CommandType.StoredProcedure;
                MaxCommand.Parameters.AddWithValue("@UserID", UserID);
                MaxCommand.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(MaxCommand);
                DataSet dset = new DataSet();
                da.Fill(dset, "CK");
                dtbleCook = dset.Tables["CK"];
                cnn.Close();
            }
            catch (Exception ex)
            {
                string error = "<script type='text/javascript'>alert('" + ex + "');</script>";
            }
            return dtbleCook;
        }


        public DataTable GetMenu(string USERID)
        {
            return GetUserMenu(USERID);
        }





    }
}