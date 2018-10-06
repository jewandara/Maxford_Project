<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="New.aspx.cs" Inherits="maxACCOUNT.Teacher.web.Class.New" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TeacherHead" runat="server">
    <script src="../../js/ScrollJquery.js" type="text/javascript"></script>
    <script src="../../js/ScrollJquery_004.js" type="text/javascript"></script>
</asp:Content>



<asp:Content ID="Content4" ContentPlaceHolderID="maxTeacherMenuContentPlaceHolder" runat="server">
    <ul>
        <li><div class="max_side_menu_bar maxIconTecherHome"><a href="../myPage.aspx">MY PAGE</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherProfile"><a href="../Profile.aspx">PROFILE</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherTimeTable"><a href="../TimeTable/Monday.aspx">TIME TABLE</a></div></li>
        <li><div class="max_side_menu_bar maxIconSelect maxIconTecherClasses"><a href="../Classes.aspx">CLASSES</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherSubjects"><a href="../Subjects.aspx">SUBJECTS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherStudents"><a href="../Students.aspx">STUDENTS<div class="max_slide_menu_data_number">0</div></a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherArticals"><a href="../Articles.aspx">ARICALS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherEvents"><a href="../Events.aspx">EVENTS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherMail"><a href="../Mails.aspx">MAILS<div class="max_slide_menu_data_number">0</div></a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherSettings"><a href="../Settings.aspx">SETINGS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherAbout"><a href="../About.aspx">ABOUT</a></div></li>
    </ul>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderTeacherBody" runat="server">

			<div>
				<ul class="breadcrumb">
					<li><a href="#">MAXFORD</a> <span class="divider">/</span></li>
					<li><a href="#">NEW CLASS</a></li>
				</ul>
			</div>

			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-edit"></i> Maxford Teacher Add New Class</h2>
					</div>
					<div class="box-content">

						<form class="form-horizontal">
						  <fieldset>
							<legend>New Class</legend>

                            <table style=" display:block; border: 1px solid #DEDEDE; border-radius:5px; padding:15px;">
                                <tr>
                                    <th width="15%"></th>
                                    <th width="3%"></th>
                                    <th width="50%"></th>
                                    <th width="3%"></th>
                                    <th></th>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">User ID</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxUserId" runat="server" Width="450px" ReadOnly="True"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Class Name</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxClassName" runat="server" Width="450px"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label2" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Subject</label></td>
                                    <td align="right" valign="top">
                                    <td>
                                        <table  Width="460px">
                                            <tr>
                                                <th width="25%"><asp:RadioButton ID="RadioButtonPrimary" runat="server" 
                                                        Text="Primary" Checked="True" GroupName="classTYPE"
                                                        oncheckedchanged="RadioButtonSecondary_CheckedChanged" /></th>
                                                <th width="25%"><asp:RadioButton ID="RadioButtonSecondary" runat="server" 
                                                        Text="Secondary" GroupName="classTYPE" 
                                                        oncheckedchanged="RadioButtonSecondary_CheckedChanged" /></th>
                                                <th width="25%"><asp:RadioButton ID="RadioButtonOrdinary" runat="server" 
                                                        Text="Ordinary" GroupName="classTYPE"
                                                        oncheckedchanged="RadioButtonSecondary_CheckedChanged" /></th>
                                                <th width="25%"><asp:RadioButton ID="RadioButtonAdvanced" runat="server" 
                                                        Text="Advanced" GroupName="classTYPE"
                                                        oncheckedchanged="RadioButtonSecondary_CheckedChanged" /></th>
                                            </tr>
                                        </table>
                                    </td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Class Date</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"> 
                                        <asp:DropDownList ID="maxDropDownListClassDate" runat="server"  Width="460px" >
                                            <asp:ListItem Text="Monday" Value="Monday"></asp:ListItem>
                                            <asp:ListItem Text="Tuesday" Value="Tuesday"></asp:ListItem>
                                            <asp:ListItem Text="Wednesday" Value="Wednesday"></asp:ListItem>
                                            <asp:ListItem Text="Thursday" Value="Thursday"></asp:ListItem>
                                            <asp:ListItem Text="Friday" Value="Friday"></asp:ListItem>
                                            <asp:ListItem Text="Saturday" Value="Saturday"></asp:ListItem>
                                            <asp:ListItem Text="Sunday" Value="Sunday"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Class Start Time</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top">
                                        <asp:DropDownList ID="maxDropDownListStartHour" runat="server"  Width="130px" >
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                            <asp:ListItem Text="7" Value="7"></asp:ListItem>
                                            <asp:ListItem Text="8" Value="8"></asp:ListItem>
                                            <asp:ListItem Text="9" Value="8"></asp:ListItem>
                                            <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                            <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                            <asp:ListItem Text="12" Value="12"></asp:ListItem>
                                        </asp:DropDownList> : 
                                        <asp:DropDownList ID="maxDropDownListStartMinit" runat="server"  Width="130px" >
                                            <asp:ListItem Text="00" Value="00"></asp:ListItem>
                                            <asp:ListItem Text="15" Value="15"></asp:ListItem>
                                            <asp:ListItem Text="30" Value="30"></asp:ListItem>
                                            <asp:ListItem Text="45" Value="45"></asp:ListItem>
                                        </asp:DropDownList>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:DropDownList ID="maxDropDownListStartTime" runat="server"  Width="140px" >
                                            <asp:ListItem Text="AM" Value="AM"></asp:ListItem>
                                            <asp:ListItem Text="PM" Value="PM"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Class End Time</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top">
                                        <asp:DropDownList ID="maxDropDownListEndHour" runat="server"  Width="130px" >
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                            <asp:ListItem Text="7" Value="7"></asp:ListItem>
                                            <asp:ListItem Text="8" Value="8"></asp:ListItem>
                                            <asp:ListItem Text="9" Value="8"></asp:ListItem>
                                            <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                            <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                            <asp:ListItem Text="12" Value="12"></asp:ListItem>
                                        </asp:DropDownList> : 
                                        <asp:DropDownList ID="maxDropDownListEndMinit" runat="server"  Width="130px" >
                                            <asp:ListItem Text="00" Value="00"></asp:ListItem>
                                            <asp:ListItem Text="15" Value="15"></asp:ListItem>
                                            <asp:ListItem Text="30" Value="30"></asp:ListItem>
                                            <asp:ListItem Text="45" Value="45"></asp:ListItem>
                                        </asp:DropDownList>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:DropDownList ID="maxDropDownListEndTime" runat="server"  Width="140px" >
                                            <asp:ListItem Text="AM" Value="AM"></asp:ListItem>
                                            <asp:ListItem Text="PM" Value="PM"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Subject</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:DropDownList ID="maxSubjectNames" runat="server" Width="460px"></asp:DropDownList></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Grade</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:DropDownList ID="maxGradeNames" runat="server" Width="460px"></asp:DropDownList></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Hall</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:DropDownList ID="maxHallNames" runat="server" Width="460px"></asp:DropDownList></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>

                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:Button ID="Button3" runat="server" Text="SAVE" CssClass="btn btn-primary" OnClick="SaveNewClass_Click" /></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><a class="btn btn-info" target="_blank" href='http://www.maxford.lk/maxTeacher/teacher.aspx?UserID=<%#Eval("UserID")%>'>VIEW MY PAGE</a></td>
                                </tr>
                            </table>

                            <br /><br /><br />

							<div class="form-actions">
                            Help Desk Administrator (Rachitha) : +94 773632682 
                            <i style=" margin-right:-100px;">[ 6:00 PM &nbsp&nbsp to &nbsp&nbsp 11:PM ]</i>
							</div>

						  </fieldset>
						</form>

					</div>
				</div>
			</div>

</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMaxfordTeacherScriptFooter" runat="server">
		<footer>
			<p class="pull-left">&copy; <a href="http://maxford.lk" target="_blank">Maxford.lk</a> 2015</p>
			<p class="pull-right">Powered by: <a href="http://zionx.net16.net">ZIONX</a></p>
		</footer>
</asp:Content>
