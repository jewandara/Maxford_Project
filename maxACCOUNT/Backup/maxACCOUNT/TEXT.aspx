﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TEXT.aspx.cs" Inherits="maxACCOUNT.TEXT" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8"
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            OnNextButtonClick="CreateUserWizard1_NextButtonClick"
            OnCreatedUser="CreateUserWizard1_CreatedUser" ContinueDestinationPageUrl="~/Default.aspx">
            <WizardSteps>
               <asp:WizardStep ID="CreateUserWizardStep0" runat="server">
                    <table border="0" style="font-size: 100%; font-family: Verdana" id="TABLE1" >
                         <tr>
                             <td align="center" colspan="2" style="font-weight: bold; color: white; background-color: #5d7b9d">
                                 Select an Account Name</td>
                         </tr>
                         <tr>
                             <td>
                               <asp:Label ID="AccountNameLabel" runat="server" AssociatedControlID="SearchAccount" > 
                                 Account Name:</asp:Label>
                               <asp:TextBox ID="SearchAccount" runat="server"></asp:TextBox><br />
                               <asp:Label ID="SearchAccountMessage" runat="server" ForeColor="red" />                                          
                             </td>
                         </tr>
                     </table>
                </asp:WizardStep>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                    <ContentTemplate>
                        <table border="0" style="font-size: 100%; font-family: Verdana">
                            <tr>
                                <td align="center" colspan="2" style="font-weight: bold; color: white; background-color: #5d7b9d">
                                    Sign Up for Your New Account</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">
                                        User Name:</asp:Label></td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                        ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">
                                        Password:</asp:Label></td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                        ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">
                                        Confirm Password:</asp:Label></td>
                                <td>
                                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword"
                                        ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required."
                                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">
                                        E-mail:</asp:Label></td>
                                <td>
                                    <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                                        ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">
                                        Security Question:</asp:Label></td>
                                <td>
                                    <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question"
                                        ErrorMessage="Security question is required." ToolTip="Security question is required."
                                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">
                                        Security Answer:</asp:Label></td>
                                <td>
                                    <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer"
                                        ErrorMessage="Security answer is required." ToolTip="Security answer is required."
                                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                                        ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."
                                        ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color: red">
                                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                        </table>
                        <asp:CheckBox ID="SubscribeCheckBox" runat="server" Checked="True" Text="Send me a monthly newsletter." />
                        <br />
                        <asp:CheckBox ID="ShareInfoCheckBox" runat="server" Checked="True" Text="Share my information with partner sites." />
                    </ContentTemplate>
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                    <ContentTemplate>
                        <table border="0" style="font-size: 100%; font-family: Verdana" id="TABLE1" >
                            <tr>
                                <td align="center" colspan="2" style="font-weight: bold; color: white; background-color: #5d7b9d; height: 18px;">
                                    Complete</td>
                            </tr>
                            <tr>
                                <td>
                                    Your account has been successfully created.<br />
                                    <br />
                                    <asp:Label ID="SubscribeLabel" runat="server" Text="You have elected to receive our monthly newsletter."></asp:Label><br />
                                    <br />
                                    <asp:Label ID="ShareInfoLabel" runat="server" Text="You have elected to share your information with partner sites."></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    &nbsp;<asp:Button ID="ContinueButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC"
                                        BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="Continue"
                                        Font-Names="Verdana" ForeColor="#284775" Text="Continue" ValidationGroup="CreateUserWizard1" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CompleteWizardStep>
            </WizardSteps>
            <SideBarStyle BackColor="#5D7B9D" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
            <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid"
                BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
            <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em"
                ForeColor="White" HorizontalAlign="Center" />
            <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid"
                BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
            <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid"
                BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
            <StepStyle BorderWidth="0px" />
        </asp:CreateUserWizard>
        &nbsp;</div>
    </form>
</body>
</html>