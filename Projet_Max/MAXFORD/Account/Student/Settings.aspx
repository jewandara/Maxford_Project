<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Student/Student.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="MAXFORD.Account.Student.Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Profile/style.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
  <div class="container">
    <div class="row">
        <asp:Panel ID="maxRegisterPanel" runat="server" >
            <ul class="maxFormSelectBox">
                <li style="display: block; padding: 15px;">
                    <div class="maxFormSelectBox-box-header">
                        <h1> Student Account Settings </h1><br />
                    </div>
                    <div class="box-content">
                        <asp:Panel ID="maxPanel" CssClass="maxPanel" runat="server">
                            <div class="maxFormSelectBox-box-header">
                                <h2> Change Password </h2><br />
                            </div>
                            <asp:Label ID="LabelError" runat="server" Text="" ForeColor="Red" ></asp:Label>
                            <asp:Label ID="LabelSuccess" runat="server" Text="" ForeColor="Green" ></asp:Label>
                            <br />         
                            <asp:Label ID="Label1" runat="server" AssociatedControlID="Password" Font-Size="14px" >Old Password</asp:Label><br />
                            <asp:TextBox runat="server" ID="TextBoxOldPass" TextMode="Password" placeholder="Enter Old Password" />
                            <div class="maxfieldValidationErrorBox">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Password" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="Password field is required." />
                            </div>

                            <asp:Label ID="Label3" runat="server" AssociatedControlID="Password" Font-Size="14px" >New Password</asp:Label><br />
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" placeholder="Enter New Password" />
                            <div class="maxfieldValidationErrorBox">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="Password" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="Password field is required." />
                            </div>

                            <asp:Label ID="Label4" runat="server" AssociatedControlID="ConfirmPassword" Font-Size="14px" >New Confirm Password</asp:Label><br />
                            <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" placeholder="Re-Enter New Password Again" />
                            <div class="maxfieldValidationErrorBox">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" runat="server" ControlToValidate="ConfirmPassword" CssClass="maxfieldValidationErrorEmpty" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                <asp:CompareValidator ID="CompareValidatorConfirmPassword" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="The password and confirmation password do not match." />
                            </div>

                            <div>
                                <asp:Button ID="Button1" runat="server" Text="SAVE PASSWORD" OnClick="ChangePassword_OnClick" />
                            </div>
                        </asp:Panel>
                        <br />
                    </div>
                </li>
            </ul>
        </asp:Panel>
    </div>
  </div>
<script src="../assets/jquery/jquery.min.js"></script>
<script src="../assets/bootstrap/js/bootstrap.min.js"></script>
<script src="../assets/smooth-scroll/SmoothScroll.js"></script>
<script src="../assets/mobirise/js/script.js"></script>
</asp:Content>
