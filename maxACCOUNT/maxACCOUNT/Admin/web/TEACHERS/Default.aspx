<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="maxACCOUNT.Admin.web.TEACHERS.Default" %>
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
			<li><a href="../../Default.aspx">ACCOUNT</a> <span class="divider">/</span></li>
			<li><a href="Default.aspx">TEACHERS</a></li>
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
						<h2> MAXFORD TEACHERS</h2>
					</div>
					<div class="box-content">
                        <br />
                        <label class="control-label" for="typeahead">Add a New Teacher</label>
                        <asp:HyperLink ID="HyperLink5" runat="server"  CssClass="btn btn-primary" NavigateUrl="NEW.aspx">NEW TEACHER</asp:HyperLink>
                        <br /><br /><br />
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Full Name</th>
								  <th>Contact No</th>
								  <th>Handphone</th>
								  <th width="40%">Action</th>
							  </tr>
						  </thead>   
						  <tbody>
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSourceTeacher">
                                <ItemTemplate>
							        <tr>
								        <td class="center"><%# Eval("maxTeacherName")%></td>
								        <td class="center"><%# Eval("ContactNo")%></td>
								        <td class="center"><%# Eval("HandPhone")%></td>
								        <td class="center">
									        <a class="btn btn-success" href='Classes/Default.aspx?UserID=<%# Eval("UserID")%>'>
										        <i class="icon-edit icon-white"></i>  
										        Edit Classes                                          
									        </a>
									        <a class="btn btn-success" href='Profile/Edit.aspx?UserID=<%# Eval("UserID")%>'>
										        <i class="icon-edit icon-white"></i>  
										        Edit Profile                                          
									        </a>
									        <a class="btn btn-success" href='Page/Edit.aspx?UserID=<%# Eval("UserID")%>'>
										        <i class="icon-edit icon-white"></i>  
										        Edit Page                                          
									        </a>
								        </td>
							        </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="SqlDataSourceTeacher" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ZionxMaxUserDB %>" 
                                SelectCommand="SELECT * FROM [vw_aspnet_UsersData]">
                            </asp:SqlDataSource>
						  </tbody>
					  </table>
					</div>
				</div>
			</div>
    </asp:Panel>
<br />
    <asp:Panel ID="Panel2" runat="server">
			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2> MAXFORD TEACHERS</h2>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>User Name</th>
								  <th>ModifiedDate</th>
								  <th>InsertedDate</th>
								  <th width="23%">Action</th>
							  </tr>
						  </thead>   
						  <tbody>
                            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSourceUser">
                                <ItemTemplate>
							        <tr>
								        <td><%# Eval("UserName")%></td>
								        <td class="center"><%# Eval("ModifiedDate")%></td>
								        <td class="center"><%# Eval("InsertedDate")%></td>
								        <td class="center">
									        <a class="btn btn-success" href='Edit.aspx?UserID=<%# Eval("UserID")%>'>
										        <i class="icon-edit icon-white"></i>  
										        Edit                                            
									        </a>
									        <a class="btn btn-danger" href='Delete.aspx?UserID=<%# Eval("UserID")%>'>
										        <i class="icon-trash icon-white"></i> 
										        Delete
									        </a>
								        </td>
							        </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="SqlDataSourceUser" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ZionxMaxUserDB %>" 
                                SelectCommand="SELECT * FROM [vw_aspnet_UsersData]">
                            </asp:SqlDataSource>
						  </tbody>
					  </table>      
                        <hr />
                        <label class="control-label" for="typeahead">Add a New Teacher</label>
                        <asp:HyperLink ID="HyperLink7" runat="server"  CssClass="btn btn-primary" NavigateUrl="NEW.aspx">NEW TEACHER</asp:HyperLink>
                        <br />
                        <br />
                        <br />
					</div>
				</div>
			</div>
    </asp:Panel>

</asp:Content>
