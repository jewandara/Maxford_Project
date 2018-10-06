<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="MAXFORD.Account.Teacher.Class.Edit" %>


<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <asp:ScriptManager runat="server" ID="ScriptManager1"></asp:ScriptManager>
        <asp:UpdatePanel runat="server" ID="UpdatePanel1">
            <ContentTemplate>        
 
                    <table border="0" style="width:100%;">
                        <tr>
                            <td style="width:150px;padding:5px;vertical-align: text-top;"><strong>Class ID : <br /></strong></td>
                            <td style="width:600px;padding:5px;"><asp:Label runat="server" Width="100%" ID="labelRecordId" Text="New ID" ></asp:Label></td>
                            <td style="width:200px;padding:5px; color:red"></td>
                        </tr>
                        <tr>
                            <td style="padding:5px;vertical-align: text-top;"><strong>ClassName :<br /></strong></td>
                            <td style="padding:5px;"><asp:TextBox runat="server" ID="ClassName" Width="100%" MaxLength="50"></asp:TextBox></td>
                            <td style="padding:5px; color:red"><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator0" ControlToValidate="ClassName" ErrorMessage="* Required field"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="padding:5px;vertical-align: text-top;"><strong>Class Date : <br /></strong></td>
                            <td style="padding:5px;"><asp:DropDownList ID="DropDownListDate" runat="server" Width="600px" Height="30px"></asp:DropDownList></td>
                            <td style="padding:5px; color:red"></td>
                        </tr>
                        <tr>
                            <td style="padding:5px;vertical-align: text-top;"><strong>Class Start Time : <br /></strong></td>
                            <td style="padding:5px;">
                                <asp:DropDownList ID="DropDownListClassHourStart" runat="server" Width="200px" Height="30px"></asp:DropDownList>
                                :
                                <asp:DropDownList ID="DropDownListClassMinitStart" runat="server" Width="200px" Height="30px"></asp:DropDownList>
                                :                                    
                                <asp:DropDownList ID="DropDownListClassTimeStart" runat="server" Width="200px" Height="30px"></asp:DropDownList>
                            </td>
                            <td style="padding:5px; color:red"></td>
                        </tr>
                        <tr>
                            <td style="padding:5px;vertical-align: text-top;"><strong>Class End Time : <br /></strong></td>
                            <td style="padding:5px;">
                                <asp:DropDownList ID="DropDownListClassHourEnd" runat="server" Width="200px" Height="30px"></asp:DropDownList>
                                :
                                <asp:DropDownList ID="DropDownListClassMinitEnd" runat="server" Width="200px" Height="30px"></asp:DropDownList>
                                :                                    
                                <asp:DropDownList ID="DropDownListClassTimeEnd" runat="server" Width="200px" Height="30px"></asp:DropDownList>
                            </td>
                            <td style="padding:5px; color:red"></td>
                        </tr>
                        <tr>
                            <td style="padding:5px;vertical-align: text-top;"><strong>Subject : <br /></strong></td>
                            <td style="padding:5px;"><asp:DropDownList ID="DropDownListSubject" runat="server" Width="700px" Height="30px"></asp:DropDownList></td>
                            <td style="padding:5px; color:red"></td>
                        </tr>                        
                        <tr>
                            <td style="padding:5px;vertical-align: text-top;"><strong>Grade : <br /></strong></td>
                            <td style="padding:5px;"><asp:DropDownList ID="DropDownListGrade" runat="server" Width="700px" Height="30px"></asp:DropDownList></td>
                            <td style="padding:5px; color:red"></td>
                        </tr>
                        <tr>
                            <td style="padding:5px;vertical-align: text-top;"><strong>Hall : <br /></strong></td>
                            <td style="padding:5px;"><asp:DropDownList ID="DropDownListHall" runat="server" Width="700px" Height="30px"></asp:DropDownList></td>
                            <td style="padding:10px; color:red"></td>
                        </tr>


                        <asp:Panel ID="Panel1" runat="server">
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

            </ContentTemplate>
        </asp:UpdatePanel>
        <CommonUC:MyUpdateProgress1 runat="server" id="UpdateProgress1" />
    </div>
</asp:Content>