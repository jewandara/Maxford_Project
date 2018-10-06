<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="maxACCOUNT.Teacher.web.Class.Delete" %>

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
					<li><a href="#">CLASSES</a> <span class="divider">/</span></li>
                    <li><a href="#">DELETE</li>
				</ul>
			</div>


			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-edit"></i> Maxford Teacher Personal Profile - Delete Class</h2>
					</div>
					<div class="box-content">
						<form class="form-horizontal">
						  <fieldset>

							<legend><asp:Label ID="maxTeacherName" runat="server" Text=""></asp:Label></legend>

                              

                            <asp:Panel ID="maxPanelDelete" runat="server">
                            <table style=" display:block; border: 1px solid #DEDEDE; border-radius:5px; padding:15px; padding-left:200px;">
                                <tr>
                                    <th width="40%"></th>
                                    <th width="10%"></th>
                                    <th width="50%"></th>
                                    <th width="3%"></th>
                                    <th></th>
                                </tr>
                                <tr>
                                    <td><Br/></td>
                                    <td> </td>
                                    <td> </td>
                                    <td> </td>
                                    <th> </th>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Class Name</label></td>
                                    <td align="center" valign="top">:</td>
                                    <td align="left" valign="top"><asp:Label ID="maxLabelClassName" runat="server" Text="Label"></asp:Label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Class Date</label></td>
                                    <td align="center" valign="top">:</td>
                                    <td align="left" valign="top"><asp:Label ID="maxLabelClassDate" runat="server" Text="Label"></asp:Label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Class Duration</label></td>
                                    <td align="center" valign="top">:</td>
                                    <td align="left" valign="top"><asp:Label ID="maxLabelDuration" runat="server" Text="Label"></asp:Label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Subject</label></td>
                                    <td align="center" valign="top">:</td>
                                    <td align="left" valign="top"><asp:Label ID="maxLabelSubject" runat="server" Text="Label"></asp:Label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Grade</label></td>
                                    <td align="center" valign="top">:</td>
                                    <td align="left" valign="top"><asp:Label ID="maxLabelGrade" runat="server" Text="Label"></asp:Label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td><Br/></td>
                                    <td> </td>
                                    <td> </td>
                                    <td> </td>
                                    <th> </th>
                                </tr>

                                <tr>
                                    <td align="right" valign="top"><asp:Button ID="Button1" runat="server" Text="CANCEL" CssClass="btn btn-primary" OnClick="CancelDeleteClass_Click" /></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:Button ID="Button3" runat="server" Text="DELETE" CssClass="btn btn-danger" OnClick="DeleteClass_Click" /></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                            </table>
                            </asp:Panel>


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
