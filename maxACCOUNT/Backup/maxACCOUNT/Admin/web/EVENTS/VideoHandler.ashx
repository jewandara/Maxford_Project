<%@ WebHandler Language="C#" Class="VideoHandler" %>

using System;
using System.Web;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;
public class VideoHandler : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        SqlCommand cmd = new SqlCommand("SELECT * FROM dbo.aspnet_PageVideo WHERE VideoID = @VideoID", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
        cmd.Parameters.Add("@VideoID", SqlDbType.Int).Value = context.Request.QueryString["VideoID"];
        try
        {
            cmd.Connection.Open();
            SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.Default);
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    context.Response.ContentType = reader["VideoName"].ToString();
                    context.Response.BinaryWrite((byte[])reader["Video"]);
                }
            }
        }
        finally
        {
            cmd.Connection.Close();
        }
    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}