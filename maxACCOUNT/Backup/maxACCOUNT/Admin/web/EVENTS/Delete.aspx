<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="maxACCOUNT.Admin.web.EVENTS.Delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
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
                    <li><div class="max_side_menu_bar maxIconTecherSlides"><a href="../SLIDES/Default.aspx">SLIDES</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherEvents maxIconTecherActive"><a href="Default.aspx">EVENTS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherEvents"><a href="../NEWS/Default.aspx">NEWS</a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherMail"><a href="../MAILS/Default.aspx">MAILS<div class="max_slide_menu_data_number">0</div></a></div></li>
                    <li><div class="max_side_menu_bar maxIconTecherSettings"><a href="../SETINGS/Default.aspx">SETINGS</a></div></li>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderBodyHead" runat="server">
	<div>
        <br />
		<ul class="breadcrumb">
			<li><a href="../../Default.aspx">ACCOUNT</a><span class="divider">/</span></li>
			<li><a href="Default.aspx">EVENT</a><span class="divider">/</span></li>
            <li><a href="">DELETE</a></li>
		</ul>
	</div>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHoldermaxTopMenuBar" runat="server">
</asp:Content>


<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

    <asp:Panel ID="maxPanelDeleteSlide" runat="server">
		    <div class="row-fluid sortable">
			    <div class="box span12">
				    <div class="box-header well" data-original-title>
					    <h2><i class="icon-edit"></i> Maxford Event - Delete Event</h2>
				    </div>
				    <div class="box-content">
					    <form class="form-horizontal">
						    <fieldset>
                            <table style=" display:block; border: 1px solid #DEDEDE; border-radius:5px; padding:15px;">
                                <tr>
                                    <th width="10%"></th>
                                    <th width="2%"></th>
                                    <th width="60%"></th>
                                    <th></th>
                                    <th width="1%"></th>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td><asp:Image ID="maxEventImage" alt="" runat="server" style="border:1px solid #000;" width="600px" /></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td><br /><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><h3><asp:Label ID="maxEventTitleLabel" runat="server" Text=""></asp:Label></h3></td>
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
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:Label ID="maxEventSubLabel" runat="server" Text=""></asp:Label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td><br /><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><h3><asp:Label ID="Label1" runat="server" Text="Are You sure you want to remove existing Event ?" style="color:Red"></asp:Label></h3></td>
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
                                        <asp:Button ID="maxDeleteEvent" runat="server" Text="DELETE EVENT"  CssClass="maxButton btn btn-success" Width="100%" OnClick="maxDeleteEvent_Click" />
                                        <br />
                                        <br />
                                        <hr />
                                        <br />
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                            </table>
						    </fieldset>
					    </form>
				    </div>
			    </div>
		    </div>
    </asp:Panel>

    <asp:Panel ID="maxEventDeletePanelOk" runat="server" Visible="False">
		    <div class="row-fluid sortable">
			    <div class="box span12">
				    <div class="box-header well" data-original-title>
					    <h2> Maxford Event Deleted </h2>
				    </div>
				    <div class="box-content">
					    <form class="form-horizontal">
						    <fieldset>
                            <table style=" display:block; border: 1px solid #DEDEDE; border-radius:5px; padding:15px;">
                                <tr>
                                    <th width="10%"></th>
                                    <th width="2%"></th>
                                    <th width="60%"></th>
                                    <th></th>
                                    <th width="1%"></th>
                                </tr>
                                <tr>
                                    <td><br /><br /></td>
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
                                    <td><br /><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><h3><asp:Label ID="Label4" runat="server" Text="The existing event was deleted Successfully." style="color:Green"></asp:Label></h3></td>
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
                                    <td><br /><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" Text="OK"  CssClass="maxButton btn btn-success" Width="100%" OnClick="maxOkEvent_Click" />
                                        <br />
                                        <br />
                                        <hr />
                                        <br />
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                            </table>
						    </fieldset>
					    </form>
				    </div>
			    </div>
		    </div>
    </asp:Panel>

</asp:Content>
   
   
   
   
   
   
   
   
  


