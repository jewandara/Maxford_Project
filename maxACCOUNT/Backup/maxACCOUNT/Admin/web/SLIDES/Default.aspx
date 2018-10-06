<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="maxACCOUNT.Admin.web.SLIDES.Default" %>
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

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBodyHead" runat="server">
	<div>
    <br />
		<ul class="breadcrumb">
			<li><a href="../../Default.aspx">ACCOUNT</a> <span class="divider">/</span></li>
			<li><a href="Default.aspx">SLIDE</a></li>
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
						<h2> MAXFORD SLIDE</h2>
					</div>
					<div class="box-content">
                        <label class="control-label" for="typeahead">Create A New Slide</label>
                        <asp:HyperLink ID="HyperLink1" runat="server"  CssClass="btn btn-primary" NavigateUrl="NEW.aspx">NEW SLIDE</asp:HyperLink>
                        <br />
                        <br />
                        <br />
                        <label class="control-label" for="typeahead">Selected Slide Details</label>
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Slide</th>
								  <th>Title</th>
								  <th>Read Me</th>
								<th width="20%">Actions</th>
							  </tr>
						  </thead>   
						  <tbody>
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="BaseSqlDataSource">
                                <ItemTemplate>
							        <tr>
								        <td><img src="../../../MAX-DATA/SLIDE/<%# Eval("SlideCode")%>/<%# Eval("SlidePictureLink")%>" width="50px" /></td>
								        <td class="center"><%# Eval("SlideTitle")%></td>
								        <td class="center"><%# Eval("SlideReadMe")%></td>
								        <td class="center">
                                        	<a class="btn btn-info" href="Edit_Act.aspx?SlideID=<%# Eval("SlideID")%>">
                                                <i class="icon-edit icon-white"></i>  
										        Active                                                 
									        </a>
									        <a class="btn btn-success" href='Edit.aspx?SlideCode=<%# Eval("SlideCode")%>'>
										        <i class="icon-edit icon-white"></i>  
										        Edit                                            
									        </a>
								        </td>
							        </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="BaseSqlDataSource" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ZionxMaxUserDB %>" 
                                SelectCommand="SELECT * FROM dbo.aspnet_PageSlide WHERE (SlideSelect = 1) AND (Activiated = 1) ORDER BY ModifiedDate DESC">
                            </asp:SqlDataSource>
						  </tbody>
					  </table>
                        <hr />
                        <br />
                        <label class="control-label" for="typeahead">Other Slide Details</label>
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Slide</th>
								  <th>Title</th>
								  <th>Is Selected</th>
                                  <th>Is Activiated</th>
								  <th width="30%">Actions</th>
							  </tr>
						  </thead>   
						  <tbody>
                            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="BaseSqlDataSourceAll">
                                <ItemTemplate>
							        <tr>
								        <td><img src="../../../MAX-DATA/SLIDE/<%# Eval("SlideCode")%>/<%# Eval("SlidePictureLink")%>" width="50px" /></td>
								        <td class="center"><%# Eval("SlideTitle")%></td>
								        <td class="center"><span class="label label-success"><%# Eval("SlideSelect")%></span></td>
                                        <td class="center"><span class="label label-warning"><%# Eval("Activiated")%></span></td>
								        <td class="center">
                                        	<a class="btn btn-info" href="Edit_Act.aspx?SlideID=<%# Eval("SlideID")%>">
                                                <i class="icon-edit icon-white"></i>  
										        Active                                                 
									        </a>
									        <a class="btn btn-success" href='Edit.aspx?SlideCode=<%# Eval("SlideCode")%>'>
										        <i class="icon-edit icon-white"></i>  
										        Edit                                            
									        </a>
									        <a class="btn btn-danger" href='Delete.aspx?SlideCode=<%# Eval("SlideCode")%>'>
										        <i class="icon-trash icon-white"></i> 
										        Delete
									        </a>
								        </td>
							        </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="BaseSqlDataSourceAll" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ZionxMaxUserDB %>" 
                                SelectCommand="SELECT * FROM dbo.aspnet_PageSlide ORDER BY ModifiedDate DESC">
                            </asp:SqlDataSource>
						  </tbody>
					  </table>
                        <hr />
                        <label class="control-label" for="typeahead">Create A New Slide</label>
                        <asp:HyperLink ID="HyperLink2" runat="server"  CssClass="btn btn-primary" NavigateUrl="NEW.aspx">NEW SLIDE</asp:HyperLink>
                        <br />
                        <br />
                        <br />
                    </div>
				</div>
			</div>
    </asp:Panel>

</asp:Content>
