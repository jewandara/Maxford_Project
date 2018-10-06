<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formxx.aspx.cs" Inherits="maxACCOUNT.test.formxx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/password-jquery.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">




    <div style="height:400px"><br />

<asp:TextBox ID="txtPassword1" runat="server"></asp:TextBox><br />
<asp:TextBox ID="txtPassword2" runat="server"></asp:TextBox><br />
<asp:TextBox ID="txtPassword3" runat="server"></asp:TextBox><br />

 <asp:Button ID="btnSubmit" runat="server" Text="Button" />

<script type="text/javascript">
    $(document).ready(function () {
        var myPSPlugin = $("[id$='txtPassword1']").password_strength();
        var myPSPlugin = $("[id$='txtPassword2']").password_strength();
        var myPSPlugin = $("[id$='txtPassword3']").password_strength();
    });    
</script>


    </div>





    </form>
</body>
</html>
