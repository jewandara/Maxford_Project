﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="maxACCOUNT.Teacher.web.About" %>


<asp:Content ID="Content1" ContentPlaceHolderID="TeacherHead" runat="server">
    <script src="../js/ScrollJquery.js" type="text/javascript"></script>
    <script src="../js/ScrollJquery_004.js" type="text/javascript"></script>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="maxTeacherMenuContentPlaceHolder" runat="server">
    <ul>
        <li><div class="max_side_menu_bar maxIconTecherHome"><a href="myPage.aspx">MY PAGE</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherProfile"><a href="Profile.aspx">PROFILE</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherTimeTable"><a href="TimeTable/Monday.aspx">TIME TABLE</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherClasses"><a href="Classes.aspx">CLASSES</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherSubjects"><a href="Subjects.aspx">SUBJECTS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherStudents"><a href="Students.aspx">STUDENTS<div class="max_slide_menu_data_number">0</div></a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherArticals"><a href="Articles.aspx">ARICALS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherEvents"><a href="Events.aspx">EVENTS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherMail"><a href="Mails.aspx">MAILS<div class="max_slide_menu_data_number">0</div></a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherSettings"><a href="Settings.aspx">SETINGS</a></div></li>
        <li><div class="max_side_menu_bar maxIconSelect maxIconTecherAbout"><a href="About.aspx">ABOUT</a></div></li>
    </ul>
</asp:Content>


 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderTeacherBody" runat="server">

    <asp:Label ID="Label1" runat="server" Text="About Page is under Construction."></asp:Label>
    <br />
	    <div class="form-actions">
        Help Desk Administrator (Rachitha) : +94 773632682 
        <i style=" margin-right:-100px;">[ 7:00 PM &nbsp&nbsp to &nbsp&nbsp 11:PM ]</i>
	    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMaxfordTeacherScriptFooter" runat="server">
</asp:Content>
