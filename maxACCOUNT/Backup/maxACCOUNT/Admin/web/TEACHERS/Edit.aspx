<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="maxACCOUNT.Admin.web.TEACHERS.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">

    <script src="http://www.maxford.lk/Max_Data/Max_Editor/ckeditor.js" type="text/javascript"></script>
    <script src="http://www.maxford.lk/Max_Data/Max_Form/jscolor/jscolor.js" type="text/javascript"></script>
    <link href="http://www.maxford.lk/Max_Data/Max_Form/css/FormStyle.css" rel="stylesheet" type="text/css" />

 <%--<script src="../../../../Max_Data/Max_ImageCrop/scripts/jquery.min.js" type="text/javascript"></script>--%>
    <script src="http://www.maxford.lk/Max_Data/Max_ImageCrop/scripts/jquery.imgareaselect.pack.js" type="text/javascript"></script>
    <link href="http://www.maxford.lk/Max_Data/Max_ImageCrop/css/imgareaselect-default.css" rel="stylesheet" type="text/css" />
    <link href="http://www.maxford.lk/Max_Data/Max_ImageCrop/css/style.css" rel="stylesheet" type="text/css" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderAdminMenu" runat="server">
                    <li><div class="max_side_menu_bar maxIconTecherDashboard"><a href="../DASHBOARD/Default.aspx">DASHBOARD</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherApplication"><a href="../APPLICATION/Default.aspx">APPLICATION</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherDatabase"><a href="../DATABASE/Default.aspx">DATABASE</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherUserRole"><a href="../USER_ROLE/Default.aspx">USER ROLE</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherTeacher"><a href="../TEACHERS/Default.aspx">TEACHERS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherStudents"><a href="../STUDENTS/Default.aspx">STUDENTS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherRegister"><a href="../REGISTER/Default.aspx">REGISTER</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherGrade"><a href="../GRADE/Default.aspx">GRADE</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherSubjects"><a href="../SUBJECTS/Default.aspx">SUBJECTS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherHalls"><a href="../HALL/Default.aspx">HALL</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherTimeTable"><a href="../TIME_TABLE/Default.aspx">TIME TABLE</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherDownloads"><a href="../DOWNLOADS/Default.aspx">DOWNLOADS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherSlides maxIconTecherActive"><a href="Default.aspx">SLIDES</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherEvents"><a href="../EVENTS/Default.aspx">EVENTS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherEvents"><a href="../NEWS/Default.aspx">NEWS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherMail"><a href="../MAILS/Default.aspx">MAILS<div class="max_slide_menu_data_number">0</div></a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherSettings"><a href="../SETINGS/Default.aspx">SETINGS</a></div></li>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderBodyHead" runat="server">
	<div>
        <br />
		<ul class="breadcrumb">
			<li><a href="../../Default.aspx">ACCOUNT</a><span class="divider">/</span></li>
			<li><a href="Default.aspx">SLIDE</a><span class="divider">/</span></li>
            <li><a href="">EDIT</a></li>
		</ul>
	</div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHoldermaxTopMenuBar" runat="server">
</asp:Content>


<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">


<asp:Panel ID="maxPanelNewRole" runat="server">
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-edit"></i> Maxford Teacher Classes - Edit Classes</h2>
					</div>
					<div class="box-content">
						<form class="form-horizontal">
						  <fieldset>

							<legend><asp:Label ID="maxPageTitle" runat="server" Text=""></asp:Label></legend>


                            <table style=" display:block; border: 1px solid #DEDEDE; border-radius:5px; padding:15px;">
                                <tr>
                                    <th width="15%"></th>
                                    <th width="3%"></th>
                                    <th width="50%"></th>
                                    <th width="3%"></th>
                                    <th></th>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Class ID</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxClassID" runat="server" Width="450px" ReadOnly="True"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Class Name</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxClassName" runat="server" Width="450px"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"><asp:Label ID="Label5" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Class Date</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:DropDownList ID="DropDownListDate" runat="server"  Width="460px" ></asp:DropDownList></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Class Start Time</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top">
                                        <asp:DropDownList ID="DropDownListStartHour" runat="server"  Width="130px" >
                                        </asp:DropDownList> : 
                                        <asp:DropDownList ID="DropDownListStartMinit" runat="server"  Width="130px" >
                                        </asp:DropDownList>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:DropDownList ID="DropDownListStartForm" runat="server"  Width="140px" >
                                        </asp:DropDownList>
                                    </td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Class End Time</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top">
                                        <asp:DropDownList ID="DropDownListEndHour" runat="server"  Width="130px" >
                                        </asp:DropDownList> : 
                                        <asp:DropDownList ID="DropDownListEndMinit" runat="server"  Width="130px" >
                                        </asp:DropDownList>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:DropDownList ID="DropDownListEndForm" runat="server"  Width="140px" >
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
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Modified Date</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxModifiedDate" runat="server" Width="450px" ReadOnly="True"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Inserted Date</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"><asp:TextBox ID="maxInserterdDate" runat="server" Width="450px" ReadOnly="True"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>


                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top">
                                        <asp:Button ID="Button1" runat="server" Text="DELETE" CssClass="btn btn-danger" OnClick="DeleteClass_Click" />
                                        <asp:Button ID="Button3" runat="server" Text="SAVE" CssClass="btn btn-primary" OnClick="SaveClass_Click" />
                                    </td>
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
</asp:Panel>
   
</asp:Content>