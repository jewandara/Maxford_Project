<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Subjects.aspx.cs" Inherits="maxACCOUNT.Teacher.web.Subjects" %>

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
        <li><div class="max_side_menu_bar maxIconSelect maxIconTecherSubjects"><a href="Subjects.aspx">SUBJECTS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherStudents"><a href="Students.aspx">STUDENTS<div class="max_slide_menu_data_number">0</div></a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherArticals"><a href="Articles.aspx">ARICALS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherEvents"><a href="Events.aspx">EVENTS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherMail"><a href="Mails.aspx">MAILS<div class="max_slide_menu_data_number">0</div></a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherSettings"><a href="Settings.aspx">SETINGS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherAbout"><a href="About.aspx">ABOUT</a></div></li>
    </ul>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderTeacherBody" runat="server">

			<div>
                <br /><h4>Maxford Teacher Subject</h4><br />
				<ul class="breadcrumb">
					<li><a href="../Default.aspx">MAXFORD</a> <span class="divider">/</span></li>
					<li><a href="Subjects.aspx">SUBJECTS</a></li>
				</ul>
			</div>

            <br /><br />Page Is Under Construction


	<%--		<div class="row-fluid sortable">	
				<div class="box span6">
					<div class="box-header well" data-original-title>
						<h2>Grade</h2>
					</div>
					<div class="box-content">
						<table class="table table-bordered">
							  <thead>
								  <tr>
									  <th>Grade</th>
									  <th>Number Of Student</th>
									  <th>Attending Students</th>
									  <th>View</th>                                          
								  </tr>
							  </thead>   
							  <tbody>
								<tr>
									<td>Muhammad Usman</td>
									<td class="center">107</td>
									<td class="center">3</td>
									<td class="center"><span class="label label-success">Active</span>
									</td>                                       
								</tr>
								<tr>
									<td>White Horse</td>
									<td class="center">23</td>
									<td class="center">21</td>
									<td class="center">
										<span class="label label-important">Banned</span>
									</td>                                       
								</tr>
								<tr>
									<td>Sheikh Heera</td>
									<td class="center">34</td>
									<td class="center">4</td>
									<td class="center">
										<span class="label">Inactive</span>
									</td>                                        
								</tr>                                  
							  </tbody>
						 </table>     
					</div>
				</div>
				
				<div class="box span6">
					<div class="box-header well" data-original-title>
						<h2>Subjects</h2>
					</div>
					<div class="box-content">
						<table class="table table-condensed">
							  <thead>
								  <tr>
									  <th>Subject Name</th>
									  <th>Number Of Student</th>
									  <th>Grade</th>
									  <th>View</th>                                          
								  </tr>
							  </thead>   
							  <tbody>
								<tr>
									<td>Muhammad Usman</td>
									<td class="center">12</td>
									<td class="center">Member</td>
									<td class="center">
										<span class="label label-success">Active</span>
									</td>                                       
								</tr>
								<tr>
									<td>White Horse</td>
									<td class="center">12</td>
									<td class="center">Staff</td>
									<td class="center">
										<span class="label label-important">Banned</span>
									</td>                                       
								</tr>
								<tr>
									<td>Sheikh Heera</td>
									<td class="center">123</td>
									<td class="center">Admin</td>
									<td class="center">
										<span class="label">Inactive</span>
									</td>                                        
								</tr>                                  
							  </tbody>
						 </table>   
					</div>
				</div>
			
			</div>


			
			<div class="row-fluid sortable">	
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2>Combined All</h2>
					</div>
					<div class="box-content">
  
						<form class="form-horizontal">
						  <fieldset>
							<legend>Datepicker, Autocomplete, WYSIWYG</legend>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Auto complete </label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="typeahead"  data-provide="typeahead" data-items="4" data-source='["Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Dakota","North Carolina","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming"]'>
								<p class="help-block">Start typing to activate auto complete!</p>
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="date01">Date input</label>
							  <div class="controls">
								<input type="text" class="input-xlarge datepicker" id="date01" value="02/16/12">
							  </div>
							</div>

							<div class="control-group">
							  <label class="control-label" for="fileInput">File input</label>
							  <div class="controls">
								<input class="input-file uniform_on" id="fileInput" type="file">
							  </div>
							</div>          
							<div class="control-group">
							  <label class="control-label" for="textarea2">Textarea WYSIWYG</label>
							  <div class="controls">
								<textarea class="cleditor" id="textarea2" rows="3"></textarea>
							  </div>
							</div>
							<div class="form-actions">
							  <button type="submit" class="btn btn-primary">Save changes</button>
							  <button type="reset" class="btn">Cancel</button>
							</div>
						  </fieldset>
						</form>  



					</div>
				</div>
			</div>--%>



</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMaxfordTeacherScriptFooter" runat="server">
</asp:Content>
