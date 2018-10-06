<%@ Page Title="" validateRequest="false" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="NEW.aspx.cs" Inherits="maxACCOUNT.Admin.web.EVENTS.NEW" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
    <script src="http://www.maxford.lk/Max_Data/Max_Editor/ckeditor.js" type="text/javascript"></script>
    <script src="http://www.maxford.lk/Max_Data/Max_Form/jscolor/jscolor.js" type="text/javascript"></script>
    <link href="http://www.maxford.lk/Max_Data/Max_Form/css/FormStyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        var loadFile = function (event) {
            var output = document.getElementById('<%=maxSlideImageUpLoadedOrgnImage.ClientID%>');
            output.src = URL.createObjectURL(event.target.files[0]);
            document.getElementById('<%=maxCropImagePenel.ClientID%>').style.visibility = "visible";
        };
    </script>
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
        <br /><h4>Maxford Student's Details</h4><br />
		<ul class="breadcrumb">
			<li><a href="../../Default.aspx">ACCOUNT</a><span class="divider">/</span></li>
			<li><a href="Default.aspx">EVENT</a><span class="divider">/</span></li>
            <li><a href="">NEW</a></li>
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
					    <h2><i class="icon-edit"></i> Maxford New Events - New Events</h2>
				    </div>
				    <div class="box-content">
					    <form class="form-horizontal">
						    <fieldset>
                            <table style=" display:block; border: 1px solid #DEDEDE; border-radius:5px; padding:15px;">

                                <tr>
                                    <th width="15%"></th>
                                    <th width="3%"></th>
                                    <th width="80%"></th>
                                    <th></th>
                                    <th></th>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Event Title</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:TextBox ID="maxEventTitleTextBox" runat="server" Width="650px"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:Label ID="maxEventTitleError" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
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
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Catogory</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:DropDownList ID="maxSlideCatDropDownList" runat="server"  Width="660px"></asp:DropDownList></td>
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
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Event Type</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top">
                                            <asp:DropDownList ID="maxEventTypeDropDownList" runat="server"  Width="660px" OnSelectedIndexChanged="maxEventTypeDropDownList_SelectedIndexChanged" AutoPostBack="true">
                                                    <asp:ListItem Text="Add Text" Value="TEXT"></asp:ListItem>
                                                    <asp:ListItem Text="Add Image" Value="IMAGE"></asp:ListItem>
                                                    <asp:ListItem Text="Add Video" Value="VIDEO"></asp:ListItem>
                                            </asp:DropDownList></td>
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
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Event Text</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:TextBox ID="maxEventSubTextBox" runat="server" Width="650px" TextMode="MultiLine"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:Label ID="maxEventSubError" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
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
                                <asp:Panel ID="maxDataPanel" runat="server" Visible="False">
                                <tr>
                                    <td align="right" valign="top"><asp:Label ID="Label8" runat="server" Text="Event Data" CssClass="control-label"></asp:Label></td>
                                    <td></td>
                                    <td align="left"><asp:FileUpload ID="maxUploadEventData" runat="server" onchange="loadFile(event)"  CssClass="btn" /></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                </asp:Panel>
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
                                    <td align="left" valign="top"><asp:Label ID="UploadErrorLabel" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
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
                                        <asp:Panel ID="maxCropImagePenel" runat="server" width="100%">
                                            <asp:Image ID="maxSlideImageUpLoadedOrgnImage" alt="" runat="server" Width="50%"/><br />
                                        </asp:Panel>
                                    </td>
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



<%--                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td align="left"><asp:Label ID="Label3" runat="server" Text="You Can Add Nother Five Images About The Event" CssClass="control-label"></asp:Label></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><asp:Label ID="Label1" runat="server" Text="Image 01 : " CssClass="control-label"></asp:Label></td>
                                    <td></td>
                                    <td align="left"><asp:FileUpload ID="FileUpload1" runat="server" /></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><asp:Label ID="Label4" runat="server" Text="Image 02 : " CssClass="control-label"></asp:Label></td>
                                    <td></td>
                                    <td align="left"><asp:FileUpload ID="FileUpload2" runat="server" /></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><asp:Label ID="Label5" runat="server" Text="Image 03 : " CssClass="control-label"></asp:Label></td>
                                    <td></td>
                                    <td align="left"><asp:FileUpload ID="FileUpload3" runat="server" /></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><asp:Label ID="Label6" runat="server" Text="Image 04 : " CssClass="control-label"></asp:Label></td>
                                    <td></td>
                                    <td align="left"><asp:FileUpload ID="FileUpload4" runat="server" /></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><asp:Label ID="Label7" runat="server" Text="Image 05 : " CssClass="control-label"></asp:Label></td>
                                    <td></td>
                                    <td align="left"><asp:FileUpload ID="FileUpload5" runat="server" /></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td><br /></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>--%>


                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <asp:Button ID="maxCropSlideImage" runat="server" Text="SAVE EVENT"  CssClass="maxButton maxCropSlideImage btn btn-success" Width="100%" OnClick="maxSaveEvent_Click" />
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
                                <asp:HiddenField ID="X1" runat="server" />
                                <asp:HiddenField ID="Y1" runat="server" />
                                <asp:HiddenField ID="x2" runat="server" />
                                <asp:HiddenField ID="y2" runat="server" />
                                <asp:HiddenField ID="W1" runat="server" />
                                <asp:HiddenField ID="H1" runat="server" />
					    </form>
				    </div>
			    </div>
		    </div>
    </asp:Panel>


    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>
