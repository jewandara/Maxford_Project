<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Footer.aspx.cs" Inherits="MAXFORD.Account.Admin.WebPage.Main.Footer" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container" style="margin-top:-25px;">
        <div class="thumbnail">
            <p class="group">
                <a id="A1" runat="server" href="~/Account/Admin/WebPage/Main/Slide.aspx" class="btn btn-default" style="width:200px;">SLIDES</a>
                <a id="A2" runat="server" href="~/Account/Admin/WebPage/Main/Event.aspx" class="btn btn-default" style="width:200px;">EVENTS</a>
                <a id="A3" runat="server" href="~/Account/Admin/WebPage/Main/Header.aspx" class="btn btn-default" style="width:200px;">HEADER</a>
                <a id="A4" runat="server" href="~/Account/Admin/WebPage/Main/Footer.aspx" class="btn btn-default" style="width:200px; background:#000; border-color:#000; color:#fff;">FOOTER</a>
            </p>
        </div>
        <hr style="height:3px; background:#000; margin-top:-18px;"/>
        <asp:ScriptManager runat="server" ID="ScriptManager1"></asp:ScriptManager>
        <asp:UpdatePanel runat="server" ID="UpdatePanel1">
            <ContentTemplate>        
                <div>
                    <table border="0" style="width:100%;">
                        <tr>
                            <td style="padding:5px;vertical-align: text-top;"><strong>Footer Title : <br /></strong></td>
                            <td style="padding:5px;"><asp:TextBox runat="server" ID="PageMainTitle" Width="100%" MaxLength="255"></asp:TextBox></td>
                            <td style="padding:5px; color:red"><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="PageMainTitle" ErrorMessage="* Required field"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="padding:5px;vertical-align: text-top;"><strong>Footer Body : <br /></strong></td>
                            <td style="padding:5px;"><CKEditor:CKEditorControl ID="PageMainBody" Width="100%" Height="500px" BasePath="~/Store/ckeditor/" runat="server"></CKEditor:CKEditorControl></td>
                            <td style="padding:10px; color:red"><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="PageMainBody" ErrorMessage="* Required field"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="padding:5px;vertical-align: text-top;"><strong>Modified Date : <br /></strong></td>
                            <td style="padding:5px;"><asp:TextBox runat="server" ID="ModifiedDate" Width="100%" MaxLength="255" ReadOnly="True" BackColor="#ffffcc"></asp:TextBox></td>
                            <td style="padding:5px; color:red"></td>
                        </tr>
                        <tr>
                            <td style="padding:5px;"></td>
                            <td style="padding:5px;">
                                <asp:Button runat="server" ID="btnSave" Text="Save" Width="100px" Height="50px" CausesValidation="true" OnClick="btnSave_Click" />  
                            </td>
                            <td style="padding:5px;"></td>
                        </tr>
                    </table>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <CommonUC:MyUpdateProgress1 runat="server" id="UpdateProgress1" />
    </div>
<script src="../../assets/jquery/jquery.min.js"></script>
<script src="../../assets/bootstrap/js/bootstrap.min.js"></script>
<script src="../../assets/smooth-scroll/SmoothScroll.js"></script>
<script src="../../assets/mobirise/js/script.js"></script>
</asp:Content>
