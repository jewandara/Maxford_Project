using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using System.Net.Mail;

namespace MAXFORD.Account
{
    public partial class Register : System.Web.UI.Page
    {
        private String ALLSTDATA = "";

        protected void Page_Init(object sender, EventArgs e)
        {
            Display();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.IsInRole("Administrator"))
            {
                Response.Redirect("~/Account/AdminRedirect.aspx");
            }
            else if (HttpContext.Current.User.IsInRole("Teacher"))
            {
                Response.Redirect("~/Account/Teacher/Default.aspx");
            }
            else if (HttpContext.Current.User.IsInRole("Student"))
            {
                Response.Redirect("~/Account/Student/Default.aspx");
            }
            else if (HttpContext.Current.User.IsInRole("MaxUser"))
            {
                Response.Redirect("~/Account/MaxUser/Default.aspx");
            }
            else 
            { 
                //RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"]; 
            }
        }

        public void Display()
        {
            int yearNow = Int32.Parse(DateTime.Now.Year.ToString());

            maxDropDownListBDay.Dispose();
            maxDropDownListBMonth.Dispose();
            maxDropDownListBYear.Dispose();
            maxDropDownListGender.Dispose();
            maxGradeCatogoryDropDownList.Dispose();

            for (int i = 1; i < 32; i++)
            {
                maxDropDownListBDay.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
            }
            maxDropDownListBDay.Items.Insert(0, new ListItem(" DATE ", "0"));
            maxDropDownListBDay.SelectedIndex = 0;

            //VIEW MONTH
            maxDropDownListBMonth.SelectedIndex = 0;
            maxDropDownListBMonth.Items.Add(new ListItem(" MONTH ", "0", true));
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
            for (int i = yearNow - 3; i > yearNow - 40; i--)
            {
                maxDropDownListBYear.Items.Add(new ListItem(i.ToString(), i.ToString(), true));
            }
            maxDropDownListBYear.Items.Insert(0, new ListItem(" YEAR ", "0"));
            maxDropDownListBYear.SelectedIndex = 0;

            //VIEW GENDER
            maxDropDownListGender.SelectedIndex = 0;
            maxDropDownListGender.Items.Add(new ListItem(" SELECT YOUR GENDER ", "0", true));
            maxDropDownListGender.Items.Add(new ListItem("MALE", "MALE", true));
            maxDropDownListGender.Items.Add(new ListItem("FEMALE", "FEMALE", true));
           

            //VIEW CATOGORY
            maxGradeCatogoryDropDownList.SelectedIndex = 0;
            maxGradeCatogoryDropDownList.Items.Add(new ListItem(" SELECT YOUR CATOGORY ", "0", true));
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
            maxGradeCatogoryDropDownList.Items.Add(new ListItem("Old Maxfordian", "20", true));

        }

