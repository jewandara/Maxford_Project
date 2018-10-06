<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditSlide.aspx.cs" Inherits="MAXFORD.Account.Admin.WebPage.Main.EditSlide" %>
<%@ Register Src="~/Store/imgControl/SimpleImageUpload.ascx" TagPrefix="CommonUC" TagName="SimpleImageUpload" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <asp:ScriptManager runat="server" ID="ScriptManager1"></asp:ScriptManager>
            <asp:UpdatePanel runat="server" ID="UpdatePanel1">
                <ContentTemplate>        
                    <div>
                        <table border="0" style="width:100%;">
                            <tr>
                                <td style="width:150px;padding:5px;vertical-align: text-top;"><strong>Slide ID : <br /></strong></td>
                                <td style="width:600px;padding:5px;"><asp:Label runat="server" Width="100%" ID="labelRecordId" Text="New ID" ></asp:Label></td>
                                <td style="width:200px;padding:5px; color:red"></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Slide Name :<br /></strong></td>
                                <td style="padding:5px;"><asp:TextBox runat="server" ID="PageMainName" Width="100%" MaxLength="50"></asp:TextBox></td>
                                <td style="padding:5px; color:red"><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator0" ControlToValidate="PageMainName" ErrorMessage="* Required field"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Slide Title : <br /></strong></td>
                                <td style="padding:5px;"><asp:TextBox runat="server" ID="PageMainTitle" Width="100%" MaxLength="255"></asp:TextBox></td>
                                <td style="padding:5px; color:red"><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="PageMainTitle" ErrorMessage="* Required field"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Slide View : <br /></strong></td>
                                <td style="padding:5px;"><CommonUC:SimpleImageUpload runat="server" ID="Picture1"  Width="100%" /></td>
                                <td style="padding:5px; color:red"></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Slide Body : <br /></strong></td>
                                <td style="padding:5px;"><asp:TextBox runat="server" ID="PageMainBody" Width="100%" MaxLength="200"></asp:TextBox></td>
                                <td style="padding:10px; color:red"></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Slide Link : <br /></strong></td>
                                <td style="padding:5px;"><asp:TextBox runat="server" ID="PageMainTitleLink" Width="100%" MaxLength="255"></asp:TextBox></td>
                                <td style="padding:5px; color:red"></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Activiated : <br /></strong></td>
                                <td style="padding:5px;"><asp:TextBox runat="server" ID="Activiated" Width="100%" MaxLength="255" ReadOnly="True"></asp:TextBox></td>
                                <td style="padding:5px; color:red"></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Inserted Date : <br /></strong></td>
                                <td style="padding:5px;"><asp:TextBox runat="server" ID="InsertedDate" Width="100%" MaxLength="255" ReadOnly="True"></asp:TextBox></td>
                                <td style="padding:5px; color:red"></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Modified Date : <br /></strong></td>
                                <td style="padding:5px;"><asp:TextBox runat="server" ID="ModifiedDate" Width="100%" MaxLength="255" ReadOnly="True"></asp:TextBox></td>
                                <td style="padding:5px; color:red"></td>
                            </tr>

                            <tr>
                                <td style="padding:5px;"></td>
                                <td style="padding:5px;">
                                    <asp:Button runat="server" ID="btnSave" Text="Save" Width="100px" Height="50px" CausesValidation="true" OnClick="btnSave_Click" />
                                    <asp:Button runat="server" ID="btnCancel" Text="Cancel" Width="100px" Height="50px" CausesValidation="false" OnClick="btnCancel_Click" />    
                                </td>
                                <td style="padding:5px;"></td>
                            </tr>

                        </table>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>

        <CommonUC:MyUpdateProgress1 runat="server" id="UpdateProgress1" />
    </div>
</asp:Content>

