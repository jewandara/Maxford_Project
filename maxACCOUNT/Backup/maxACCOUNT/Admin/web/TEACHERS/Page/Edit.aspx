<%@ Page Title="" Language="C#" validateRequest="false" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="maxACCOUNT.Admin.web.TEACHERS.Page.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
    <script src="http://www.maxford.lk/Max_Data/Max_Editor/ckeditor.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderAdminMenu" runat="server">
                    <li><div class="max_side_menu_bar maxIconTecherDashboard"><a href="../../DASHBOARD/Default.aspx">DASHBOARD</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherApplication"><a href="../../APPLICATION/Default.aspx">APPLICATION</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherDatabase"><a href="../../DATABASE/Default.aspx">DATABASE</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherUserRole"><a href="../../USER_ROLE/Default.aspx">USER ROLE</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherTeacher maxIconTecherActive"><a href="../Default.aspx">TEACHERS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherStudents"><a href="../../STUDENTS/Default.aspx">STUDENTS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherRegister"><a href="../../REGISTER/Default.aspx">REGISTER</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherGrade"><a href="../../GRADE/Default.aspx">GRADE</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherSubjects"><a href="../../SUBJECTS/Default.aspx">SUBJECTS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherHalls"><a href="../../HALL/Default.aspx">HALL</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherTimeTable"><a href="../../TIME_TABLE/Default.aspx">TIME TABLE</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherDownloads"><a href="../../DOWNLOADS/Default.aspx">DOWNLOADS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherSlides"><a href="../../SLIDES/Default.aspx">SLIDES</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherEvents"><a href="../../EVENTS/Default.aspx">EVENTS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherEvents"><a href="../../NEWS/Default.aspx">NEWS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherMail"><a href="../../MAILS/Default.aspx">MAILS<div class="max_slide_menu_data_number">0</div></a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherSettings"><a href="../../SETINGS/Default.aspx">SETINGS</a></div></li>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderBodyHead" runat="server">
	<div>
        <br /><h4>Maxford Teacher's Details</h4><br />
		<ul class="breadcrumb">
			<li><a href="../../../Default.aspx">ACCOUNT</a><span class="divider">/</span></li>
			<li><a href="../Default.aspx">TEACHERS</a><span class="divider">/</span></li>
			<li><a href="Default.aspx">PAGE</a><span class="divider">/</span></li>
            <li><a href="Edit.aspx">EDIT</a></li>
		</ul>
	</div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHoldermaxTopMenuBar" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <asp:Panel ID="maxPanelNewTeacher" runat="server">
			<div class="row-fluid sortable">
				<div class="box span12">

					<div class="box-header well" data-original-title>
						<h2><i class="icon-edit"></i> Maxford Teacher Web Page</h2>
					</div>

					<div class="box-content">
						<form class="form-horizontal">
						  <fieldset>
							<legend><asp:Label ID="Label1" runat="server" Text="Edit Home Page"></asp:Label></legend>

                        
                            <label class="control-label" for="typeahead">Maxford Teacher Page :</label>
                            <table style=" display:block; border: 1px solid #DEDEDE; border-radius:5px; padding:15px;">
                                <tr>
                                    <th width="15%"></th>
                                    <th width="3%"></th>
                                    <th width="60%"></th>
                                    <th width="3%"></th>
                                    <th></th>
                                </tr>
                                <tr>
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
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><br /></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>


                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:Button ID="Button2" runat="server" Text="SAVE" CssClass="btn btn-primary" OnClick="SaveUpload_Click"/></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:HyperLink ID="maxHyperLinkTeacher1" runat="server" target="_blank" CssClass="btn btn-info">VIEW MY PAGE</asp:HyperLink></td>
                                </tr>
                            </table>




                            <br />
                            <br />
                            <br />

                            <label class="control-label" for="typeahead">Maxford Teacher Page Details :</label>
                            <table style=" display:block; border: 1px solid #DEDEDE; border-radius:5px; padding:15px;">
                                <tr>
                                    <th width="100%"></th>
                                </tr>
                                <tr>
                                    <td align="left" valign="top"><label class="control-label" for="typeahead">Teacher Page Title</label></td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top"><asp:TextBox ID="maxTextBoxTeacherTitle" runat="server" Width="450px" TextMode="MultiLine" Text=""></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top"><asp:TextBox ID="maxTextBoxTeacherBody" class="ckeditor" runat="server" TextMode="MultiLine" Text=""></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top"><br /></td>
                                </tr>

                                <tr>
                                    <td align="right" valign="top"><asp:HyperLink ID="maxHyperLinkTeacher2" runat="server" target="_blank" CssClass="btn btn-info">VIEW MY PAGE</asp:HyperLink><asp:Button ID="Button1" runat="server" Text="SAVE" CssClass="btn btn-primary" OnClick="SavePage_Click"/></td>
                                </tr>
                            </table>
                            <br />
						  </fieldset>

						</form>
					</div>
				</div>
			</div>
    </asp:Panel>
</asp:Content>
