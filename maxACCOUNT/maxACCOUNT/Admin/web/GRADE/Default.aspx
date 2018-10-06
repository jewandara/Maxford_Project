<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="maxACCOUNT.Admin.web.GRADE.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderAdminMenu" runat="server">
                    <li><div class="max_side_menu_bar maxIconTecherDashboard"><a href="../DASHBOARD/Default.aspx">DASHBOARD</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherApplication"><a href="../APPLICATION/Default.aspx">APPLICATION</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherDatabase"><a href="../DATABASE/Default.aspx">DATABASE</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherUserRole"><a href="../USER_ROLE/Default.aspx">USER ROLE</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherTeacher"><a href="../TEACHERS/Default.aspx">TEACHERS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherStudents"><a href="../STUDENTS/Default.aspx">STUDENTS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherRegister"><a href="../REGISTER/Default.aspx">REGISTER</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherGrade  maxIconTecherActive"><a href="Default.aspx">GRADE</a></div></li>
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
        <br /><h4>Maxford Grade Details</h4><br />
		<ul class="breadcrumb">
			<li><a href="../../Default.aspx">ACCOUNT</a> <span class="divider">/</span></li>
			<li><a href="Default.aspx">GRADE</a></li>
		</ul>
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHoldermaxTopMenuBar" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

    <asp:Panel ID="Panel1" runat="server">
			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2> MAXFORD GRADE PRIMARY</h2>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Grade Name</th>
								  <th>Grade Title</th>
								  <th>Grade Catogory</th>
								  <th>Activiated Status</th>
                                  <th>Modified Date</th>
								  <th>Actions</th>
							  </tr>
						  </thead>   
						  <tbody>
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="BaseSqlDataSourcePRIMARY">
                                <ItemTemplate>
							        <tr>
								        <td><%# Eval("GradeName")%></td>
								        <td class="center"><%# Eval("GradeTitle")%></td>
								        <td class="center"><%# Eval("GradeCatogory")%></td>
								        <td class="center"><span class="label label-success"><%# Eval("Activiated")%></span></td>
                                        <td class="center"><%# Eval("ModifiedDate")%></td>
								        <td class="center">
									        <a class="btn btn-info" href="Edit.aspx">
										        <i class="icon-edit icon-white"></i>  
										        Edit                                            
									        </a>
									        <a class="btn btn-danger" href="Delete.aspx">
										        <i class="icon-trash icon-white"></i> 
										        Delete
									        </a>
								        </td>
							        </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="BaseSqlDataSourcePRIMARY" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ZionxMaxUserDB %>" 
                                SelectCommand="SELECT * FROM [aspnet_ClassGrade] WHERE GradeCatogory = 'PRIMARY'">
                            </asp:SqlDataSource>
						  </tbody>
					  </table>            
					</div>
				</div>
			</div>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2> MAXFORD GRADE SECONDARY</h2>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Grade Name</th>
								  <th>Grade Title</th>
								  <th>Grade Catogory</th>
								  <th>Activiated Status</th>
                                  <th>Modified Date</th>
								  <th>Actions</th>
							  </tr>
						  </thead>   
						  <tbody>
                            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="BaseSqlDataSourceSECONDARY">
                                <ItemTemplate>
							        <tr>
								        <td><%# Eval("GradeName")%></td>
								        <td class="center"><%# Eval("GradeTitle")%></td>
								        <td class="center"><%# Eval("GradeCatogory")%></td>
								        <td class="center"><span class="label label-success"><%# Eval("Activiated")%></span></td>
                                        <td class="center"><%# Eval("ModifiedDate")%></td>
								        <td class="center">
									        <a class="btn btn-info" href="Edit.aspx">
										        <i class="icon-edit icon-white"></i>  
										        Edit                                            
									        </a>
									        <a class="btn btn-danger" href="Delete.aspx">
										        <i class="icon-trash icon-white"></i> 
										        Delete
									        </a>
								        </td>
							        </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="BaseSqlDataSourceSECONDARY" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ZionxMaxUserDB %>" 
                                SelectCommand="SELECT * FROM [aspnet_ClassGrade] WHERE GradeCatogory = 'SECONDARY'">
                            </asp:SqlDataSource>
						  </tbody>
					  </table>            
					</div>
				</div>
			</div>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2> MAXFORD GRADE ORDINARY</h2>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Grade Name</th>
								  <th>Grade Title</th>
								  <th>Grade Catogory</th>
								  <th>Activiated Status</th>
                                  <th>Modified Date</th>
								  <th>Actions</th>
							  </tr>
						  </thead>   
						  <tbody>
                            <asp:Repeater ID="Repeater3" runat="server" DataSourceID="BaseSqlDataSourceORDINARY">
                                <ItemTemplate>
							        <tr>
								        <td><%# Eval("GradeName")%></td>
								        <td class="center"><%# Eval("GradeTitle")%></td>
								        <td class="center"><%# Eval("GradeCatogory")%></td>
								        <td class="center"><span class="label label-success"><%# Eval("Activiated")%></span></td>
                                        <td class="center"><%# Eval("ModifiedDate")%></td>
								        <td class="center">
									        <a class="btn btn-info" href="Edit.aspx">
										        <i class="icon-edit icon-white"></i>  
										        Edit                                            
									        </a>
									        <a class="btn btn-danger" href="Delete.aspx">
										        <i class="icon-trash icon-white"></i> 
										        Delete
									        </a>
								        </td>
							        </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="BaseSqlDataSourceORDINARY" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ZionxMaxUserDB %>" 
                                SelectCommand="SELECT * FROM [aspnet_ClassGrade] WHERE GradeCatogory = 'ORDINARY'">
                            </asp:SqlDataSource>
						  </tbody>
					  </table>            
					</div>
				</div>
			</div>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2> MAXFORD GRADE ADVANCED</h2>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Grade Name</th>
								  <th>Grade Title</th>
								  <th>Grade Catogory</th>
								  <th>Activiated Status</th>
                                  <th>Modified Date</th>
								  <th>Actions</th>
							  </tr>
						  </thead>   
						  <tbody>
                            <asp:Repeater ID="Repeater4" runat="server" DataSourceID="BaseSqlDataSourceADVANCED">
                                <ItemTemplate>
							        <tr>
								        <td><%# Eval("GradeName")%></td>
								        <td class="center"><%# Eval("GradeTitle")%></td>
								        <td class="center"><%# Eval("GradeCatogory")%></td>
								        <td class="center"><span class="label label-success"><%# Eval("Activiated")%></span></td>
                                        <td class="center"><%# Eval("ModifiedDate")%></td>
								        <td class="center">
									        <a class="btn btn-info" href="Edit.aspx">
										        <i class="icon-edit icon-white"></i>  
										        Edit                                            
									        </a>
									        <a class="btn btn-danger" href="Delete.aspx">
										        <i class="icon-trash icon-white"></i> 
										        Delete
									        </a>
								        </td>
							        </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="BaseSqlDataSourceADVANCED" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ZionxMaxUserDB %>" 
                                SelectCommand="SELECT * FROM [aspnet_ClassGrade] WHERE GradeCatogory = 'ADVANCED'">
                            </asp:SqlDataSource>
						  </tbody>
					  </table>            
					</div>
				</div>
			</div>
    </asp:Panel>
</asp:Content>
