<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="maxACCOUNT.Admin.web.APPLICATION.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderAdminMenu" runat="server">
                    <li><div class="max_side_menu_bar maxIconTecherDashboard"><a href="../DASHBOARD/Default.aspx">DASHBOARD</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherApplication  maxIconTecherActive"><a href="Default.aspx">APPLICATION</a></div></li>
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
                    <li><div class="max_side_menu_bar maxIconTecherSlides"><a href="../SLIDES/Default.aspx">SLIDES</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherEvents"><a href="../EVENTS/Default.aspx">EVENTS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherMail"><a href="../MAILS/Default.aspx">MAILS<div class="max_slide_menu_data_number">0</div></a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherSettings"><a href="../SETINGS/Default.aspx">SETINGS</a></div></li>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBodyHead" runat="server">
	<div>
        <br /><h4>Maxford Application Settings</h4><br />
		<ul class="breadcrumb">
			<li><a href="../../Default.aspx">ACCOUNT</a> <span class="divider">/</span></li>
			<li><a href="Default.aspx">APPLICATION</a></li>
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
						<h2> Application</h2>
					</div>
					<div class="box-content">
						<form class="form-horizontal">
							<fieldset>



                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SlideViweToUpdateSqlDataSource">
                                    <ItemTemplate>

                                        <div class="control-group">
								            <label class="control-label"><%# Eval("AppWelcome") %></label>
                                            <br />
                                            <p><%# Eval("AppMission") %></p>
                                            <a href="<%# Eval("AppDiscription") %>">CLICK</a>
                                            <br />
                                        </div>

                                        <div class="control-group">
								            <label class="control-label">Application ID</label>
								            <div class="controls">
								                <span class="input-xlarge uneditable-input"><%# Eval("AppID") %></span>
								            </div>
                                        </div>
                                        <div class="control-group">
								            <label class="control-label">Application Name</label>
								            <div class="controls">
								                <span class="input-xlarge uneditable-input"><%# Eval("AppName") %></span>
								            </div>
                                        </div>
                                        <div class="control-group">
								            <label class="control-label">Application Author</label>
								            <div class="controls">
								                <span class="input-xlarge uneditable-input"><%# Eval("AppAuthor") %></span>
								            </div>
                                        </div>
                                        <div class="control-group">
								            <label class="control-label">Application Contact</label>
								            <div class="controls">
								                <span class="input-xlarge uneditable-input"><%# Eval("AppContact") %></span>
								            </div>
                                        </div>
                                        <div class="control-group">
								            <label class="control-label">Application E-mail</label>
								            <div class="controls">
								                <span class="input-xlarge uneditable-input"><%# Eval("AppEmail") %></span>
								            </div>
                                        </div>
                                        <div class="control-group">
								            <label class="control-label">Application Version</label>
								            <div class="controls">
								                <span class="input-xlarge uneditable-input"><%# Eval("AppVersion")%></span>
								            </div>
                                        </div>
                                        <div class="control-group">
								            <label class="control-label">Application Activate Date</label>
								            <div class="controls">
								                <span class="input-xlarge uneditable-input"><%# Eval("AppActivateDate") %></span>
								            </div>
                                        </div>

                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:SqlDataSource ID="SlideViweToUpdateSqlDataSource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ZionxMaxDatabaseNet16ConnectionString %>" 
                                    SelectCommand="SELECT * FROM [MAX_SYS_Application]">
                                </asp:SqlDataSource>


							  <div class="form-actions">
								<button class="btn">OK</button>
							  </div>

							</fieldset>
						  </form>
					
					</div>
				</div>
			
			</div>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
    </asp:Panel>

</asp:Content>
