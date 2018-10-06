<%@ Page Title="" validateRequest="false" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="NEW.aspx.cs" Inherits="maxACCOUNT.Admin.web.SLIDES.NEW" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">

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
            <li><a href="NEW.aspx">NEW</a></li>
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
					    <h2><i class="icon-edit"></i> Maxford New Slide - New Slide</h2>
				    </div>
				    <div class="box-content">
					    <form class="form-horizontal">
						    <fieldset>
                            <table style=" display:block; border: 1px solid #DEDEDE; border-radius:5px; padding:15px;">
                                <tr>
                                    <th width="15%"></th>
                                    <th width="3%"></th>
                                    <th width="70%"></th>
                                    <th width="1%"></th>
                                    <th width="6%"></th>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Slide Title</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:TextBox ID="maxSlideTitleTextBox" runat="server" Width="100%"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:Label ID="maxSlideTitleError" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
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
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Slide Read Me</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:TextBox ID="maxSlideReadMeTextBox" runat="server" Width="100%"></asp:TextBox></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left"></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:Label ID="maxSlideReadMeError" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
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
                                    <td><asp:Label ID="maxSlideImageLoadError" runat="server" Text="Text Error" CssClass="btn btn-danger" Visible="False"></asp:Label></td>
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
                                    <td></td>
                                    <td></td>
                                    <td align="left"><asp:FileUpload ID="maxUploadImage" runat="server" onchange="loadFile(event)" CssClass="maxTextBox"/></td>
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
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <asp:Panel ID="maxCropImagePenel" runat="server" width="100%">
                                            <asp:Image ID="maxSlideImageUpLoadedOrgnImage" alt="" runat="server" Width="80%"/><br />
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
                                <tr>
                                    <td align="right" valign="top"><label class="control-label" for="typeahead">Slide Catogory</label></td>
                                    <td align="right" valign="top"></td>
                                    <td align="left" valign="top"><asp:DropDownList ID="maxSlideCatDropDownList" runat="server" Width="100%"></asp:DropDownList></td>
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
                                        <asp:Button ID="maxCropSlideImage" runat="server" Text="SAVE SLIDE"  CssClass="maxButton maxCropSlideImage btn btn-success" Width="100%" OnClick="SaveUpload_Click" />
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
</asp:Content>
