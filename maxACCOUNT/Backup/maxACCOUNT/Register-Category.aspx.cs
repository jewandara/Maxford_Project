using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maxACCOUNT
{
    public partial class Register_Category : System.Web.UI.Page
    {
        public void Page_Init(object o, EventArgs e)
        {
            Display();
        }


        public void Display()
        {

            for (int i = 1; i < 32; i++)
            {
                maxDropDownListBDay.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
            }

            //VIEW MONTH
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

            //VIEW YEAR=
            for (int i = 2010; i > 1930; i--)
            {
                maxDropDownListBYear.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
            }

            //VIEW GENDER
            maxDropDownListGender.Items.Add(new ListItem("MALE", "MALE", true));
            maxDropDownListGender.Items.Add(new ListItem("FEMALE", "FEMALE", true));


            for (int i = 1; i < 32; i++)
            {
                maxDropDownListBDay.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
            }

            //VIEW MONTH
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Select Your Grade", "0", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Pre Primary Student ( 1st Year )", "1", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Pre Primary Student ( 2st Year )", "2", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 01 Student", "3", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 02 Student", "4", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 03 Student", "5", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 04 Student", "6", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 05 Student", "7", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 06 Student", "8", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 07 Student", "9", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 08 Student", "10", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 09 Student", "11", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 10 Student", "12", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 11 Student", "13", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 12 Student", "14", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 13 Student", "15", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Grade 13 Student ( School Leaver )", "16", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Other Atending Student", "17", true));
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Old Maxfordian", "4", true));

        }






    }
}