        protected void CustomValidatorIAgree_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = CheckBoxTermsAndConditions.Checked;
        }

        protected void ButtonNextStep_Click(object sender, EventArgs e)
        {
            if (checkYearGradeCondition())
            {
                PanelCondition.Visible = false;
                if (CheckBoxTermsAndConditions.Checked)
                {
                    ALLSTDATA = "RID=" + Request.QueryString["RgID"] + "&FN=" + TextBoxFirstName.Text + "&LN=" + TextBoxLastName.Text + "&IN=" + TextBoxInitalName.Text + "&GN=" + maxDropDownListGender.Text + "&BD=" + maxDropDownListBDay.Text + "&BM=" + maxDropDownListBMonth.Text + "&BY=" + maxDropDownListBYear.Text + "&GC=" + maxGradeCatogoryDropDownList.SelectedItem.ToString() + "&HA=" + TextBoxHomeAddress.Text + "&C=" + TextBoxCity.Text + "&HP1=" + TextBox2.Text + TextBoxContactNumber.Text + "&HP2=" + TextBox1.Text + TextBoxTeleNumber.Text;
                    PanelCondition.Visible = true;
                    Response.Redirect("~/Account/Access.aspx?" + ALLSTDATA);
                }
            }
            else { PanelCondition.Visible = true; }
        }

        private Boolean checkYearGradeCondition()
        {
            Boolean checkGrade = false;
            int yearNow = Int32.Parse(DateTime.Now.Year.ToString());
            int yearSelect = Int32.Parse(maxDropDownListBYear.SelectedValue.ToString());

            if (!CheckBoxGradeCondition.Checked)
            {
                if ((yearNow - yearSelect) <= 5)
                {
                    if (maxGradeCatogoryDropDownList.SelectedIndex == 1 || maxGradeCatogoryDropDownList.SelectedIndex == 2 || maxGradeCatogoryDropDownList.SelectedIndex == 3 || maxGradeCatogoryDropDownList.SelectedIndex == 4) { checkGrade = true; }
                    else { checkGrade = false; }
                }
                else if ((yearNow - yearSelect) == 6)
                {
                    if (maxGradeCatogoryDropDownList.SelectedIndex == 2 || maxGradeCatogoryDropDownList.SelectedIndex == 3 || maxGradeCatogoryDropDownList.SelectedIndex == 4) { checkGrade = true; }
                    else { checkGrade = false; }
                }
                else if ((yearNow - yearSelect) == 7)
                {
                    if (maxGradeCatogoryDropDownList.SelectedIndex == 3 || maxGradeCatogoryDropDownList.SelectedIndex == 4 || maxGradeCatogoryDropDownList.SelectedIndex == 5) { checkGrade = true; }
                    else { checkGrade = false; }
                }
                else if ((yearNow - yearSelect) == 8)
                {
                    if (maxGradeCatogoryDropDownList.SelectedIndex == 4 || maxGradeCatogoryDropDownList.SelectedIndex == 5 || maxGradeCatogoryDropDownList.SelectedIndex == 6) { checkGrade = true; }
                    else { checkGrade = false; }
                }
                else if ((yearNow - yearSelect) == 9)
                {
                    if (maxGradeCatogoryDropDownList.SelectedIndex == 5 || maxGradeCatogoryDropDownList.SelectedIndex == 6 || maxGradeCatogoryDropDownList.SelectedIndex == 7) { checkGrade = true; }
                    else { checkGrade = false; }
                }
                else if ((yearNow - yearSelect) == 10)
                {
                    if (maxGradeCatogoryDropDownList.SelectedIndex == 6 || maxGradeCatogoryDropDownList.SelectedIndex == 7 || maxGradeCatogoryDropDownList.SelectedIndex == 8) { checkGrade = true; }
                    else { checkGrade = false; }
                }
                else if ((yearNow - yearSelect) == 11)
                {
                    if (maxGradeCatogoryDropDownList.SelectedIndex == 7 || maxGradeCatogoryDropDownList.SelectedIndex == 8 || maxGradeCatogoryDropDownList.SelectedIndex == 9) { checkGrade = true; }
                    else { checkGrade = false; }
                }
                else if ((yearNow - yearSelect) == 12)
                {
                    if (maxGradeCatogoryDropDownList.SelectedIndex == 8 || maxGradeCatogoryDropDownList.SelectedIndex == 9 || maxGradeCatogoryDropDownList.SelectedIndex == 10) { checkGrade = true; }
                    else { checkGrade = false; }
                }
                else if ((yearNow - yearSelect) == 13)
                {
                    if (maxGradeCatogoryDropDownList.SelectedIndex == 9 || maxGradeCatogoryDropDownList.SelectedIndex == 10 || maxGradeCatogoryDropDownList.SelectedIndex == 11) { checkGrade = true; }
                    else { checkGrade = false; }
                }
                else if ((yearNow - yearSelect) == 14)
                {
                    if (maxGradeCatogoryDropDownList.SelectedIndex == 10 || maxGradeCatogoryDropDownList.SelectedIndex == 11 || maxGradeCatogoryDropDownList.SelectedIndex == 12) { checkGrade = true; }
                    else { checkGrade = false; }
                }
                else if ((yearNow - yearSelect) == 15)
                {
                    if (maxGradeCatogoryDropDownList.SelectedIndex == 11 || maxGradeCatogoryDropDownList.SelectedIndex == 12 || maxGradeCatogoryDropDownList.SelectedIndex == 13) { checkGrade = true; }
                    else { checkGrade = false; }
                }
                else if ((yearNow - yearSelect) == 16)
                {
                    if (maxGradeCatogoryDropDownList.SelectedIndex == 12 || maxGradeCatogoryDropDownList.SelectedIndex == 13 || maxGradeCatogoryDropDownList.SelectedIndex == 14) { checkGrade = true; }
                    else { checkGrade = false; }
                }
                else if ((yearNow - yearSelect) == 17)
                {
                    if (maxGradeCatogoryDropDownList.SelectedIndex == 13 || maxGradeCatogoryDropDownList.SelectedIndex == 14 || maxGradeCatogoryDropDownList.SelectedIndex == 15) { checkGrade = true; }
                    else { checkGrade = false; }
                }
                else if ((yearNow - yearSelect) == 18)
                {
                    if (maxGradeCatogoryDropDownList.SelectedIndex == 14 || maxGradeCatogoryDropDownList.SelectedIndex == 15 || maxGradeCatogoryDropDownList.SelectedIndex == 16 || maxGradeCatogoryDropDownList.SelectedIndex == 17 || maxGradeCatogoryDropDownList.SelectedIndex == 20) { checkGrade = true; }
                    else { checkGrade = false; }
                }
                else if ((yearNow - yearSelect) == 19)
                {
                    if (maxGradeCatogoryDropDownList.SelectedIndex == 15 || maxGradeCatogoryDropDownList.SelectedIndex == 16 || maxGradeCatogoryDropDownList.SelectedIndex == 17 || maxGradeCatogoryDropDownList.SelectedIndex == 20) { checkGrade = true; }
                    else { checkGrade = false; }
                }
                else if ((yearNow - yearSelect) == 20)
                {
                    if (maxGradeCatogoryDropDownList.SelectedIndex == 16 || maxGradeCatogoryDropDownList.SelectedIndex == 17 || maxGradeCatogoryDropDownList.SelectedIndex == 20) { checkGrade = true; }
                    else { checkGrade = false; }
                }
                else if ((yearNow - yearSelect) >= 21 && (yearNow - yearSelect) < 60)
                {
                    if (maxGradeCatogoryDropDownList.SelectedIndex == 17 || maxGradeCatogoryDropDownList.SelectedIndex == 20) { checkGrade = true; }
                    else { checkGrade = false; }
                }
                else { checkGrade = false; }
                if (!checkGrade) { LabelSubmitError.Text = "Your birthday doesn't match with your selected grade."; }
                else { LabelSubmitError.Text = ""; return true; }
                return false;
            }
            else { return true; }
        }

    }
}