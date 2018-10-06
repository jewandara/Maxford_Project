using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using CodeCarvings.Piczard;
using CodeCarvings.Piczard.Web;
using CodeCarvings.Piczard.Serialization;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD
{
    public partial class _Default : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {


                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT * FROM dbo.PageMain WHERE PageDataCatogory = 'MAIN_TOP_SLIDE'";
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        string[] IMG = new string[8];
                        string[] H = new string[8];
                        string[] T = new string[8];
                        string[] L = new string[8];

                        int i = 0;
                        while (reader.Read())
                        {
                            H[i] = Convert.ToString(reader["PageMainTitle"]);
                            T[i] = Convert.ToString(reader["PageMainBody"]);
                            L[i] = "<a href='" + Convert.ToString(reader["PageMainTitleLink"]) + "' target='_blank'>Read More . . . </a>";
                            IMG[i] = Convert.ToString(reader["PageMainImageMain"]);
                            i = i + 1;
                        }

                        SH1.Text = H[0];
                        SH2.Text = H[1];
                        SH3.Text = H[2];
                        SH4.Text = H[3];
                        SH5.Text = H[4];
                        SH6.Text = H[5];
                        
                        ST1.Text = T[0];
                        ST2.Text = T[1];
                        ST3.Text = T[2];
                        ST4.Text = T[3];
                        ST5.Text = T[4];
                        ST6.Text = T[5];

                        SL1.Text = L[0];
                        SL2.Text = L[1];
                        SL3.Text = L[2];
                        SL4.Text = L[3];
                        SL5.Text = L[4];
                        SL6.Text = L[5];


                        SI1.Text = "<a style='opacity:0.2;' class='prev-image'><img src='Store/Slide/main/" + IMG[5] + "' alt='MAXFORD Slide Image' title='" + T[0] + "' height='348' width='522'></a><img src='Store/Slide/main/" + IMG[0] + "' alt='MAXFORD Slide Image' title='" + T[0] + "' height='348' width='522'><a style='opacity:0.2;' class='next-image'><img src='Store/Slide/main/" + IMG[1] + "' alt='MAXFORD Slide Image' title='" + T[0] + "' height='348' width='522'></a>";
                        SI2.Text = "<a style='opacity:0.2;' class='prev-image'><img src='Store/Slide/main/" + IMG[0] + "' alt='MAXFORD Slide Image' title='" + T[1] + "' height='348' width='522'></a><img src='Store/Slide/main/" + IMG[1] + "' alt='MAXFORD Slide Image' title='" + T[1] + "' height='348' width='522'><a style='opacity:0.2;' class='next-image'><img src='Store/Slide/main/" + IMG[2] + "' alt='MAXFORD Slide Image' title='" + T[1] + "' height='348' width='522'></a>";
                        SI3.Text = "<a style='opacity:0.2;' class='prev-image'><img src='Store/Slide/main/" + IMG[1] + "' alt='MAXFORD Slide Image' title='" + T[2] + "' height='348' width='522'></a><img src='Store/Slide/main/" + IMG[2] + "' alt='MAXFORD Slide Image' title='" + T[2] + "' height='348' width='522'><a style='opacity:0.2;' class='next-image'><img src='Store/Slide/main/" + IMG[3] + "' alt='MAXFORD Slide Image' title='" + T[2] + "' height='348' width='522'></a>";
                        SI4.Text = "<a style='opacity:0.2;' class='prev-image'><img src='Store/Slide/main/" + IMG[2] + "' alt='MAXFORD Slide Image' title='" + T[3] + "' height='348' width='522'></a><img src='Store/Slide/main/" + IMG[3] + "' alt='MAXFORD Slide Image' title='" + T[3] + "' height='348' width='522'><a style='opacity:0.2;' class='next-image'><img src='Store/Slide/main/" + IMG[4] + "' alt='MAXFORD Slide Image' title='" + T[3] + "' height='348' width='522'></a>";
                        SI5.Text = "<a style='opacity:0.2;' class='prev-image'><img src='Store/Slide/main/" + IMG[3] + "' alt='MAXFORD Slide Image' title='" + T[4] + "' height='348' width='522'></a><img src='Store/Slide/main/" + IMG[4] + "' alt='MAXFORD Slide Image' title='" + T[4] + "' height='348' width='522'><a style='opacity:0.2;' class='next-image'><img src='Store/Slide/main/" + IMG[5] + "' alt='MAXFORD Slide Image' title='" + T[4] + "' height='348' width='522'></a>";
                        SI6.Text = "<a style='opacity:0.2;' class='prev-image'><img src='Store/Slide/main/" + IMG[4] + "' alt='MAXFORD Slide Image' title='" + T[5] + "' height='348' width='522'></a><img src='Store/Slide/main/" + IMG[5] + "' alt='MAXFORD Slide Image' title='" + T[5] + "' height='348' width='522'><a style='opacity:0.2;' class='next-image'><img src='Store/Slide/main/" + IMG[0] + "' alt='MAXFORD Slide Image' title='" + T[5] + "' height='348' width='522'></a>";

                    }



                    command.Dispose();
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT * FROM dbo.PageMain WHERE PageDataCatogory = 'MAIN_HEADER'";
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            this.LabelHeader.Text = "<hgroup class='title'><h2 style='color:#1b3027'>" + Convert.ToString(reader["PageMainTitle"]) + "</h2></hgroup><p>" + Convert.ToString(reader["PageMainBody"]) + "</p><p class='more' class='wa-arrowLink wa-arrowLink-blue'><a href='" + Convert.ToString(reader["PageMainTitleLink"]) + "'>Read More . . . </a></p>";
                        }
                    }




                    command.Dispose();
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT * FROM dbo.PageMain WHERE PageDataCatogory = 'MAIN_TOP_EVENT'";
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            this.EventTitle.Text = Convert.ToString(reader["PageMainTitle"]);
                            this.EventBody.Text = Convert.ToString(reader["PageMainBody"]);
                        }
                    }


                    command.Dispose();
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT * FROM dbo.PageMain WHERE PageDataCatogory = 'MAIN_FOOTER'";
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            this.FooterTitle.Text = Convert.ToString(reader["PageMainTitle"]);
                            this.FooterBody.Text = Convert.ToString(reader["PageMainBody"]);
                        }
                    }





                }
            }
        }










    }
}