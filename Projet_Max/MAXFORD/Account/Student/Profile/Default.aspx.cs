using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAXFORD.Account.Config.DataConnection;

namespace MAXFORD.Account.Student.Profile
{
    public partial class Default : System.Web.UI.Page
    {


        protected void Page_Init(object sender, EventArgs e)
        {
            Display();
        }


        public void Display()
        {
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    String UserName = System.Web.HttpContext.Current.User.Identity.Name;
                    command.CommandType = CommandType.Text;
                    command.CommandText = "SELECT * FROM  [dbo].[UsersStudent] WHERE UserID = (SELECT UserId FROM [dbo].[Users] WHERE UserName = '" + System.Web.HttpContext.Current.User.Identity.Name + "')";
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read()) 
                        {
                            if (Convert.ToString(reader["StudentCatogory"]) == "")
                            {
                                maxGradeCatogoryDropDownList.Items.Add(new ListItem(" SELECT YOUR CATOGORY ", "0", true));
                            }
                            else 
                            {
                                maxGradeCatogoryDropDownList.Items.Add(new ListItem(Convert.ToString(reader["StudentCatogory"]), "1", true));
                            }

                            if (Convert.ToString(reader["OllYear"]) == "")
                            {
                                maxDropDownListOllYear.Items.Insert(0, new ListItem("SELECT YOUR ORDINARY LEVEL EXAM YEAR", "0"));
                            }
                            else
                            {
                                maxDropDownListOllYear.Items.Add(new ListItem(Convert.ToString(reader["OllYear"]), Convert.ToString(reader["OllYear"]), true));
                            }

                            if (Convert.ToString(reader["PriMedume"]) == "")
                            {
                                maxDropDownListPrimary.Items.Add(new ListItem(" SELECT YOUR PRIMARY MEDIUM ", "0", true));
                            }
                            else
                            {
                                maxDropDownListPrimary.Items.Add(new ListItem(Convert.ToString(reader["PriMedume"]), Convert.ToString(reader["PriMedume"]), true));
                            }

                            if (Convert.ToString(reader["SecdMedume"]) == "")
                            {
                                maxDropDownListSecondary.Items.Add(new ListItem(" SELECT YOUR SECONDARY MEDIUM ", "0", true));
                            }
                            else
                            {
                                maxDropDownListSecondary.Items.Add(new ListItem(Convert.ToString(reader["SecdMedume"]), Convert.ToString(reader["SecdMedume"]), true));
                            }

                            if (Convert.ToString(reader["OllMedume"]) == "")
                            {
                                maxDropDownListOrdinary.Items.Add(new ListItem(" SELECT YOUR ORDINARY MEDIUM ", "0", true));
                            }
                            else
                            {
                                maxDropDownListOrdinary.Items.Add(new ListItem(Convert.ToString(reader["OllMedume"]), Convert.ToString(reader["OllMedume"]), true));
                            }

                            if (Convert.ToString(reader["AllMedume"]) == "")
                            {
                                maxDropDownListAdvanced.Items.Add(new ListItem(" SELECT YOUR ADVANCED MEDIUM ", "0", true));
                            }
                            else
                            {
                                maxDropDownListAdvanced.Items.Add(new ListItem(Convert.ToString(reader["AllMedume"]), Convert.ToString(reader["AllMedume"]), true));
                            }

                            if (Convert.ToString(reader["PrimarySchool"]) != "")
                            {
                                TextBoxPrimarySchool.Text = Convert.ToString(reader["PrimarySchool"]);
                            }
                            if (Convert.ToString(reader["SecoundarySchool"]) != "")
                            {
                                TextBoxSecondarySchool.Text = Convert.ToString(reader["SecoundarySchool"]);
                            }
                            if (Convert.ToString(reader["OrdinarySchool"]) != "")
                            {
                                TextBoxOrdinarySchool.Text = Convert.ToString(reader["OrdinarySchool"]);
                            }
                            if (Convert.ToString(reader["AdvancedSchool"]) != "")
                            {
                                TextBoxAdvancedSchool.Text = Convert.ToString(reader["AdvancedSchool"]);
                            }

                            if (Convert.ToString(reader["Univercuty"]) != "")
                            {
                                TextBoxUnivercityName.Text = Convert.ToString(reader["Univercuty"]);
                            }
                            if (Convert.ToString(reader["AboutUnivercutyLife"]) != "")
                            {
                                TextBoxUnivercityLife.Text = Convert.ToString(reader["AboutUnivercutyLife"]);
                            }
                            if (Convert.ToString(reader["Company"]) != "")
                            {
                                TextBoxCompanyName.Text = Convert.ToString(reader["Company"]);
                            }
                            if (Convert.ToString(reader["AboutCompanyLife"]) != "")
                            {
                                TextBoxAboutCompany.Text = Convert.ToString(reader["AboutCompanyLife"]);
                            }
                        }
                        else { return; }
                    }
                }
            }

            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Pre Primary Student ( 1st Year )", "2", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Pre Primary Student ( 2st Year )", "3", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 01 Student", "4", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 02 Student", "5", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 03 Student", "6", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 04 Student", "7", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 05 Student", "8", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 06 Student", "9", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 07 Student", "10", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 08 Student", "11", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 09 Student", "12", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 10 Student", "13", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 11 Student", "14", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 12 Student", "15", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 13 Student", "16", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 13 Student ( School Leaver )", "17", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Other Atending Student", "18", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Old Maxfordian", "19", true));

            int yearNow = Int32.Parse(DateTime.Now.Year.ToString());
            for (int i = yearNow + 15; i > yearNow - 25; i--)
            {
                maxDropDownListOllYear.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
            }

            maxDropDownListPrimary.Items.Add(new ListItem("ENGLISH", "ENGLISH", true));
            maxDropDownListPrimary.Items.Add(new ListItem("SINHALA", "SINHALA", true));
            maxDropDownListPrimary.Items.Add(new ListItem("TAMIL", "TAMIL", true));

            maxDropDownListSecondary.Items.Add(new ListItem("ENGLISH", "ENGLISH", true));
            maxDropDownListSecondary.Items.Add(new ListItem("SINHALA", "SINHALA", true));
            maxDropDownListSecondary.Items.Add(new ListItem("TAMIL", "TAMIL", true));

            maxDropDownListOrdinary.Items.Add(new ListItem("ENGLISH", "ENGLISH", true));
            maxDropDownListOrdinary.Items.Add(new ListItem("SINHALA", "SINHALA", true));
            maxDropDownListOrdinary.Items.Add(new ListItem("TAMIL", "TAMIL", true));

            maxDropDownListAdvanced.Items.Add(new ListItem("ENGLISH", "ENGLISH", true));
            maxDropDownListAdvanced.Items.Add(new ListItem("SINHALA", "SINHALA", true));
            maxDropDownListAdvanced.Items.Add(new ListItem("TAMIL", "TAMIL", true));

        }


        protected void ButtonNextStep_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    command.CommandText = "UPDATE [dbo].[UsersStudent]SET [StudentCatogory] = @StudentCatogory, [OllYear] = @OllYear, [PrimarySchool] = @PrimarySchool, [PriMedume] = @PriMedume, [SecoundarySchool] = @SecoundarySchool, [SecdMedume] = @SecdMedume, [OrdinarySchool] = @OrdinarySchool, [OllMedume] = @OllMedume, [AdvancedSchool] = @AdvancedSchool, [AllMedume] = @AllMedume, [Univercuty] = @Univercuty, [AboutUnivercutyLife] = @AboutUnivercutyLife, [Company] = @Company, [AboutCompanyLife] = @AboutCompanyLife WHERE [UserID] = (SELECT UserId FROM [dbo].[Users] WHERE UserName = '" + System.Web.HttpContext.Current.User.Identity.Name + "')";
                    command.Parameters.AddWithValue("@StudentCatogory", maxGradeCatogoryDropDownList.SelectedItem.Text);
                    command.Parameters.AddWithValue("@OllYear", maxDropDownListOllYear.SelectedItem.Text);
                    command.Parameters.AddWithValue("@PrimarySchool", TextBoxPrimarySchool.Text);
                    command.Parameters.AddWithValue("@PriMedume", maxDropDownListPrimary.SelectedItem.Text);
                    command.Parameters.AddWithValue("@SecoundarySchool", TextBoxSecondarySchool.Text);
                    command.Parameters.AddWithValue("@SecdMedume", maxDropDownListSecondary.SelectedItem.Text);
                    command.Parameters.AddWithValue("@OrdinarySchool", TextBoxOrdinarySchool.Text);
                    command.Parameters.AddWithValue("@OllMedume", maxDropDownListOrdinary.SelectedItem.Text);
                    command.Parameters.AddWithValue("@AdvancedSchool", TextBoxAdvancedSchool.Text);
                    command.Parameters.AddWithValue("@AllMedume", maxDropDownListAdvanced.SelectedItem.Text);
                    command.Parameters.AddWithValue("@Univercuty", TextBoxUnivercityName.Text);
                    command.Parameters.AddWithValue("@AboutUnivercutyLife", TextBoxUnivercityLife.Text);
                    command.Parameters.AddWithValue("@Company", TextBoxCompanyName.Text);
                    command.Parameters.AddWithValue("@AboutCompanyLife", TextBoxAboutCompany.Text);
                    command.ExecuteScalar();
                }
            }

        }



    }
}