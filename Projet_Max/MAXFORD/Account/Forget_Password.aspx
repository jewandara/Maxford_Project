<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Account.Master" AutoEventWireup="true" CodeBehind="Forget_Password.aspx.cs" Inherits="MAXFORD.Forget_Password" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    <link href="Style/register.css" rel="stylesheet" />
    <asp:Panel ID="maxRegisterPanel" runat="server" >
        <ul class="maxFormSelectBox" style=" margin-top:20px">
            <li style="display: block; padding: 15px;">
                <div class="maxFormSelectBox-box-header">
                    <h2> Maxford Student Forget Password</h2>
                </div>
                <div class="box-content">
                    <div>                        
                        <br /> 
                        <asp:Label ID="LabelError" runat="server" Text="" ForeColor="Red"></asp:Label>   
                        <asp:Label ID="LabelSuccess" runat="server" Text="" ForeColor="Green"></asp:Label>                       
                        <br />
                        <a class="tooltip-right" data-tooltip="Enter Your Email Address"><asp:TextBox runat="server" ID="Email" TextMode="Email" placeholder="Enter Your Email Address" CssClass="maxTextBox"/></a>
                        <br />
                        <div class="maxfieldValidationErrorBox">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="Email" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="Email address field is required." />
                        </div>
                    </div>
                    <div>
                        <asp:Button ID="ButtonNextStep" runat="server" Text="SUBMIT" OnClick="ButtonReset_Click" />
                    </div>
                    <br />
                </div>
            </li>
        </ul>
    </asp:Panel>
</asp:Content>
