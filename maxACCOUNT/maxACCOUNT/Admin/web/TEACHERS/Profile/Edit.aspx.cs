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

namespace maxACCOUNT.Admin.web.TEACHERS.Profile
{
    public partial class Edit : System.Web.UI.Page
    {

        public void Page_Init(object o, EventArgs e)
        {
            Display();
        }


        public void Display()
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string UserID = Request.QueryString["UserID"];
                SqlCommand cmd = new SqlCommand("SELECT * FROM vw_aspnet_UsersData WHERE (UserID = '" + UserID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                SqlDataReader ddlValues = cmd.ExecuteReader();
                if (ddlValues.HasRows)
                {
                    while (ddlValues.Read())
                    {
                        //VIEW NAME
                        maxTeacherName.Text = ddlValues["Title"].ToString() + ". " + ddlValues["UserFirstName"].ToString() + " " + ddlValues["UserMiddleName"].ToString() + " " + ddlValues["UserLastName"].ToString() + " " + ddlValues["UserSurname"].ToString();
                        //VIEW TITLE
                        maxDropDownListTitle.Items.Add(new ListItem(ddlValues["Title"].ToString(), ddlValues["Title"].ToString(), true));
                        maxDropDownListTitle.Items.Add(new ListItem("Mr", "Mr", true));
                        maxDropDownListTitle.Items.Add(new ListItem("Miss", "Miss", true));
                        maxDropDownListTitle.Items.Add(new ListItem("Mrs", "Mrs", true));
                        maxDropDownListTitle.Items.Add(new ListItem("Ms", "Ms", true));
                        maxDropDownListTitle.Items.Add(new ListItem("Doctor", "Doctor", true));
                        maxDropDownListTitle.Items.Add(new ListItem("Prof", "Prof", true));
                        //VIEW DATE
                        maxDropDownListBDay.Items.Add(new ListItem(ddlValues["BDay"].ToString(), ddlValues["BDay"].ToString(), true));
                        for (int i = 1; i < 32; i++)
                        {
                            maxDropDownListBDay.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
                        }

                        //VIEW MONTH
                        maxDropDownListBMonth.Items.Add(new ListItem(ddlValues["BMonth"].ToString(), ddlValues["BMonth"].ToString(), true));
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

                        //VIEW YEAR
                        maxDropDownListBYear.Items.Add(new ListItem(ddlValues["BYear"].ToString(), ddlValues["BYear"].ToString(), true));
                        for (int i = 2010; i > 1930; i--)
                        {
                            maxDropDownListBYear.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
                        }

                        //VIEW GENDER
                        maxDropDownListGender.Items.Add(new ListItem(ddlValues["Gender"].ToString(), ddlValues["Gender"].ToString(), true));
                        maxDropDownListGender.Items.Add(new ListItem("MALE", "MALE", true));
                        maxDropDownListGender.Items.Add(new ListItem("FEMALE", "FEMALE", true));

                        //VIEW MERRIED STATE
                        maxDropDownListMerried.Items.Add(new ListItem(ddlValues["Merried"].ToString(), ddlValues["Merried"].ToString(), true));
                        maxDropDownListMerried.Items.Add(new ListItem("MARRIED", "MARRIED", true));
                        maxDropDownListMerried.Items.Add(new ListItem("SINGLE", "SINGLE", true));

                        //VIEW FIRST NAME
                        maxTextBoxFirstName.Text = ddlValues["UserFirstName"].ToString();
                        //VIEW MIDDLE NAME
                        maxTextBoxMiddleName.Text = ddlValues["UserMiddleName"].ToString();
                        //VIEW LAST NAME
                        maxTextBoxLastName.Text = ddlValues["UserLastName"].ToString();
                        //VIEW SURE NAME
                        maxTextBoxSureName.Text = ddlValues["UserSurname"].ToString();
                        //VIEW NAME WITH INITIAL
                        maxTextBoxInitalName.Text = ddlValues["UserInitialName"].ToString();

                        //VIEW HOME ADDRESS ONE
                        maxTextBoxHomeAddressOne.Text = ddlValues["HomeAddressOne"].ToString();
                        //VIEW HOME ADDRESS TWO
                        maxTextBoxHomeAddressTwo.Text = ddlValues["HomeAddressTwo"].ToString();
                        //VIEW OFFICE ADDRESS ONE
                        maxTextBoxOfficeAddressOne.Text = ddlValues["OfficeAddressOne"].ToString();
                        //VIEW OFFICE ADDRESS TWO
                        maxTextBoxOfficeAddressTwo.Text = ddlValues["OfficeAddressTwo"].ToString();
                        //VIEW CITY
                        maxTextBoxCity.Text = ddlValues["City"].ToString();
                        //VIEW STATES
                        maxTextBoxStates.Text = ddlValues["States"].ToString();
                        //VIEW REGION
                        maxTextBoxRegion.Text = ddlValues["Region"].ToString();
                        //VIEW PROVINCE
                        maxTextBoxProvince.Text = ddlValues["Province"].ToString();
                        //VIEW ZIP CODE
                        maxTextBoxZipCode.Text = ddlValues["ZIPCode"].ToString();
                        //VIEW COUNTRY
                        maxTextBoxCountry.Text = ddlValues["Country"].ToString();

                        //VIEW PERSONAL EMAIL
                        maxTextBoxPersonalEmail.Text = ddlValues["PersonalEmail"].ToString();
                        //VIEW OFFICEAL EMAIL
                        maxTextBoxOfficealEmail.Text = ddlValues["OfficealEmail"].ToString();
                        //VIEW TELEPHONE NUMBER
                        maxTextBoxTelephoneNo.Text = ddlValues["TelePhone"].ToString();
                        //VIEW HANDPHONE NUMBER
                        maxTextBoxHandphoneNo.Text = ddlValues["HandPhone"].ToString();
                        //VIEW CONTACT NUMBER
                        maxTextBoxContactNo.Text = ddlValues["ContactNo"].ToString();
                        //VIEW FAX NUMBER
                        maxTextBoxFaxNo.Text = ddlValues["FaxNumber"].ToString();

                        //VIEW DRIVER LICEN
                        maxTextBoxDriverLicNo.Text = ddlValues["DriverLicen"].ToString();
                        //VIEW NIC
                        maxTextBoxNationalIdNo.Text = ddlValues["NICNumber"].ToString();
                        //VIEW USER ID
                        maxTextBoxUserId.Text = ddlValues["UserID"].ToString();
                        //VIEW INSERTED DATE
                        maxTextBoxInsertedDate.Text = ddlValues["InsertedDate"].ToString();
                        //VIEW MODIFIED DATE
                        maxTextBoxModifiedDate.Text = ddlValues["ModifiedDate"].ToString();

                    }
                }
                ddlValues.Dispose();
                ddlValues.Close();
                cmd.Connection.Close();
            }
        }


