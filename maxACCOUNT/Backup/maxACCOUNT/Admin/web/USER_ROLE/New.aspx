<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="New.aspx.cs" Inherits="maxACCOUNT.Admin.web.USER_ROLE.New" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderAdminMenu" runat="server">
                    <li><div class="max_side_menu_bar maxIconTecherDashboard"><a href="../DASHBOARD/Default.aspx">DASHBOARD</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherApplication"><a href="../APPLICATION/Default.aspx">APPLICATION</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherDatabase"><a href="../DATABASE/Default.aspx">DATABASE</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherUserRole maxIconTecherActive"><a href="Default.aspx">USER ROLE</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherTeacher"><a href="../TEACHERS/Default.aspx">TEACHERS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherStudents"><a href="../STUDENTS/Default.aspx">STUDENTS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherRegister"><a href="../REGISTER/Default.aspx">REGISTER</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherGrade"><a href="../GRADE/Default.aspx">GRADE</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherSubjects"><a href="../SUBJECTS/Default.aspx">SUBJECTS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherHalls"><a href="../HALL/Default.aspx">HALL</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherTimeTable"><a href="../TIME_TABLE/Default.aspx">TIME TABLE</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherDownloads"><a href="../DOWNLOADS/Default.aspx">DOWNLOADS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherSlides"><a href="../SLIDES/Default.aspx">SLIDES</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherEvents"><a href="../EVENTS/Default.aspx">EVENTS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherEvents"><a href="../NEWS/Default.aspx">NEWS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherMail"><a href="../MAILS/Default.aspx">MAILS<div class="max_slide_menu_data_number">0</div></a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherSettings"><a href="../SETINGS/Default.aspx">SETINGS</a></div></li>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBodyHead" runat="server">
	<div>
        <br />
		<ul class="breadcrumb">
			<li><a href="../../Default.aspx">ACCOUNT</a> <span class="divider">/</span></li>
			<li><a href="Default.aspx">USER ROLE</a> <span class="divider">/</span></li>
            <li><a href="#">NEW</a></li>
		</ul>
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHoldermaxTopMenuBar" runat="server">
</asp:Content>



<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

    <asp:Panel ID="maxPanelNewRole" runat="server">
		<div class="row-fluid sortable">
			<div class="box span12">
				<div class="box-header well" data-original-title>
					<h2><i class="icon-edit"></i> Maxford User Role - New Role</h2>
				</div>
				<div class="box-content">
					<form class="form-horizontal">
						<fieldset>
                        <table style=" display:block; border: 1px solid #DEDEDE; border-radius:5px; padding:15px;">
                            <tr>
                                <th width="15%"></th>
                                <th width="1%"></th>
                                <th width="30%"></th>
                                <th></th>
                                <th width="60%"></th>
                            </tr>
                            <tr>
                                <td align="right" valign="top"><label class="control-label" for="typeahead">Role Name</label></td>
                                <td align="right" valign="top"></td>
                                <td align="right" valign="top"><asp:TextBox ID="maxRoleName" runat="server" Width="450px"></asp:TextBox></td>
                                <td align="right" valign="top"></td>
                                <td align="left"><asp:Label ID="maxLabelRoleError" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                            </tr>

                            <tr>
                                <td align="right" valign="top"></td>
                                <td align="right" valign="top"></td>
                                <td align="right" valign="top">
                                    <asp:Button ID="Button3" runat="server" Text="SAVE" CssClass="btn btn-primary" OnClick="CreateRole_OnClick" />
                                </td>
                                <td align="right" valign="top"></td>
                                <td align="left"></td>
                            </tr>
                        </table>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
    </asp:Panel>

    <asp:Panel ID="maxPanelNewSuccess" runat="server" Visible="False">
		<div class="row-fluid sortable">
			<div class="box span12">
				<div class="box-content">
					<form class="form-horizontal">
						<fieldset>
                        <table style=" display:block; border: 1px solid #DEDEDE; border-radius:5px; padding:15px;">
                            <tr>
                                <th width="15%"></th>
                                <th width="3%"></th>
                                <th width="40%"></th>
                                <th width="20%"></th>
                                <th></th>
                            </tr>
                            <tr>
                                <td align="right" valign="top"></td>
                                <td align="right" valign="top"></td>
                                <td align="right" valign="top"><asp:Label ID="maxLabelSccces" runat="server" Text="Text Error"></asp:Label></td>
                                <td align="right" valign="top"></td>
                                <td align="left"></td>
                            </tr>

                            <tr>
                                <td align="right" valign="top"></td>
                                <td align="right" valign="top"></td>
                                <td align="right" valign="top">
                                    <asp:Button ID="Button1" runat="server" Text="OK" CssClass="btn btn-primary" OnClick="CreateRoleReturn_OnClick" />
                                </td>
                                <td align="right" valign="top"></td>
                                <td align="left"></td>
                            </tr>
                        </table>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
    </asp:Panel>

</asp:Content>
