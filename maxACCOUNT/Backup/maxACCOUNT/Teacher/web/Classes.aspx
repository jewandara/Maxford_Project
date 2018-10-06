<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="maxACCOUNT.Teacher.web.Classes" %>


<asp:Content ID="Content1" ContentPlaceHolderID="TeacherHead" runat="server">
    <script src="../js/ScrollJquery.js" type="text/javascript"></script>
    <script src="../js/ScrollJquery_004.js" type="text/javascript"></script>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="maxTeacherMenuContentPlaceHolder" runat="server">
    <ul>
        <li><div class="max_side_menu_bar maxIconTecherHome"><a href="myPage.aspx">MY PAGE</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherProfile"><a href="Profile.aspx">PROFILE</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherTimeTable"><a href="TimeTable/Monday.aspx">TIME TABLE</a></div></li>
        <li><div class="max_side_menu_bar maxIconSelect maxIconTecherClasses"><a href="Classes.aspx">CLASSES</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherSubjects"><a href="Subjects.aspx">SUBJECTS</a></div></li>
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
				<ul class="breadcrumb">
					<li><a href="#">MAXFORD</a> <span class="divider">/</span></li>
					<li><a href="#">PROFILE</a></li>
				</ul>
			</div>
			

			<div class="row-fluid sortable">
				<div class="box span12">

					<div class="box-header well" data-original-title>
						<h2><i class="icon-edit"></i> Maxford Teacher Classes</h2>
					</div>

					<div class="box-content">
						<form class="form-horizontal">
						  <fieldset>
							<legend><asp:Label ID="maxTeacherName" runat="server" Text="Label"></asp:Label></legend>
							<div class="control-group">


                	            <div class="box-content">
						            <table class="table">
							                <thead>
								                <tr>
									                <th>Class Name</th>
									                <th>Subject</th>   
                                                    <th>Grade</th>  
                                                    <th>Date</th>
									                <th>Time</th>
                                                    <th>SELECT</th>                                     
								                </tr>
							                </thead>   
							                <tbody

                                                <asp:Label ID="maxClassData" runat="server" Text=""></asp:Label>


<%--                                                <asp:Repeater ID="RepeaterTeacherClassesBody" runat="server" DataSourceID="TeacherClassesBodySqlDataSource">
                                                    <ItemTemplate>
								                        <tr>
									                        <td class="center"><%# Eval("TimeName")%></td>
									                        <td class="center"><%# Eval("SubjectName")%></td>
									                        <td class="center"><%# Eval("GradeName")%></td>
									                        <td class="center"><%# Eval("TimeDate")%></td>
									                        <td class="center"><%# Eval("TimeDuretion")%></td>
									                        <td class="center">
                                                	            <a class="btn btn-success" href='Class/Edit.aspx?ClassID=<%# Eval("TimeID")%>' >
										                            <i class="icon-edit icon-white"></i>
										                            Edit                                           
									                            </a>
									                            <a class="btn btn-danger" href='Class/Delete.aspx?ClassID=<%# Eval("TimeID")%>'>
										                            <i class="icon-trash icon-white"></i> 
										                            Delete
									                            </a>
                                                            </td>                                       
								                        </tr>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                                <asp:SqlDataSource ID="TeacherClassesBodySqlDataSource" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:ZionxMaxUserDB %>" 
                                                    SelectCommand="SELECT * FROM [vw_aspnet_TimeTable] WHERE (UserID = @UserID )">
                                                    <SelectParameters>
                                                        <asp:QueryStringParameter Name="UserID" QueryStringField="UserID" Type="String" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>--%>
							                </tbody>
						                </table> 
                                        
                                        <br /><hr />

                                            <label class="control-label" for="typeahead">Create A New Class In Maxford</label>
                                            <a href="Class/New.aspx" CssClass="btn btn-primary">NEW CLASS</a>

                                        <br /><br /><br />


					            </div>



							    <div class="form-actions">
                                Help Desk Administrator (Rachitha) : +94 773632682 
                                <i style=" margin-right:-100px;">[ 6:00 PM &nbsp&nbsp to &nbsp&nbsp 11:PM ]</i>
							    </div>

                          </div>
						  </fieldset>
						</form>   

					</div>
				</div>
			</div>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMaxfordTeacherScriptFooter" runat="server">
</asp:Content>
