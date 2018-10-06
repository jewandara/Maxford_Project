<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="maxACCOUNT.Teacher.web.Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TeacherHead" runat="server">
    <script src="../js/ScrollJquery.js" type="text/javascript"></script>
    <script src="../js/ScrollJquery_004.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maxTeacherMenuContentPlaceHolder" runat="server">
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
        <li><div class="max_side_menu_bar maxIconSelect maxIconTecherSettings"><a href="Settings.aspx">SETINGS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherAbout"><a href="About.aspx">ABOUT</a></div></li>
    </ul>
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderTeacherBody" runat="server">


			<div>
				<ul class="breadcrumb">
					<li><a href="../Default.aspx">MAXFORD</a> <span class="divider">/</span></li>
					<li><a href="Students.aspx">STUDENTS</a></li>
				</ul>
			</div>
			




			<div class="row-fluid sortable">		
				<div class="box span12">

					<div class="box-header well" data-original-title>
						<h2>Teacher Change Password</h2>
					</div>

                	<div class="box-content">
                        <asp:ChangePassword ID="ChangePassword1" runat="server">
                            <ChangePasswordTemplate>
                                            <table class="table">
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword">Password</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="CurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server"  ControlToValidate="CurrentPassword" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword">New Password:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="NewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword" ErrorMessage="New Password is required." ToolTip="New Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword">Confirm New Password:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="ConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword" ErrorMessage="Confirm New Password is required." ToolTip="Confirm New Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td align="right">
                                                        <asp:Button ID="ChangePasswordPushButton" runat="server" CommandName="ChangePassword" Text=" SAVE " ValidationGroup="ChangePassword1" CssClass="btn btn-primary"/>
                                                    </td>
                                                    <td>
                                                        <asp:Button ID="CancelPushButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" Visible="false" />
                                                    </td>
                                                </tr>
                                            </table>





                                             <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" Display="Dynamic" ErrorMessage="The Confirm New Password must match the New Password entry." ValidationGroup="ChangePassword1"></asp:CompareValidator>
                                             <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>




                            </ChangePasswordTemplate>
                        </asp:ChangePassword>
					</div>
				</div>
			</div>
            <br />
			<div class="form-actions">
                Help Desk Administrator (Rachitha) : +94 773632682 
                <i style=" margin-right:-100px;">[ 7:00 PM &nbsp&nbsp to &nbsp&nbsp 11:PM ]</i>
			</div>
</asp:Content>










<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderMaxfordTeacherScriptFooter" runat="server">
</asp:Content>