        protected void SaveBoxOne_Click(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string UserID = Request.QueryString["UserID"];
                SqlCommand cmd = new SqlCommand("UPDATE dbo.aspnet_UsersData SET Title = @Title, DateOfBirth = @DateOfBirth, Gender = @Gender, Merried = @Merried  WHERE (UserId = '" + UserID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                cmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = maxDropDownListTitle.Text;
                cmd.Parameters.Add("@DateOfBirth", SqlDbType.VarChar).Value = maxDropDownListBDay.Text + "/" + maxDropDownListBMonth.Text + "/" + maxDropDownListBYear.Text;
                cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = maxDropDownListGender.Text;
                cmd.Parameters.Add("@Merried", SqlDbType.VarChar).Value = maxDropDownListMerried.Text;

                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                Display();
            }
        }


        protected void SaveBoxTwo_Click(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string UserID = Request.QueryString["UserID"];
                SqlCommand cmd = new SqlCommand("UPDATE dbo.aspnet_UsersData SET UserFirstName = @UserFirstName, UserMiddleName = @UserMiddleName, UserLastName = @UserLastName, UserSurname = @UserSurname, UserInitialName = @UserInitialName WHERE (UserId = '" + UserID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                cmd.Parameters.Add("@UserFirstName", SqlDbType.VarChar).Value = maxTextBoxFirstName.Text;
                cmd.Parameters.Add("@UserMiddleName", SqlDbType.VarChar).Value = maxTextBoxMiddleName.Text;
                cmd.Parameters.Add("@UserLastName", SqlDbType.VarChar).Value = maxTextBoxLastName.Text;
                cmd.Parameters.Add("@UserSurname", SqlDbType.VarChar).Value = maxTextBoxSureName.Text;
                cmd.Parameters.Add("@UserInitialName", SqlDbType.VarChar).Value = maxTextBoxInitalName.Text;

                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                Display();
            }
        }


