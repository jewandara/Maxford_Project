<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="maxACCOUNT.Teacher.Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="TeacherHead" runat="server">
    <script src="js/ScrollJquery.js" type="text/javascript"></script>
    <script src="js/ScrollJquery_004.js" type="text/javascript"></script>
    <script src="http://www.maxford.lk/Max_Data/Max_Editor/ckeditor.js" type="text/javascript"></script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="maxTeacherMenuContentPlaceHolder" runat="server">
    <ul>
        <li><div class="max_side_menu_bar maxIconTecherHome"><a href="web/myPage.aspx">MY PAGE</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherProfile"><a href="web/Profile.aspx">PROFILE</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherTimeTable"><a href="web/TimeTable/Monday.aspx">TIME TABLE</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherClasses"><a href="web/Classes.aspx">CLASSES</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherSubjects"><a href="web/Subjects.aspx">SUBJECTS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherStudents"><a href="web/Students.aspx">STUDENTS<div class="max_slide_menu_data_number">0</div></a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherArticals"><a href="web/Articles.aspx">ARICALS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherEvents"><a href="web/Events.aspx">EVENTS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherMail"><a href="web/Mails.aspx">MAILS<div class="max_slide_menu_data_number">0</div></a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherSettings"><a href="web/Settings.aspx">SETINGS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherAbout"><a href="web/About.aspx">ABOUT</a></div></li>
    </ul>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderTeacherBody" runat="server">

			<div>
				<ul class="breadcrumb">
					<li><a href="Default.aspx">MAXFORD</a> <span class="divider">/</span></li>
					<li><a href="Default.aspx">HOME</a></li>
				</ul>
			</div>
			

			<div class="row-fluid sortable">
				<div class="box span12">

					<div class="box-header well" data-original-title>
						<h2></h2>
					</div>

					<div class="box-content">
						<form class="form-horizontal">
						  <fieldset>
							<legend><asp:Label ID="Label1" runat="server" Text="Welcome To Maxford"></asp:Label></legend>

                        
                            <label class="control-label" for="typeahead"></label>
                            <table style=" display:block; border: 1px solid #DEDEDE; border-radius:5px; padding:15px;">
                                <tr>
                                    <th width="15%"></th>
                                    <th width="3%"></th>
                                    <th width="60%"></th>
                                    <th width="3%"></th>
                                    <th></th>
                                </tr>
<%--                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Contact Number</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxContactNumber" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label2" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Email Adress</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxEmailAddress" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label3" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Profile Image</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="center" valign="top"><asp:Image ID="maxTeacherImage" runat="server" Width="300px" style=" border:1px solid #000;" /></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><br /></td>
                                    <td align="right" valign="top"></td>
                                    <td align="center" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Select New Image</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:FileUpload ID="maxTeacherFileImage" runat="server" /></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><br /></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">About Teacher</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxAboutTeacher" runat="server" Width="450px" Text="Sever Error"  TextMode="MultiLine"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label4" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                </tr>--%>
                                <tr>
                                    <td align="right" valign="top">Select Your Choice</td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
<%--                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:Button ID="Button2" runat="server" Text="SAVE" CssClass="btn btn-primary" OnClick="SaveUpload_Click"/></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:HyperLink ID="maxHyperLinkTeacher1" runat="server" target="_blank" CssClass="btn btn-info">VIEW MY PAGE</asp:HyperLink></td>
                                </tr>--%>
                            </table>




                            <br />
                            <br />
                            <br />
							<div class="form-actions">
                            Help Desk Administrator (Rachitha) : +94 773632682 
                            <i style=" margin-right:-100px;">[ 7:00 PM &nbsp&nbsp to &nbsp&nbsp 11:PM ]</i>
							</div>
						  </fieldset>
						</form>
					</div>
				</div>
			</div>
</asp:Content>



<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderMaxfordTeacherScriptFooter" runat="server">
		<footer>
			<p class="pull-left">&copy; <a href="http://maxford.lk" target="_blank">Maxford.lk</a> 2015</p>
			<p class="pull-right">Powered by: <a href="http://zionx.net16.net">ZIONX</a></p>
		</footer>
</asp:Content>