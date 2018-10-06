<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="maxACCOUNT.Admin.web.TEACHERS.Classes.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
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
        <br />
		<ul class="breadcrumb">
			<li><a href="../Default.aspx">ACCOUNT</a> <span class="divider">/</span></li>
			<li><a href="Default.aspx">CLASSES</a></li>
		</ul>
	</div>
</asp:Content>



<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHoldermaxTopMenuBar" runat="server">
    <br />
    <span class="sticky">
        <div class="max_middle_nav_bar">
            <ul>
                <div style="margin-left:12px;">
                    <li><asp:HyperLink ID="HyperLinkNewClass" runat="server"  CssClass='max_main_SUB_MENU_STYLE max_main_SUB_MENU_STYLE_Active' NavigateUrl="New.aspx">TEACHER ACCOUNT</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink1" runat="server"  CssClass='max_main_SUB_MENU_STYLE' NavigateUrl="New.aspx">TEACHER PROFILE</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink2" runat="server"  CssClass='max_main_SUB_MENU_STYLE' NavigateUrl="New.aspx">TEACHER PAGE</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink3" runat="server"  CssClass='max_main_SUB_MENU_STYLE' NavigateUrl="New.aspx">SEARCH TEACHER</asp:HyperLink></li>
                </div>
            </ul>
        </div>
    </span>
</asp:Content>



<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <asp:Panel ID="Panel1" runat="server">
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
									                <th width="25%">Class Name</th>
									                <th>Subject</th>   
                                                    <th width="10%">Grade</th>  
                                                    <th width="10%">Date</th>
									                <th>Time</th>
                                                    <th width="20%">Action</th>                                     
								                </tr>
							                </thead>   
							                <tbody
                                                <asp:Label ID="maxClassData" runat="server" Text=""></asp:Label>
							                </tbody>
						                </table> 
                                        <br />
                                        <hr />
                                        <br />
                                            <asp:HyperLink ID="newClassHyperLink" runat="server"  CssClass="btn btn-primary" NavigateUrl="">NEW CLASS</asp:HyperLink>
                                        <br />
					            </div>
                          </div>
						  </fieldset>
						</form>   

					</div>
				</div>
			</div>
    </asp:Panel>
<br />

</asp:Content>
