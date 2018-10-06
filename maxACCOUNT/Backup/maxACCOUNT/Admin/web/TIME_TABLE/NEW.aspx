<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="NEW.aspx.cs" Inherits="maxACCOUNT.Admin.web.TIME_TABLE.NEW" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
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
                    <li><div class="max_side_menu_bar maxIconTecherTimeTable maxIconTecherActive"><a href="Default.aspx">TIME TABLE</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherDownloads"><a href="../DOWNLOADS/Default.aspx">DOWNLOADS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherSlides"><a href="../SLIDES/Default.aspx">SLIDES</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherEvents"><a href="../EVENTS/Default.aspx">EVENTS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherEvents"><a href="../NEWS/Default.aspx">NEWS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherMail"><a href="../MAILS/Default.aspx">MAILS<div class="max_slide_menu_data_number">0</div></a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherSettings"><a href="../SETINGS/Default.aspx">SETINGS</a></div></li>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderBodyHead" runat="server">
	<div>
        <br /><h4>Maxford Time Table Details</h4><br />
		<ul class="breadcrumb">
			<li><a href="../../Default.aspx">ACCOUNT</a><span class="divider">/</span></li>
			<li><a href="Default.aspx">TIME TABLE</a><span class="divider">/</span></li>
            <li><a href="NEW.aspx">NEW CLASS</a></li>
		</ul>
	</div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHoldermaxTopMenuBar" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

     <asp:Panel ID="Panel1" runat="server">

    			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2> New Class </h2>
					</div>
					<div class="box-content">
						<form class="form-horizontal">

                                        <div class="control-group">
								            <label class="control-label">Class Name</label>
								            <div class="controls">
								                <asp:TextBox ID="maxClassName" runat="server"></asp:TextBox>
								            </div>
                                        </div>                                        
                                        <div class="control-group">
								            <label class="control-label">Class Date</label>
								            <div class="controls">
								                <asp:DropDownList ID="maxClassDate" runat="server">
                                                    <asp:ListItem Text="Monday" Value="Monday"></asp:ListItem>
                                                    <asp:ListItem Text="Tuesday" Value="Tuesday"></asp:ListItem>
                                                    <asp:ListItem Text="Wednesday" Value="Wednesday"></asp:ListItem>
                                                    <asp:ListItem Text="Thursday" Value="Thursday"></asp:ListItem>
                                                    <asp:ListItem Text="Friday" Value="Friday"></asp:ListItem>
                                                    <asp:ListItem Text="Saturday" Value="Saturday"></asp:ListItem>
                                                    <asp:ListItem Text="Sunday" Value="Sunday"></asp:ListItem>
                                                </asp:DropDownList>
								            </div>
                                        </div>                                        
                                        <div class="control-group">
								            <label class="control-label">Class Start Time</label>
								            <div class="controls">
								                <asp:DropDownList ID="maxClassStratTime" runat="server">
                                                    <asp:ListItem Text="01:00" Value="01:00"></asp:ListItem>
                                                    <asp:ListItem Text="01:30" Value="01:30"></asp:ListItem>
                                                    <asp:ListItem Text="02:00" Value="02:00"></asp:ListItem>
                                                    <asp:ListItem Text="02:30" Value="02:30"></asp:ListItem>
                                                    <asp:ListItem Text="03:00" Value="03:00"></asp:ListItem>
                                                    <asp:ListItem Text="03:30" Value="03:30"></asp:ListItem>
                                                    <asp:ListItem Text="04:00" Value="04:00"></asp:ListItem>
                                                    <asp:ListItem Text="04:30" Value="04:30"></asp:ListItem>
                                                    <asp:ListItem Text="05:00" Value="05:00"></asp:ListItem>
                                                    <asp:ListItem Text="05:30" Value="05:30"></asp:ListItem>
                                                    <asp:ListItem Text="06:00" Value="06:00"></asp:ListItem>
                                                    <asp:ListItem Text="06:30" Value="06:30"></asp:ListItem>
                                                    <asp:ListItem Text="07:00" Value="07:00"></asp:ListItem>
                                                    <asp:ListItem Text="07:30" Value="07:30"></asp:ListItem>
                                                    <asp:ListItem Text="08:00" Value="08:00"></asp:ListItem>
                                                    <asp:ListItem Text="08:30" Value="08:30"></asp:ListItem>
                                                    <asp:ListItem Text="09:00" Value="09:00"></asp:ListItem>
                                                    <asp:ListItem Text="09:30" Value="09:30"></asp:ListItem>
                                                    <asp:ListItem Text="10:00" Value="10:00"></asp:ListItem>
                                                    <asp:ListItem Text="10:30" Value="10:30"></asp:ListItem>
                                                    <asp:ListItem Text="11:00" Value="11:00"></asp:ListItem>
                                                    <asp:ListItem Text="11:30" Value="11:30"></asp:ListItem>
                                                    <asp:ListItem Text="12:00" Value="12:00"></asp:ListItem>
                                                    <asp:ListItem Text="12:30" Value="12:30"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:DropDownList ID="maxClassStratCat" runat="server">
                                                    <asp:ListItem Text="AM" Value="AM"></asp:ListItem>
                                                    <asp:ListItem Text="PM" Value="PM"></asp:ListItem>
                                                </asp:DropDownList>
								            </div>
                                        </div>
                                        <div class="control-group">
								            <label class="control-label">Class End Time</label>
								            <div class="controls">
								                <asp:DropDownList ID="maxClassEndTime" runat="server">
                                                    <asp:ListItem Text="01:00" Value="01:00"></asp:ListItem>
                                                    <asp:ListItem Text="01:30" Value="01:30"></asp:ListItem>
                                                    <asp:ListItem Text="02:00" Value="02:00"></asp:ListItem>
                                                    <asp:ListItem Text="02:30" Value="02:30"></asp:ListItem>
                                                    <asp:ListItem Text="03:00" Value="03:00"></asp:ListItem>
                                                    <asp:ListItem Text="03:30" Value="03:30"></asp:ListItem>
                                                    <asp:ListItem Text="04:00" Value="04:00"></asp:ListItem>
                                                    <asp:ListItem Text="04:30" Value="04:30"></asp:ListItem>
                                                    <asp:ListItem Text="05:00" Value="05:00"></asp:ListItem>
                                                    <asp:ListItem Text="05:30" Value="05:30"></asp:ListItem>
                                                    <asp:ListItem Text="06:00" Value="06:00"></asp:ListItem>
                                                    <asp:ListItem Text="06:30" Value="06:30"></asp:ListItem>
                                                    <asp:ListItem Text="07:00" Value="07:00"></asp:ListItem>
                                                    <asp:ListItem Text="07:30" Value="07:30"></asp:ListItem>
                                                    <asp:ListItem Text="08:00" Value="08:00"></asp:ListItem>
                                                    <asp:ListItem Text="08:30" Value="08:30"></asp:ListItem>
                                                    <asp:ListItem Text="09:00" Value="09:00"></asp:ListItem>
                                                    <asp:ListItem Text="09:30" Value="09:30"></asp:ListItem>
                                                    <asp:ListItem Text="10:00" Value="10:00"></asp:ListItem>
                                                    <asp:ListItem Text="10:30" Value="10:30"></asp:ListItem>
                                                    <asp:ListItem Text="11:00" Value="11:00"></asp:ListItem>
                                                    <asp:ListItem Text="11:30" Value="11:30"></asp:ListItem>
                                                    <asp:ListItem Text="12:00" Value="12:00"></asp:ListItem>
                                                    <asp:ListItem Text="12:30" Value="12:30"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:DropDownList ID="maxClassEndCat" runat="server">
                                                    <asp:ListItem Text="AM" Value="AM"></asp:ListItem>
                                                    <asp:ListItem Text="PM" Value="PM"></asp:ListItem>
                                                </asp:DropDownList>
								            </div>
                                        </div>
                                        <div class="control-group">
								            <label class="control-label">Select Teacher</label>
								            <div class="controls">
								                <asp:DropDownList ID="maxTeacherNames" runat="server">
                                                </asp:DropDownList>
								            </div>
                                        </div>
                                        <div class="control-group">
								            <label class="control-label">Select Subject</label>
								            <div class="controls">
								                <asp:DropDownList ID="maxSubjectNames" runat="server">
                                                </asp:DropDownList>
								            </div>
                                        </div>
                                        <div class="control-group">
								            <label class="control-label">Select Grade</label>
								            <div class="controls">
								                <asp:DropDownList ID="maxGradeNames" runat="server">
                                                </asp:DropDownList>
								            </div>
                                        </div>
                                        <div class="control-group">
								            <label class="control-label">Select Hall</label>
								            <div class="controls">
								                <asp:DropDownList ID="maxHallNames" runat="server">
                                                </asp:DropDownList>
								            </div>
                                        </div>
                                        <div class="control-group">
								            <label class="control-label">MESSAGE:</label>
								            <div class="controls">
								                <asp:Label ID="maxErrorLabel" runat="server" Text=""></asp:Label>
								            </div>
                                        </div>


							  <div class="form-actions">
								<asp:Button ID="newTeacherButton" class="btn" runat="server" Text="ADD CLASS" onclick="newClassButton_Click" />
							  </div>

						  </form>
					
					</div>
				</div>
			
			</div>
    </asp:Panel>

</asp:Content>
