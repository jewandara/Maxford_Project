<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IMGCROP.Default1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


      
  <script type="text/javascript" src="scripts/jquery.min.js"></script>
  <script type="text/javascript" src="scripts/jquery.imgareaselect.pack.js"></script>
  <link rel="stylesheet" type="text/css" href="css/imgareaselect-default.css" />
  <link href="css/style.css" rel="stylesheet" type="text/css" />




<script type="text/javascript">
    function preview(img, selection) {
        if (!selection.width || !selection.height)
            return;

//        var scaleX = 100 / selection.width;
//        var scaleY = 100 / selection.height;
//        $('#preview img').css({
//            width: Math.round(scaleX * 100),
//            height: Math.round(scaleY * 100),
//            marginLeft: -Math.round(scaleX * selection.x1),
//            marginTop: -Math.round(scaleY * selection.y1)
//        });

        $('#X').val(selection.x1);
        $('#Y').val(selection.y1);
        $('#x2').val(selection.x2);
        $('#y2').val(selection.y2);
        $('#W').val(selection.width);
        $('#H').val(selection.height);
    }

    $(function () {
        $('#maxSlideImageUpLoadedOrgnImage').imgAreaSelect({ x1: 10, y1: 10, x2: 110, y2: 53 });
        $('#maxSlideImageUpLoadedOrgnImage').imgAreaSelect({ aspectRatio: '100:43', handles: true,
            fadeSpeed: 100, onSelectChange: preview
        });
    });
</script>


</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <script type="text/javascript">
            var loadFile = function (event) {
                var output = document.getElementById('maxSlideImageUpLoadedOrgnImage');
                output.src = URL.createObjectURL(event.target.files[0]);
                document.getElementById("maxCropSlideImage").style.visibility = "visible";
            };
    </script>




        <asp:Panel ID="maxSlideUploadPanel" runat="server">
            <asp:FileUpload ID="Upload" runat="server" onchange="loadFile(event)" /><br />
            <asp:Label ID="maxSlideImageUpLoadErrorMesage" runat="server" Visible="false" />
           
        </asp:Panel>

      


        <asp:Panel ID="maxSlideEditPanel" runat="server" >
            <%--<asp:Button ID="maxSaveSlideImage" runat="server" Text="SAVE"  OnClick="maxSaveSlideImage_Click"  />--%>
            <asp:Image ID="maxSlideImageUpLoadedOrgnImage" alt="[Jcrop Example]" runat="server"/>
            <br />
            <asp:Button ID="maxCropSlideImage" runat="server" Text="Crop" OnClick="maxCropSlideImage_Click" CssClass="maxCropSlideImage" />
        </asp:Panel>



        <asp:Panel ID="pnlCropped" runat="server" Visible="false">
            <asp:Image ID="imgCropped" runat="server" />
        </asp:Panel>



            <asp:HiddenField ID="X" runat="server" />
            <asp:HiddenField ID="Y" runat="server" />
            <asp:HiddenField ID="x2" runat="server" />
            <asp:HiddenField ID="y2" runat="server" />
            <asp:HiddenField ID="W" runat="server" />
            <asp:HiddenField ID="H" runat="server" />



      <%--<div id="preview" style="width: 500px; height: 215px; overflow: hidden;">
        <img src="#" style="width: 100px; height: 43px;">
      </div>--%>










































    </div>
    </form>
</body>
</html>
