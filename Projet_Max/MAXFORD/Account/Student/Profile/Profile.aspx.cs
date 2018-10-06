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
    public partial class Profile : System.Web.UI.Page
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
                    command.CommandText = "SELECT UserFirstName, UserMiddleName, UserLastName, UserInitialName, Title, Gender, DATEPART(yyyy,[DateOfBirth]) AS 'Year', DATENAME(MONTH, [DateOfBirth])  AS 'Month', DATEPART(dd,[DateOfBirth]) AS 'Day' FROM [dbo].[UsersData]  WHERE UserId = (SELECT UserId FROM [dbo].[Users] WHERE UserName = '" + System.Web.HttpContext.Current.User.Identity.Name + "')";
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {

                            if (Convert.ToString(reader["UserFirstName"]) != "")
                            {
                                TextBoxFirstName.Text = Convert.ToString(reader["UserFirstName"]);
                            }
                            if (Convert.ToString(reader["UserMiddleName"]) != "")
                            {
                                TextBoxMiddleName.Text = Convert.ToString(reader["UserMiddleName"]);
                            }
                            if (Convert.ToString(reader["UserLastName"]) != "")
                            {
                                TextBoxLastName.Text = Convert.ToString(reader["UserLastName"]);
                            }
                            if (Convert.ToString(reader["UserInitialName"]) != "")
                            {
                                TextBoxInitalName.Text = Convert.ToString(reader["UserInitialName"]);
                            }

                            if (Convert.ToString(reader["Title"]) == "")
                            {
                                DropDownListTitle.Items.Add(new ListItem(" SELECT YOUR TITLE ", "0", true));
                            }
                            else
                            {
                                DropDownListTitle.Items.Add(new ListItem(Convert.ToString(reader["Title"]), "1", true));
                            }
                            if (Convert.ToString(reader["Gender"]) == "")
                            {
                                maxDropDownListGender.Items.Add(new ListItem(" SELECT YOUR GENDER ", "0", true));
                            }
                            else
                            {
                                maxDropDownListGender.Items.Add(new ListItem(Convert.ToString(reader["Gender"]), "1", true));
                            }

                            if (Convert.ToString(reader["Day"]) == "")
                            {
                                maxDropDownListBDay.Items.Insert(0, new ListItem(" DATE ", "0"));
                            }
                            else
                            {
                                maxDropDownListBDay.Items.Add(new ListItem(Convert.ToString(reader["Day"]), "1", true));
                            }
                            if (Convert.ToString(reader["Month"]) == "")
                            {
                                maxDropDownListBMonth.Items.Add(new ListItem(" MONTH ", "0", true));
                            }
                            else
                            {
                                maxDropDownListBMonth.Items.Add(new ListItem(Convert.ToString(reader["Month"]), "1", true));
                            }
                            if (Convert.ToString(reader["Year"]) == "")
                            {
                                maxDropDownListBYear.Items.Insert(0, new ListItem(" YEAR ", "0"));
                            }
                            else
                            {
                                maxDropDownListBYear.Items.Add(new ListItem(Convert.ToString(reader["Year"]), "1", true));
                            }
           
                        }
                        else { return; }
                    }
                }
            }

            int yearNow = Int32.Parse(DateTime.Now.Year.ToString());

            for (int i = yearNow - 3; i > yearNow - 40; i--)
            {
                maxDropDownListBYear.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
            }

            for (int i = 1; i < 32; i++)
            {
                maxDropDownListBDay.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
            }

            maxDropDownListBMonth.Items.Add(new ListItem("January", "January", true));
            maxDropDownListBMonth.Items.Add(new ListItem("February", "February", true));
            maxDropDownListBMonth.Items.Add(new ListItem("March", "March", true));
            maxDropDownListBMonth.Items.Add(new ListItem("April", "April", true));
            maxDropDownListBMonth.Items.Add(new ListItem("May", "May", true));
            maxDropDownListBMonth.Items.Add(new ListItem("June", "June", true));
            maxDropDownListBMonth.Items.Add(new ListItem("July", "July", true));
            maxDropDownListBMonth.Items.Add(new ListItem("August", "August", true));
            maxDropDownListBMonth.Items.Add(new ListItem("September", "September", true));
            maxDropDownListBMonth.Items.Add(new ListItem("October", "October", true));
            maxDropDownListBMonth.Items.Add(new ListItem("November", "November", true));
            maxDropDownListBMonth.Items.Add(new ListItem("December", "December", true));

            maxDropDownListGender.Items.Add(new ListItem("MALE", "MALE", true));
            maxDropDownListGender.Items.Add(new ListItem("FEMALE", "FEMALE", true));

            DropDownListTitle.Items.Add(new ListItem("MR", "MR", true));
            DropDownListTitle.Items.Add(new ListItem("MRS", "MRS", true));
            DropDownListTitle.Items.Add(new ListItem("MS", "MS", true));
            DropDownListTitle.Items.Add(new ListItem("MISS", "MISS", true));

        }



        protected void ButtonNextStep_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = ExamplesHelper.GetNewOpenDbConnection_SqlServer())
            {
                using (SqlCommand command = connection.CreateCommand())
                {
                    command.CommandText = "UPDATE [dbo].[UsersData] SET [UserFirstName] = @UserFirstName, [UserMiddleName] = @UserMiddleName, [UserLastName] = @UserLastName, [UserInitialName] = @UserInitialName, [Title] = @Title, [Gender] = @Gender, [DateOfBirth] = @DateOfBirth WHERE [UserID] = (SELECT UserId FROM [dbo].[Users] WHERE UserName = '" + System.Web.HttpContext.Current.User.Identity.Name + "')";
                    command.Parameters.AddWithValue("@UserFirstName", TextBoxFirstName.Text);
                    command.Parameters.AddWithValue("@UserMiddleName", TextBoxMiddleName.Text);
                    command.Parameters.AddWithValue("@UserLastName", TextBoxLastName.Text);
                    command.Parameters.AddWithValue("@UserInitialName", TextBoxInitalName.Text);
                    command.Parameters.AddWithValue("@Title", DropDownListTitle.SelectedItem.Text);
                    command.Parameters.AddWithValue("@Gender", maxDropDownListGender.SelectedItem.Text);
                    command.Parameters.AddWithValue("@DateOfBirth", maxDropDownListBDay.SelectedItem.Text + " - " + maxDropDownListBMonth.SelectedItem.Text + " - " + maxDropDownListBYear.SelectedItem.Text);
                    command.ExecuteScalar();
                }
            }
        }




    }
}