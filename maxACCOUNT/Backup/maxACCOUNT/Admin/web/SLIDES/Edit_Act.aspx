<%@ Page Title="" validateRequest="false" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Edit_Act.aspx.cs" Inherits="maxACCOUNT.Admin.web.SLIDES.Edit_Act" %>

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
            <li><a href="">ACTIVE</a></li>
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
					<h2><i class="icon-edit"></i> Maxford Slide - Active Slide</h2>
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
                                <td align="right" valign="top"></td>
                                <td align="right" valign="top"></td>
                                <td align="left" valign="top"><h3><asp:Label ID="maxSlideTitleLabel" runat="server" Text=""></asp:Label></h3></td>
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
                                <td align="left" valign="top"><asp:Label ID="maxSlideReadMeLabel" runat="server" Text=""></asp:Label></td>
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
                                <td></td>
                                <td></td>
                                <td><asp:Image ID="maxSlideImage" alt="" runat="server" style="border:1px solid #000;" width="600px" /></td>
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
                                <td align="right" valign="top"></td>
                                <td align="right" valign="top"></td>
                                <td align="left" valign="top"></td>
                                <td align="right" valign="top"></td>
                                <td align="left"></td>
                            </tr>
                            <tr>
                                <td align="right" valign="top"></td>
                                <td align="right" valign="top"></td>
                                <td align="left" valign="top"></td>
                                <td align="right" valign="top"></td>
                                <td align="left"></td>
                            </tr>
                            <tr>
                                <td valign="top">Select</td>
                                <td valign="top"></td>
                                <td valign="top">
                                    <asp:DropDownList ID="maxSlideSelectDropDownList" runat="server" Width="100%">
                                    </asp:DropDownList>
                                </td>
                                <td valign="top"></td>
                                <td valign="top"></td>
                            </tr>
                            <tr>
                                <td valign="top">Active</td>
                                <td valign="top"></td>
                                <td valign="top">
                                    <asp:DropDownList ID="maxSlideActiveDropDownList" runat="server" Width="100%">
                                    </asp:DropDownList>
                                </td>
                                <td valign="top"></td>
                                <td valign="top"></td>
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
                                    <asp:Button ID="maxCropSlideImage" runat="server" Text="SAVE SLIDE"  CssClass="maxButton btn btn-success" Width="100%" OnClick="maxActiveSlideImage_Click" />
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
   
   
   
   
   
   
   
   
   
  



 




<%--
    <asp:Panel ID="maxINSERTSlidePanel" runat="server" Visible="False">
        <h3 style=" color:Gray; font-size:25px;"><asp:Label ID="maxSLIDETitleLabel" runat="server" Text=""></asp:Label></h3>
        <hr /><br />
        <asp:Image ID="maxSLIDECropedImage" runat="server" CssClass="maxImage"/><br />

            <table id="Table2" cellpadding="4" class="maxTable" >
            <tr>
                <th width="22%"></th>
                <th width="2%"></th>
                <th width="75%"></th>
                <th width="1%"></th>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="SlideTitleSubLabel" runat="server" Text="Slide Sub Title" CssClass="maxLabel"></asp:Label></td>
                <td valign="top"></td>
                <td valign="top"><asp:TextBox ID="SlideTitleSubTextBox" runat="server" CssClass="maxTextBox"></asp:TextBox></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="SlideBodyMainLabel" runat="server" Text="Slide Main Body" CssClass="maxLabel"></asp:Label></td>
                <td valign="top"></td>
                <td valign="top"><textarea runat="server" class="ckeditor" id="editor1" name="editor1" cols="10" rows="10" style="width:100px;"></textarea></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="SlideTheamColorOne" runat="server" Text="Title Background Colour" CssClass="maxLabel"></asp:Label></td>
                <td valign="top"></td>
                <td valign="top"><asp:TextBox ID="maxSlideTheamColorOne" runat="server" CssClass="color maxTextBox" ></asp:TextBox></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="SlideTheamColorTwo" runat="server" Text="ReadMe Background Colour" CssClass="maxLabel"></asp:Label></td>
                <td valign="top"></td>
                <td valign="top"><asp:TextBox ID="maxSlideTheamColorTwo" runat="server" CssClass="color maxTextBox" ></asp:TextBox></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="SlideDiscripitionLabel" runat="server" Text="Slide Discription" CssClass="maxLabel"></asp:Label></td>
                <td valign="top"></td>
                <td valign="top"><asp:TextBox ID="maxSlideDiscripitionTextBox" runat="server" CssClass="maxTextBox" Height="100" TextMode="MultiLine"></asp:TextBox></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td><asp:Button ID="slideInsertButton" runat="server" Text="SAVE SLIDE" CssClass="maxButton" OnClick="slideInsertButton_Click" /></td>
                <td></td>
            </tr>
        </table>
    </asp:Panel>



    <asp:Panel ID="maxSlideInsertCompletePanel" runat="server" Visible="False">
        <div style=" display:block; margin:0;">
            <h3 style=" color:Gray; font-size:25px;"><asp:Label ID="maxCompleteSlideTitleLabel" runat="server" Text=""></asp:Label></h3>
            <hr /><br />
            <asp:Image ID="maxSMALLCropedImage" runat="server" />
            <br /><br />
            <h3 style=" color:Gray; font-size:20px;"><asp:Label ID="Label1" runat="server" Text="Slide Upload To Main Page Successfully . . !"></asp:Label></h3>
        </div>
    </asp:Panel>


--%>
</asp:Content>