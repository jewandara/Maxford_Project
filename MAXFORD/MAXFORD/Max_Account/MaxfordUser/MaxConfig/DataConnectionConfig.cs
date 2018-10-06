using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Security;


namespace MAXFORD.Max_Account.MaxfordUser.MaxConfig
{
    class maxConnection
    {


        private void MaxSeverSqlConnectionOpen()
        {
            string connetionString = null;
            SqlConnection cnn;
            connetionString = "Data Source=YELLOW.mysitehosted.com;Initial Catalog=ZionxMaxDatabaseNet16;User ID=maxDBAdmin;Password=maxDBAdmin123!@";
            cnn = new SqlConnection(connetionString);
            SqlDataAdapter da = new SqlDataAdapter();
            DataSet MaxDS = new DataSet();
            try
            {
                cnn.Open();
            }
            catch (Exception)
            {}
        }




        public void MaxConnectionData()
        {
            MaxSeverSqlConnectionOpen();
        }




    }

}
