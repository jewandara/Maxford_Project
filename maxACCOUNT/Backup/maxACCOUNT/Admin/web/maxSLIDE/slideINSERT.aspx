<%@ Page Title="" Language="C#" validateRequest="false" MasterPageFile="~/Max_Account/MaxfordUser/Administrator/Admin.Master" AutoEventWireup="true" CodeBehind="slideINSERT.aspx.cs" Inherits="MAXFORD.Max_Account.MaxfordUser.Administrator.maxSLIDE.slideINSERT1" %>
<%@ Register Src="~/Max_Account/MaxfordUser/Administrator/maxSLIDE/TopBar.ascx" TagPrefix="maxTOP" TagName="maxMenuFunction"%>


<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">

    <script src="../../../../Max_Data/Max_Editor/ckeditor.js" type="text/javascript"></script>
    <script src="../../../../Max_Data/Max_Form/jscolor/jscolor.js" type="text/javascript"></script>
    <link href="../../../../Max_Data/Max_Form/css/FormStyle.css" rel="stylesheet" type="text/css" />

 <%--<script src="../../../../Max_Data/Max_ImageCrop/scripts/jquery.min.js" type="text/javascript"></script>--%>
    <script src="../../../../Max_Data/Max_ImageCrop/scripts/jquery.imgareaselect.pack.js" type="text/javascript"></script>
    <link href="../../../../Max_Data/Max_ImageCrop/css/imgareaselect-default.css" rel="stylesheet" type="text/css" />
    <link href="../../../../Max_Data/Max_ImageCrop/css/style.css" rel="stylesheet" type="text/css" />

      <script type="text/javascript">
          function preview(img, selection) {
              if (!selection.width || !selection.height)
                  return;
              var img = document.getElementById('<%=maxSlideImageUpLoadedOrgnImage.ClientID%>');
              var ImgWidth = img.naturalWidth;
              var ImgHeight = img.naturalHeight;
              var ImageResio = ImgWidth / ImgHeight;
              var scaleX1 = parseInt((selection.x1 * ImgWidth) / 1000);
              var scaleX2 = parseInt((selection.x2 * ImgWidth) / 1000);
              var scaleY1 = parseInt((selection.y1 * ImgHeight) / (1000 / ImageResio));
              var scaleY2 = parseInt((selection.y2 * ImgHeight) / (1000 / ImageResio));
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



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBodyHead" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHoldermaxTopMenuBar" runat="server">
  <maxTOP:maxMenuFunction runat="server" id="MaxUserFunction"></maxTOP:maxMenuFunction>
</asp:Content>
















<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">



    <script type="text/javascript">
        var loadFile = function (event) {
            var output = document.getElementById('<%=maxSlideImageUpLoadedOrgnImage.ClientID%>');
            output.src = URL.createObjectURL(event.target.files[0]);
            document.getElementById('<%=maxCropImagePenel.ClientID%>').style.visibility = "visible";
        };
    </script>



    <asp:Panel ID="maxSlideUploadPanel" runat="server">
        <h3 style=" color:Gray; font-size:25px;">INSERT NEW SLIDE</h3>
        <hr /><br />
        <table id="Table1" cellpadding="4" class="maxTable" >
            <tr>
                <th width="15%"></th>
                <th width="1%"></th>
                <th width="82%"></th>
                <th width="1%"></th>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="TitleLabel" runat="server" Text="Slide Title" CssClass="maxLabel"></asp:Label></td>
                <td valign="top"></td>
                <td valign="top"><asp:TextBox ID="maxSlideTitleTextBox" runat="server" CssClass="maxTextBox"></asp:TextBox></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="ReadMeLabel" runat="server" Text="Slide ReadMe" CssClass="maxLabel"></asp:Label></td>
                <td valign="top"></td>
                <td valign="top"><asp:TextBox ID="maxSlideReadMeTextBox" runat="server" CssClass="maxTextBox"></asp:TextBox></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="SlideUploadLabel" runat="server" Text="Upload Slide" CssClass="maxLabel"></asp:Label></td>
                <td valign="top"></td>
                <td valign="top"><asp:FileUpload ID="maxUploadImage" runat="server" onchange="loadFile(event)" CssClass="maxTextBox"/></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"></td>
                <td valign="top"></td>
                <td valign="top"><asp:Label ID="maxSlideImageUpLoadErrorMesage" runat="server" Text="" CssClass="maxLabel" ReadOnly="True" Visible="false"></asp:Label></td>
                <td valign="top"></td>
            </tr>
        </table>
    </asp:Panel>



    <asp:Panel ID="maxCropImagePenel" runat="server" CssClass="maxCropSlideImage">
        <asp:Image ID="maxSlideImageUpLoadedOrgnImage" alt="   [ Uploaded Image File ]" runat="server" Width="1000px" CssClass="maxImage" />
        <br />
            <table width="1000px"><tr><td>
                <p style=" color:Gray; font-size:16px;">Click On The Uploaded Picture . . .  </p><br />
                <p style=" color:Gray; font-size:16px;">And Crop The Picture . . .  </p>
            </td><td>
                <img src="../../../../Max_Data/Max_ImageCrop/css/mouse-click.gif" alt=" [ Crop Image File ]" height="150px" />
            </td></tr></table>
        <br />
        <asp:Button ID="maxCropSlideImage" runat="server" Text="SAVE SLIDE" OnClick="maxCropSlideImage_Click" CssClass="maxButton maxCropSlideImage" Width="1000px" />
        <br /><br /><hr /><br />
    </asp:Panel>
 


    <asp:HiddenField ID="X1" runat="server" />
    <asp:HiddenField ID="Y1" runat="server" />
    <asp:HiddenField ID="x2" runat="server" />
    <asp:HiddenField ID="y2" runat="server" />
    <asp:HiddenField ID="W1" runat="server" />
    <asp:HiddenField ID="H1" runat="server" />



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




</asp:Content>