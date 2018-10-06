<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Thursday.aspx.cs" Inherits="maxACCOUNT.Teacher.web.TimeTable.Thursday" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TeacherHead" runat="server">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script src="../../js/ScrollJquery.js" type="text/javascript"></script>
    <script src="../../js/ScrollJquery_004.js" type="text/javascript"></script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="maxTeacherMenuContentPlaceHolder" runat="server">
    <ul>
        <li><div class="max_side_menu_bar maxIconTecherHome"><a href="../myPage.aspx">MY PAGE</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherProfile"><a href="../Profile.aspx">PROFILE</a></div></li>
        <li><div class="max_side_menu_bar maxIconSelect maxIconTecherTimeTable"><a href="Monday.aspx">TIME TABLE</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherClasses"><a href="../Classes.aspx">CLASSES</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherSubjects"><a href="../Subjects.aspx">SUBJECTS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherStudents"><a href="../Students.aspx">STUDENTS<div class="max_slide_menu_data_number">0</div></a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherArticals"><a href="../Articles.aspx">ARICALS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherEvents"><a href="../Events.aspx">EVENTS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherMail"><a href="../Mails.aspx">MAILS<div class="max_slide_menu_data_number">0</div></a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherSettings"><a href="../Settings.aspx">SETINGS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherAbout"><a href="../About.aspx">ABOUT</a></div></li>
    </ul>
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderTeacherBody" runat="server">

			<div>
				<ul class="breadcrumb">
					<li><a href="../../Default.aspx">MAXFORD</a> <span class="divider">/</span></li>
					<li><a href="Monday.aspx">TIME TABLE</a> <span class="divider">/</span></li>
                    <li><a href="Thursday.aspx">THURSDAY</a> </li>
				</ul>
			</div>

            <table class="tt_timetable" style="background-color: #F0F0F0; border:1px solid #033;  border-top:7px solid #033;">
                <thead>
                    <tr>
	                    <th></th>	
	                    <th><a href="Monday.aspx" class="max_row_date">Monday</a></th>	
	                    <th><a href="Tuesday.aspx" class="max_row_date">Tuesday</a></th>	
	                    <th><a href="Wednesday.aspx" class="max_row_date">Wednesday</a></th>	
	                    <th><a href="Thursday.aspx" class="max_row_date max_row_date_active">Thursday</a></th>	
	                    <th><a href="Friday.aspx" class="max_row_date" >Friday</a></th>	
	                    <th><a href="Saturday.aspx" class="max_row_date" >Saturday</a></th>	
	                    <th><a href="Sunday.aspx" class="max_row_date" >Sunday</a></th>	
                    </tr>
                </thead>
            <tbody>
            <tr class="row_1 row_gray" >
                <td style="border-top:2px solid #033;"></td>
                <td style="border-top:2px solid #033;"></td>
                <td style="border-top:2px solid #033;"></td>
                <td style="border-top:2px solid #033;"></td>
                <td></td>
                <td style="border-top:2px solid #033;"></td>
                <td style="border-top:2px solid #033;"></td>
                <td style="border-top:2px solid #033;"></td>
            </tr>
                <asp:Label ID="Label1" runat="server" Text="SEVER ERROR"></asp:Label>
            </tbody>
            </table>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderMaxfordTeacherScriptFooter" runat="server">
</asp:Content>
