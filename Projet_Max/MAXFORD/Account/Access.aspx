<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Account.Master" AutoEventWireup="true" CodeBehind="Access.aspx.cs" Inherits="MAXFORD.Account.Access" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Style/register.css" rel="stylesheet" />
    <asp:Panel ID="maxRegisterPanelUser" runat="server">
        <ul class="maxFormSelectBox" style=" margin-top:20px">
            <li style="display: block; padding: 15px;">
                <div class="maxFormSelectBox-box-header">
                    <h2> Maxford Student Registration Form Complete</h2>
                </div>
                <asp:Label ID="emailSend" runat="server" Text=""></asp:Label>
                <div class="box-content">
                    <asp:CreateUserWizard runat="server" ID="RegisterUser" OnCreatedUser="RegisterUser_CreatedUser">
                        <LayoutTemplate>
                            <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
                            <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
                        </LayoutTemplate>
                        <WizardSteps>
                            <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep" ViewStateMode="Disabled" >
                                <ContentTemplate>
                                    <p class="message-info">
                                        Passwords are required to be a minimum of <%: Membership.MinRequiredPasswordLength %> characters in length.
                                    </p>

                                    <p class="validation-summary-errors">
                                        <asp:Literal runat="server" ID="ErrorMessage" />
                                    </p>

                                    <fieldset>
                                        <legend>Registration Form</legend>
                                        <ol>
                                            <li>
                                                <asp:Label ID="Label1" runat="server" AssociatedControlID="Email" Font-Size="14px" >Email</asp:Label>
                                                <asp:TextBox runat="server" ID="Email" TextMode="Email" placeholder="Enter Your Email Address"/>
                                                <br />
                                                <div class="maxfieldValidationErrorBox">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="Email" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="Email address field is required." />
                                                </div>
                                            </li>
                                            <li>
                                                <asp:Label ID="Label2" runat="server" AssociatedControlID="UserName" Font-Size="14px" >Confirm Email</asp:Label>
                                                <asp:TextBox runat="server" ID="UserName" TextMode="Email" placeholder="Re-Enter Your Email Address Again" />
                                                <br />
                                                <div class="maxfieldValidationErrorBox">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ControlToValidate="UserName" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="Confirm Email address field is required." />
                                                    <asp:CompareValidator ID="CompareValidatorUserName" runat="server" ControlToCompare="Email" ControlToValidate="UserName" CssClass="maxfieldValidationErrorMaxMin" ErrorMessage="Confirmation email adress do not match." />
                                                </div>
                                            </li>
                                            <li>
                                                <asp:Label ID="Label3" runat="server" AssociatedControlID="Password" Font-Size="14px" >Password</asp:Label>
                                                <asp:TextBox runat="server" ID="Password" TextMode="Password" placeholder="Enter Password" />
                                                <br />
                                                <div class="maxfieldValidationErrorBox">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="Password" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="Password field is required." />
                                                </div>
                                            </li>
                                            <li>
                                                <asp:Label ID="Label4" runat="server" AssociatedControlID="ConfirmPassword" Font-Size="14px" >Confirm Password</asp:Label>
                                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" placeholder="Re-Enter Password Again" />
                                                <br />
                                                <div class="maxfieldValidationErrorBox">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" runat="server" ControlToValidate="ConfirmPassword" CssClass="maxfieldValidationErrorEmpty" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                                    <asp:CompareValidator ID="CompareValidatorConfirmPassword" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="The password and confirmation password do not match." />
                                                </div>
                                            </li>
                                        </ol>
                                        <asp:Button ID="Button1" runat="server" CommandName="MoveNext" Text="Register" />
                                        <asp:Button ID="Button2" runat="server" Text="Back" OnClientClick="JavaScript:window.history.back(1);return false;"></asp:button>
                                    </fieldset>
                                </ContentTemplate>
                                <CustomNavigationTemplate />
                            </asp:CreateUserWizardStep>
                        </WizardSteps>
                    </asp:CreateUserWizard>
                </div>
            </li>
        </ul>
    </asp:Panel>
</asp:Content>
