<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="MAXFORD.Account.Admin.Debates.Debate.Edit" %>
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
                                <td style="width:150px;padding:5px;vertical-align: text-top;"><strong>Debate ID : <br /></strong></td>
                                <td style="width:600px;padding:5px;"><asp:Label runat="server" Width="100%" ID="labelRecordId" Text="New ID" ></asp:Label></td>
                                <td style="width:200px;padding:5px; color:red"></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Debate Topic :<br /></strong></td>
                                <td style="padding:5px;"><asp:TextBox runat="server" ID="DebateTopic" Width="100%" MaxLength="50"></asp:TextBox></td>
                                <td style="padding:5px; color:red"><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator0" ControlToValidate="DebateTopic" ErrorMessage="* Required field"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Debate Date : <br /></strong></td>
                                <td style="padding:5px;">
                                    <asp:DropDownList ID="DropDownListDate" runat="server" Width="200px" Height="30px"></asp:DropDownList>
                                    /
                                    <asp:DropDownList ID="DropDownListMonth" runat="server" Width="200px" Height="30px"></asp:DropDownList>
                                    /                                 
                                    <asp:DropDownList ID="DropDownListYear" runat="server" Width="200px" Height="30px"></asp:DropDownList>

                                </td>
                                <td style="padding:5px; color:red"></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Debate Time : <br /></strong></td>
                                <td style="padding:5px;">
                                    <asp:DropDownList ID="DropDownListDebateHour" runat="server" Width="200px" Height="30px"></asp:DropDownList>
                                    :
                                    <asp:DropDownList ID="DropDownListDebateMinit" runat="server" Width="200px" Height="30px"></asp:DropDownList>
                                    :                                    
                                    <asp:DropDownList ID="DropDownListDebateTime" runat="server" Width="200px" Height="30px"></asp:DropDownList>
                                </td>
                                <td style="padding:5px; color:red"></td>
                            </tr>
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Debate Location : <br /></strong></td>
                                <td style="padding:5px;"><asp:TextBox runat="server" ID="DebateLocation" Width="100%" MaxLength="255"></asp:TextBox></td>
                                <td style="padding:5px; color:red"></td>
                            </tr>                        
                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Debate Description : <br /></strong></td>
                                <td style="padding:5px;"><asp:TextBox runat="server" ID="DebateTolkingMetheds" Width="100%" MaxLength="255"></asp:TextBox></td>
                                <td style="padding:5px; color:red"></td>
                            </tr>


                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Debate View : <br /></strong></td>
                                <td style="padding:5px;"><CommonUC:SimpleImageUpload runat="server" ID="Picture1"  Width="100%" /></td>
                                <td style="padding:5px; color:red"></td>
                            </tr>

                            <tr>
                                <td style="padding:5px;vertical-align: text-top;"><strong>Debate Body : <br /></strong></td>
                                <td style="padding:5px;"><CKEditor:CKEditorControl ID="DebateBody" Width="100%" Height="500px" BasePath="~/Store/ckeditor/" runat="server"></CKEditor:CKEditorControl></td>
                                <td style="padding:10px; color:red"></td>
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
