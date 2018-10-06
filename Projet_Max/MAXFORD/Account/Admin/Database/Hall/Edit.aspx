<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="MAXFORD.Account.Admin.Database.Hall.Edit" %>
<%@ Register Src="~/Store/imgControl/SimpleImageUpload.ascx" TagPrefix="CommonUC" TagName="SimpleImageUpload" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <div>


            <asp:ScriptManager runat="server" ID="ScriptManager1">
            </asp:ScriptManager>

            <asp:UpdatePanel runat="server" ID="UpdatePanel1">
                <ContentTemplate>        
                    <div>
                        <table border="0" style="width:100%;">
                            <tr>
                                <td style="width:150px;padding:5px;vertical-align: text-top;"><strong>Hall ID : <br /></strong></td>
                                <td style="width:600px;padding:5px;"><asp:Label runat="server" Width="100%" ID="labelRecordId" Text="New ID" ></asp:Label></td>
                                <td style="width:200px;padding:5px; color:red"></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Hall Name :<br /></strong></td>
                                <td style="padding:5px;"><asp:TextBox runat="server" ID="HallName" Width="100%" MaxLength="50"></asp:TextBox></td>
                                <td style="padding:5px; color:red"><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator0" ControlToValidate="HallName" ErrorMessage="* Required field"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Hall Title : <br /></strong></td>
                                <td style="padding:5px;"><asp:TextBox runat="server" ID="HallTitle" Width="100%" MaxLength="255"></asp:TextBox></td>
                                <td style="padding:5px; color:red"><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="HallTitle" ErrorMessage="* Required field"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Hall View : <br /></strong></td>
                                <td style="padding:5px;"><CommonUC:SimpleImageUpload runat="server" ID="Picture1"  Width="100%" /></td>
                                <td style="padding:5px; color:red"></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Hall Body : <br /></strong></td>
                                <td style="padding:5px;"><CKEditor:CKEditorControl ID="HallBody" Width="100%" Height="500px" BasePath="~/Store/ckeditor/" runat="server"></CKEditor:CKEditorControl></td>
                                <td style="padding:10px; color:red"></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Hall Location : <br /></strong></td>
                                <td style="padding:5px;"><asp:TextBox runat="server" ID="HallLocation" Width="100%" MaxLength="255"></asp:TextBox></td>
                                <td style="padding:5px; color:red"></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Hall Capacity : <br /></strong></td>
                                <td style="padding:5px;"><asp:TextBox runat="server" ID="HallCapacity" Width="100%" MaxLength="8" TextMode="Number"></asp:TextBox></td>
                                <td style="padding:5px; color:red"><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ControlToValidate="HallCapacity" ErrorMessage="* Required field"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Hall Flow : <br /></strong></td>
                                <td style="padding:5px;"><asp:TextBox runat="server" ID="HallFlow" Width="100%" MaxLength="8" TextMode="Number"></asp:TextBox></td>
                                <td style="padding:5px; color:red"><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ControlToValidate="HallCapacity" ErrorMessage="* Required field"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Number Of Desk : <br /></strong></td>
                                <td style="padding:5px;"><asp:TextBox runat="server" ID="HallNumberOfDesk" Width="100%" MaxLength="8" TextMode="Number"></asp:TextBox></td>
                                <td style="padding:5px; color:red"><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ControlToValidate="HallNumberOfDesk" ErrorMessage="* Required field"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Number Of Chires : <br /></strong></td>
                                <td style="padding:5px;"><asp:TextBox runat="server" ID="HallNumberOfChires" Width="100%" MaxLength="8" TextMode="Number"></asp:TextBox></td>
                                <td style="padding:5px; color:red"><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ControlToValidate="HallNumberOfChires" ErrorMessage="* Required field"></asp:RequiredFieldValidator></td>
                            </tr>

                            <asp:Panel ID="Panel1" runat="server">
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
                            </asp:Panel>


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
    </div>
</asp:Content>

