<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="maxACCOUNT.Admin.web.TEACHERS.Profile.Edit" %>
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
			<li><a href="Default.aspx">PROFILE</a><span class="divider">/</span></li>
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
						<h2><i class="icon-edit"></i> Maxford Teacher Profile</h2>
					</div>

					<div class="box-content">
						<form class="form-horizontal">
						  <fieldset>
							<legend><asp:Label ID="maxTeacherName" runat="server" Text="Can Not Find The User"></asp:Label></legend>
							<div class="control-group">


                            <br /><label class="control-label" for="typeahead">Maxford Teacher Profile Details Box One:</label>
                            <table style=" display:block; border: 1px solid #DEDEDE; border-radius:5px; padding:15px;">
                                <tr>
                                    <th width="15%"></th>
                                    <th width="3%"></th>
                                    <th width="60%"></th>
                                    <th width="3%"></th>
                                    <th></th>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Title</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top">
                                        <asp:DropDownList ID="maxDropDownListTitle" runat="server"  Width="460px" EnableViewState="False">
                                        </asp:DropDownList>
                                    </td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Date Of Birth</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top">
                                        <asp:DropDownList ID="maxDropDownListBDay" runat="server"  Width="100px" >
                                        </asp:DropDownList>
                                        <asp:DropDownList ID="maxDropDownListBMonth" runat="server"  Width="200px">
                                        </asp:DropDownList>
                                        <asp:DropDownList ID="maxDropDownListBYear" runat="server"  Width="150px" >
                                        </asp:DropDownList>
                                    </td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Gender</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top">
                                        <asp:DropDownList ID="maxDropDownListGender" runat="server"  Width="460px" >
                                        </asp:DropDownList>
                                    </td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Married Status</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top">
                                        <asp:DropDownList ID="maxDropDownListMerried" runat="server"  Width="460px" >
                                        </asp:DropDownList>
                                    </td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:Button ID="Button2" runat="server" Text="SAVE" CssClass="btn btn-primary" OnClick="SaveBoxOne_Click"/></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                            </table>


                            <br /><br /><br /><label class="control-label" for="typeahead">Maxford Teacher Profile Details Box Two:</label>
                            <table style=" display:block; border: 1px solid #DEDEDE; border-radius:5px; padding:15px;">
                                <tr>
                                    <th width="15%"></th>
                                    <th width="3%"></th>
                                    <th width="60%"></th>
                                    <th width="3%"></th>
                                    <th></th>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">First Name</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxFirstName" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label2" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Middle Name</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxMiddleName" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label3" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Last Name</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxLastName" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label4" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Surname</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxSureName" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label5" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Name With Initials</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxInitalName" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label6" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:Button ID="Button1" runat="server" Text="SAVE" CssClass="btn btn-primary" OnClick="SaveBoxTwo_Click"/></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><a class="btn btn-info" target="_blank" href='http://www.maxford.lk/maxTeacher/teacher.aspx?UserID='>VIEW MY PAGE</a></td>
                                </tr>
                            </table>



                            <br /><br /><br /><label class="control-label" for="typeahead">Maxford Teacher Profile Details Box Three:</label>
                            <table style=" display:block; border: 1px solid #DEDEDE; border-radius:5px; padding:15px;">
                                <tr>
                                    <th width="15%"></th>
                                    <th width="3%"></th>
                                    <th width="50%"></th>
                                    <th width="3%"></th>
                                    <th></th>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Home Address One</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxHomeAddressOne" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label7" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Home Address Two</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxHomeAddressTwo" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label8" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Office Address One</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxOfficeAddressOne" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label9" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Office Address Two</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxOfficeAddressTwo" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label10" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">City</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxCity" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label14" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">States</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxStates" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label15" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Region</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxRegion" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label16" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Province</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxProvince" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label17" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">ZIP Code</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxZipCode" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label18" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Country</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxCountry" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label19" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:Button ID="Button3" runat="server" Text="SAVE" CssClass="btn btn-primary" OnClick="SaveBoxThree_Click"/></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><a class="btn btn-info" target="_blank" href='http://www.maxford.lk/maxTeacher/teacher.aspx?UserID=<%#Eval("UserID")%>'>VIEW MY PAGE</a></td>
                                </tr>
                            </table>



                            <br /><br /><br /><label class="control-label" for="typeahead">Maxford Teacher Profile Details Box Four:</label>
                            <table style=" display:block; border: 1px solid #DEDEDE; border-radius:5px; padding:15px;">
                                <tr>
                                    <th width="15%"></th>
                                    <th width="3%"></th>
                                    <th width="50%"></th>
                                    <th width="3%"></th>
                                    <th></th>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Personal Email</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxPersonalEmail" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label12" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Officeal Email</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxOfficealEmail" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label13" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Telephone Number</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxTelephoneNo" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label24" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Handphone Number</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxHandphoneNo" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label25" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Contact Number</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxContactNo" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label23" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Fax Number</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxFaxNo" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label11" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>

                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:Button ID="Button4" runat="server" Text="SAVE" CssClass="btn btn-primary" OnClick="SaveBoxFour_Click" /></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><a class="btn btn-info" target="_blank" href='http://www.maxford.lk/maxTeacher/teacher.aspx?UserID=<%#Eval("UserID")%>'>VIEW MY PAGE</a></td>
                                </tr>
                            </table>



                            <br /><br /><br /><label class="control-label" for="typeahead">Maxford Teacher Profile Details Box Five:</label>
                            <table style=" display:block; border: 1px solid #DEDEDE; border-radius:5px; padding:15px;">
                                <tr>
                                    <th width="15%"></th>
                                    <th width="3%"></th>
                                    <th width="50%"></th>
                                    <th width="3%"></th>
                                    <th></th>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Driver License Number</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxDriverLicNo" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label20" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">National Identity Number</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxNationalIdNo" runat="server" Width="450px" Text="Sever Error"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label21" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False" ></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:Button ID="Button6" runat="server" Text="SAVE" CssClass="btn btn-primary"  OnClick="SaveBoxFive_Click" /></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><br /><br /><br /></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Maxford User ID</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxUserId" runat="server" Width="450px" Text="Sever Error" ReadOnly="True"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Inserted Date</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxInsertedDate" runat="server" Width="450px" Text="Sever Error" ReadOnly="True"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Modified Date</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxTextBoxModifiedDate" runat="server" Width="450px" Text="Sever Error" ReadOnly="True"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
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