        protected void SaveBoxThree_Click(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string UserID = Request.QueryString["UserID"];
                SqlCommand cmd = new SqlCommand("UPDATE dbo.aspnet_UsersData SET HomeAddressOne = @HomeAddressOne, HomeAddressTwo = @HomeAddressTwo, OfficeAddressOne = @OfficeAddressOne, OfficeAddressTwo = @OfficeAddressTwo, City = @City, States = @States, Region = @Region, Province = @Province, ZIPCode = @ZIPCode, Country = @Country WHERE (UserId = '" + UserID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                cmd.Parameters.Add("@HomeAddressOne", SqlDbType.VarChar).Value = maxTextBoxHomeAddressOne.Text;
                cmd.Parameters.Add("@HomeAddressTwo", SqlDbType.VarChar).Value = maxTextBoxHomeAddressTwo.Text;
                cmd.Parameters.Add("@OfficeAddressOne", SqlDbType.VarChar).Value = maxTextBoxOfficeAddressOne.Text;
                cmd.Parameters.Add("@OfficeAddressTwo", SqlDbType.VarChar).Value = maxTextBoxOfficeAddressTwo.Text;
                cmd.Parameters.Add("@City", SqlDbType.VarChar).Value = maxTextBoxCity.Text;
                cmd.Parameters.Add("@States", SqlDbType.VarChar).Value = maxTextBoxStates.Text;
                cmd.Parameters.Add("@Region", SqlDbType.VarChar).Value = maxTextBoxRegion.Text;
                cmd.Parameters.Add("@Province", SqlDbType.VarChar).Value = maxTextBoxProvince.Text;
                cmd.Parameters.Add("@ZIPCode", SqlDbType.VarChar).Value = maxTextBoxZipCode.Text;
                cmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = maxTextBoxCountry.Text;

                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                Display();
            }
        }


        protected void SaveBoxFour_Click(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string UserID = Request.QueryString["UserID"];
                SqlCommand cmd = new SqlCommand("UPDATE dbo.aspnet_UsersData SET PersonalEmail = @PersonalEmail, OfficealEmail = @OfficealEmail, TelePhone = @TelePhone, HandPhone = @HandPhone, ContactNo = @ContactNo, FaxNumber = @FaxNumber WHERE (UserId = '" + UserID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();

                cmd.Parameters.Add("@PersonalEmail", SqlDbType.VarChar).Value = maxTextBoxPersonalEmail.Text;
                cmd.Parameters.Add("@OfficealEmail", SqlDbType.VarChar).Value = maxTextBoxOfficealEmail.Text;
                cmd.Parameters.Add("@TelePhone", SqlDbType.VarChar).Value = maxTextBoxTelephoneNo.Text;
                cmd.Parameters.Add("@HandPhone", SqlDbType.VarChar).Value = maxTextBoxHandphoneNo.Text;
                cmd.Parameters.Add("@ContactNo", SqlDbType.VarChar).Value = maxTextBoxContactNo.Text;
                cmd.Parameters.Add("@FaxNumber", SqlDbType.VarChar).Value = maxTextBoxFaxNo.Text;

                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                Display();
            }
        }


        protected void SaveBoxFive_Click(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string UserID = Request.QueryString["UserID"];
                SqlCommand cmd = new SqlCommand("UPDATE dbo.aspnet_UsersData SET NICNumber = @NICNumber, DriverLicen = @DriverLicen WHERE (UserId = '" + UserID + "')", new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ZionxMaxUserDB"].ConnectionString));
                cmd.Connection.Open();
                cmd.Parameters.Add("@NICNumber", SqlDbType.VarChar).Value = maxTextBoxNationalIdNo.Text;
                cmd.Parameters.Add("@DriverLicen", SqlDbType.VarChar).Value = maxTextBoxDriverLicNo.Text;

                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                Display();
            }
        }


    }
}