<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="maxACCOUNT.Teacher.web.Events" %>

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
        <li><div class="max_side_menu_bar maxIconSelect maxIconTecherEvents"><a href="Events.aspx">EVENTS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherMail"><a href="Mails.aspx">MAILS<div class="max_slide_menu_data_number">0</div></a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherSettings"><a href="Settings.aspx">SETINGS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherAbout"><a href="About.aspx">ABOUT</a></div></li>
    </ul>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderTeacherBody" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Event Page is under Construction."></asp:Label>
	<%--		<div>
                <br /><h4>Maxford Teacher's Student Only</h4><br />
				<ul class="breadcrumb">
					<li><a href="../Default.aspx">MAXFORD</a> <span class="divider">/</span></li>
					<li><a href="Events.aspx">EVENTS</a></li>
				</ul>
			</div>
			



			<div class="row-fluid sortable">
				<div class="box span12">

					<div class="box-header well" data-original-title>
						<h2> NEW EVENT</h2>
					</div>

					<div class="box-content">

						<form class="form-horizontal">
						  <fieldset>

							<div class="control-group">
							  <label class="control-label" for="typeahead">Subject Of The Article</label>
							  <div class="controls">
                                <asp:TextBox ID="TextBox1" runat="server" Width="50%"></asp:TextBox>
								<p class="help-block"></p>
							  </div>
							</div>

							<div class="control-group">
							  <label class="control-label" for="date01">Discription Of The Article</label>
							  <div class="controls">
                                <asp:TextBox ID="TextBox2" runat="server" Width="50%"></asp:TextBox>
								<p class="help-block"></p>
							  </div>
							</div>

							<div class="control-group">
							  <label class="control-label" for="fileInput">Click The Button To Upload The File</label>
							  <div class="controls">
								<input class="input-file uniform_on" id="fileInput" type="file">
							  </div>
							</div>      
                                
							<div class="control-group">
							  <label class="control-label" for="fileInput">Add Picture To Your Article</label>
							  <div class="controls">
								<input class="input-file uniform_on" id="file1" type="file">
							  </div>
							</div>    

							<div class="form-actions">
							  <button type="submit" class="btn btn-primary">SAVE ARTICLE</button>
							  <button type="reset" class="btn">CANCEL</button>
							</div>

						  </fieldset>
						</form>   

					</div>
				</div>

			</div>
--%>
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMaxfordTeacherScriptFooter" runat="server">
</asp:Content>
