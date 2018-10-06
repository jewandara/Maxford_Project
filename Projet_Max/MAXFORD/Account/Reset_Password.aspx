<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Account.Master" AutoEventWireup="true" CodeBehind="Reset_Password.aspx.cs" Inherits="MAXFORD.Account.Reset_Password" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    <link href="Style/register.css" rel="stylesheet" />
    <asp:Panel ID="maxRegisterPanel" runat="server" >
        <ul class="maxFormSelectBox" style=" margin-top:20px">
            <li style="display: block; padding: 15px;">
                <div class="maxFormSelectBox-box-header">
                    <h2> Maxford Student Reset Password</h2>
                </div>
                <div class="box-content">
                    <div>
                        <asp:Label ID="LabelError" runat="server" Text="" ForeColor="Red"></asp:Label>   
                        <asp:Label ID="LabelSuccess" runat="server" Text="" ForeColor="Green"></asp:Label>    
                        <h4><asp:Label ID="LabelEmail" runat="server" Text="" ></asp:Label></h4>
                        <br />
                        <asp:Label ID="Label3" runat="server" AssociatedControlID="Password" Font-Size="14px" >New Password</asp:Label>
                        <asp:TextBox runat="server" ID="Password" TextMode="Password" placeholder="Enter New Password" />
                        <div class="maxfieldValidationErrorBox">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="Password" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="Password field is required." />
                        </div>
                        <asp:Label ID="Label4" runat="server" AssociatedControlID="ConfirmPassword" Font-Size="14px" >New Confirm Password</asp:Label>
                        <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" placeholder="Re-Enter New Password Again" />
                        <div class="maxfieldValidationErrorBox">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" runat="server" ControlToValidate="ConfirmPassword" CssClass="maxfieldValidationErrorEmpty" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                            <asp:CompareValidator ID="CompareValidatorConfirmPassword" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="The password and confirmation password do not match." />
                        </div>
                    </div>
                    <div>
                        <asp:Button ID="ButtonNextStep" runat="server" Text="RESET AND SAVE" OnClick="ButtonResetPass_Click" />
                    </div>
                    <br />
                </div>
            </li>
        </ul>
    </asp:Panel>
</asp:Content>
