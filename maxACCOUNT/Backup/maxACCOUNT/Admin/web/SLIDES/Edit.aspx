<%@ Page Title="" validateRequest="false" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="maxACCOUNT.Admin.web.SLIDES.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">

    <script src="http://www.maxford.lk/Max_Data/Max_Editor/ckeditor.js" type="text/javascript"></script>
    <script src="http://www.maxford.lk/Max_Data/Max_Form/jscolor/jscolor.js" type="text/javascript"></script>
    <link href="http://www.maxford.lk/Max_Data/Max_Form/css/FormStyle.css" rel="stylesheet" type="text/css" />

 <%--<script src="../../../../Max_Data/Max_ImageCrop/scripts/jquery.min.js" type="text/javascript"></script>--%>
    <script src="http://www.maxford.lk/Max_Data/Max_ImageCrop/scripts/jquery.imgareaselect.pack.js" type="text/javascript"></script>
    <link href="http://www.maxford.lk/Max_Data/Max_ImageCrop/css/imgareaselect-default.css" rel="stylesheet" type="text/css" />
    <link href="http://www.maxford.lk/Max_Data/Max_ImageCrop/css/style.css" rel="stylesheet" type="text/css" />

      <script type="text/javascript">
          function preview(img, selection) {
              if (!selection.width || !selection.height)
                  return;
              var img = document.getElementById('<%=maxSlideImageUpLoadedOrgnImage.ClientID%>');
              var ImgWidth = img.naturalWidth;
              var ImgHeight = img.naturalHeight;
              var ImageResio = ImgWidth / ImgHeight;
              var scaleX1 = parseInt((selection.x1 * ImgWidth) / 500);
              var scaleX2 = parseInt((selection.x2 * ImgWidth) / 500);
              var scaleY1 = parseInt((selection.y1 * ImgHeight) / (500 / ImageResio));
              var scaleY2 = parseInt((selection.y2 * ImgHeight) / (500 / ImageResio));
              $('#<%=X1.ClientID%>').val(scaleX1);
              $('#<%=Y1.ClientID%>').val(scaleY1);
              $('#<%=x2.ClientID%>').val(selection.x2);
              $('#<%=y2.ClientID%>').val(selection.y2);
              $('#<%=W1.ClientID%>').val(scaleX2 - scaleX1);
              $('#<%=H1.ClientID%>').val(scaleY2 - scaleY1);
              document.getElementById('<%=maxCropSlideImage.ClientID%>').style.visibility = "visible";
          }
          $(function () {
              $('#<%=maxSlideImageUpLoadedOrgnImage.ClientID%>').imgAreaSelect({
                  aspectRatio: '100:43',
                  handles: true,
                  fadeSpeed: 500,
                  onSelectChange: preview
              });
          });
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
            <li><a href="">EDIT</a></li>
		</ul>
	</div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHoldermaxTopMenuBar" runat="server">
</asp:Content>


<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">


    <script type="text/javascript">
        var loadFile = function (event) {
            var output = document.getElementById('<%=maxSlideImageUpLoadedOrgnImage.ClientID%>');
            output.src = URL.createObjectURL(event.target.files[0]);
            document.getElementById('<%=maxCropImagePenel.ClientID%>').style.visibility = "visible";
        };
    </script>


<asp:Panel ID="maxPanelNewRole" runat="server">
		<div class="row-fluid sortable">
			<div class="box span12">
				<div class="box-header well" data-original-title>
					<h2><i class="icon-edit"></i> Maxford Slide - Edit Slide</h2>
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
                                <td><br /><br /></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td align="right" valign="top">CLICK IMAGE</td>
                                <td></td>
                                <td>
                                    <asp:Panel ID="maxCropImagePenel" runat="server" width="100%">
                                        <asp:Image ID="maxSlideImageUpLoadedOrgnImage" alt="" runat="server" style="border:5px solid #000;" width="500px" /><br />
                                    </asp:Panel>
                                </td>
                                <td><asp:Image ID="maxSlideSlectImage" alt="" runat="server" style="border:1px solid #000;" width="230px" /></td>
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
                                <td valign="top">Slide Topic</td>
                                <td valign="top"></td>
                                <td valign="top"><asp:TextBox ID="SlideTitleSubTextBox" runat="server" CssClass="maxTextBox"></asp:TextBox></td>
                                <td valign="top"></td>
                                <td valign="top"></td>
                            </tr>
                            <tr>
                                <td valign="top">Slide Body</td>
                                <td valign="top"></td>
                                <td valign="top"><asp:TextBox ID="maxSlideBodyeditor" runat="server" TextMode="MultiLine" class="ckeditor" ></asp:TextBox></td>
                                <td align="center" valign="top"><a class="btn btn-info" target="_blank" href='http://www.maxford.lk/maxTeacher/teacher.aspx?UserID='>VIEW MY PAGE</a></td>
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
                                <td valign="top">Title Colour</td>
                                <td valign="top"></td>
                                <td valign="top"><asp:TextBox ID="maxSlideTheamColorOne" runat="server" CssClass="color maxTextBox" ></asp:TextBox></td>
                                <td valign="top"></td>
                                <td valign="top"></td>
                            </tr>
                            <tr>
                                <td valign="top">ReadMe Colour</td>
                                <td valign="top"></td>
                                <td valign="top"><asp:TextBox ID="maxSlideTheamColorTwo" runat="server" CssClass="color maxTextBox" ></asp:TextBox></td>
                                <td valign="top"></td>
                                <td valign="top"></td>
                            </tr>
                            <tr>
                                <td valign="top">Discription</td>
                                <td valign="top"></td>
                                <td valign="top"><asp:TextBox ID="maxSlideDiscripitionTextBox" runat="server" CssClass="maxTextBox" Height="100" TextMode="MultiLine"></asp:TextBox></td>
                                <td valign="top"></td>
                                <td valign="top"></td>
                            </tr>


                            <tr>
                                <td></td>
                                <td></td>
                                <td>
                                    <asp:Button ID="maxCropSlideImage" runat="server" Text="SAVE SLIDE"  CssClass="maxButton maxCropSlideImage btn btn-success" Width="100%" OnClick="maxCropSlideImage_Click" />
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