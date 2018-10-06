<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="NEW.aspx.cs" Inherits="maxACCOUNT.Admin.web.TEACHERS.NEW" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
<script src="Script/jquery-1.4.4.min.js" type="text/javascript"></script>
<script src="Script/jquery.password-strength.min.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderAdminMenu" runat="server">
                    <li><div class="max_side_menu_bar maxIconTecherDashboard"><a href="../DASHBOARD/Default.aspx">DASHBOARD</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherApplication"><a href="../APPLICATION/Default.aspx">APPLICATION</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherDatabase"><a href="../DATABASE/Default.aspx">DATABASE</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherUserRole"><a href="../USER_ROLE/Default.aspx">USER ROLE</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherTeacher maxIconTecherActive"><a href="Default.aspx">TEACHERS</a></div></li>
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


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderBodyHead" runat="server">
	<div>
        <br /><h4>Maxford Teacher's Details</h4><br />
		<ul class="breadcrumb">
			<li><a href="../../Default.aspx">ACCOUNT</a><span class="divider">/</span></li>
			<li><a href="Default.aspx">TEACHERS</a><span class="divider">/</span></li>
            <li><a href="NEW.aspx">NEW</a></li>
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
					    <h2><i class="icon-edit"></i> Maxford New Teacher - New Teacher</h2>
				    </div>
				    <div class="box-content">
					    <form class="form-horizontal">
						    <fieldset>
                            <table style=" display:block; border: 1px solid #DEDEDE; border-radius:5px; padding:15px;">
                                <tr>
                                    <th width="15%"></th>
                                    <th width="3%"></th>
                                    <th width="50%"></th>
                                    <th width="1%"></th>
                                    <th width="25%"></th>
                                </tr>
                                <tr>
                                    <td><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:Label ID="maxErrorLabel1" runat="server" Text="" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Teacher Title</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top">
                                   		        <asp:DropDownList ID="maxTitle" runat="server">
                                                    <asp:ListItem Text="Mr" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="Mrs" Value="2"></asp:ListItem>
                                                    <asp:ListItem Text="Ms" Value="3"></asp:ListItem>
                                                    <asp:ListItem Text="Miss" Value="4"></asp:ListItem>
                                                    <asp:ListItem Text="Dr" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="Prof" Value="2"></asp:ListItem>
                                                </asp:DropDownList>
                                    </td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Teacher First Name</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:TextBox ID="maxFirstName" runat="server" Width="100%"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:Label ID="maxFirstNameError" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Teacher Middle Name</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:TextBox ID="maxMiddleName" runat="server" Width="100%"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:Label ID="maxMiddleNameError" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Teacher Last Name</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:TextBox ID="maxLastName" runat="server" Width="100%"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:Label ID="maxLastNameError" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Teacher Surname</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:TextBox ID="maxSurname" runat="server" Width="100%"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:Label ID="maxSurnameError" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Teacher Initial Name</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:TextBox ID="maxInitialName" runat="server" Width="100%"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:Label ID="maxInitialNameError" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Login User Name</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:TextBox ID="maxUserName" runat="server" Width="100%"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:Label ID="maxUserNameError" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Login Pass Word</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:TextBox ID="maxPassWord" runat="server" Width="100%"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><a id="passwordPolicy" href="#">Maxford Password Policy</a></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Teacher Email</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:TextBox ID="maxEmail" runat="server" Width="100%"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:Label ID="maxEmailError" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Teacher Phone Number</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:TextBox ID="maxHandphoneNumber" runat="server" Width="100%"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:Label ID="maxHandphoneNumberError" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>                                
                                <tr>
                                    <td><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:Label ID="maxErrorLabel2" runat="server" Text="" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <asp:Button ID="newTeacherButton" CssClass="maxButton maxCropSlideImage btn btn-success" Width="100%" runat="server" Text="ADD TEACHER" onclick="newTeacherButton_Click" />
                                        <br /><br /><hr /><br />
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top">
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

<script src="http://www.maxford.lk/Max_Data/Max_Password/script/jquery-1.4.4.min.js" type="text/javascript"></script>
<script src="http://www.maxford.lk/Max_Data/Max_Password/script/jquery.password-strength.min.js" type="text/javascript"></script>

<script type="text/javascript">
    $(document).ready(function () {
        var myPSPlugin = $("[id$='maxPassWord']").password_strength();

        $("[id$='newTeacherButton']").click(function () {
            return myPSPlugin.metReq(); //return true or false
        });

        $("[id$='passwordPolicy']").click(function (event) {
            var width = 350, height = 300, left = (screen.width / 2) - (width / 2),
            top = (screen.height / 2) - (height / 2);
            window.open("PasswordPolicy.xml", 'Password_poplicy', 'width=' + width + ',height=' + height + ',left=' + left + ',top=' + top);
            event.preventDefault();
            return false;
        });

    });    
</script>

</asp:Panel>


</asp:Content>
