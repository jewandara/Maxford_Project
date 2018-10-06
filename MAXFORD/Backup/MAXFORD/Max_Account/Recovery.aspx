<%@ Page Title="" Language="C#" MasterPageFile="~/Max_Account/Account.Master" AutoEventWireup="true" CodeBehind="Recovery.aspx.cs" Inherits="MAXFORD.Max_Account.Recovery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />    
    <br />
    <br />
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
        <QuestionTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0">
                            <tr>
                                <td align="center" colspan="2">
                                    Identity Confirmation</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    Answer the following question to receive your password.</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    User Name:</td>
                                <td>
                                    <asp:Literal ID="UserName" runat="server"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    Question:</td>
                                <td>
                                    <asp:Literal ID="Question" runat="server"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Answer:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                        ControlToValidate="Answer" ErrorMessage="Answer is required." 
                                        ToolTip="Answer is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Text="Submit" 
                                        ValidationGroup="PasswordRecovery1" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </QuestionTemplate>
        <SuccessTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0">
                            <tr>
                                <td>
                                    Your password has been sent to you.</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </SuccessTemplate>
        <UserNameTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0">
                            <tr>
                                <td align="center" colspan="2">
                                    Forgot Your Password?</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    Enter your User Name to receive your password.</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                        ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                        ToolTip="User Name is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Text="Submit" 
                                        ValidationGroup="PasswordRecovery1" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </UserNameTemplate>
    </asp:PasswordRecovery>
    <br />
</asp:Content>







<%--
    <asp:Login ID="LoginMax" runat="server" 
            CreateUserIconUrl="~/Max_Data/Max_Images/icon.png" 
            CreateUserText="Helo Login" 
            FailureText="Plese Try Again Your login attempt was not successful." 
            HelpPageIconUrl="~/Max_Data/Max_Images/search.png" 
            HelpPageText="Click To Help" 
            HelpPageUrl="~/Max_Account/Help.aspx" 
            InstructionText="Enetr You User Name And Pass Word" 
            LoginButtonText="Log In To MaxFord" 
            PasswordRecoveryIconUrl="~/Max_Data/Max_Images/slide-control-icon.png" 
            PasswordRecoveryText="Click to Recover Your Pass Wprd" 
            PasswordRecoveryUrl="~/Max_Account/Recovery.aspx" 
            ToolTip="Enetr Yor User Name And Paas" 
            >



        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LayoutTemplate>
                        <table>



                            <tr>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server" Font-Size="0.8em"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                        ControlToValidate="UserName" ErrorMessage="Enter Maxford User Name or Registered ID." 
                                        ToolTip="Maxford User Name is required." ValidationGroup="LoginMax">
                                        <img src="images/Error3.png" />
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" Font-Size="0.8em" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                        ControlToValidate="Password" ErrorMessage="Enter Maxford Login Password." 
                                        ToolTip="Maxford Password is required." ValidationGroup="LoginMax">
                                        <img src="images/Error3.png" />
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:CheckBox ID="RememberMe" runat="server" 
                                        Text="Remember Me" />
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="LOGIN" ValidationGroup="LoginMax" />
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <img src="../Max_Data/Max_Images/icon.png" alt="Helo Login" />
                                    <asp:HyperLink ID="CreateUserLink" runat="server">Helo Login</asp:HyperLink>
                                    <br />
                                    <img src="../Max_Data/Max_Images/slide-control-icon.png" alt="Click to Recover Your Pass Wprd" />
                                    <asp:HyperLink ID="PasswordRecoveryLink" runat="server" 
                                        NavigateUrl="~/Max_Account/Recovery.aspx">Click to Recover Your Pass Wprd</asp:HyperLink>
                                    <br />
                                    <img src="../Max_Data/Max_Images/search.png" alt="Click To Help" />
                                    <asp:HyperLink ID="HelpLink" runat="server" 
                                        NavigateUrl="~/Max_Account/Help.aspx">Click To Help</asp:HyperLink>
                                </td>
                            </tr>




                        </table>



        </LayoutTemplate>

        <FailureTextStyle BackColor="#FF9966" BorderColor="#FF0066" BorderStyle="Solid" 
            BorderWidth="2px" />
        <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#990000" BorderColor="#FF33CC" BorderWidth="1px" 
            Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
    </asp:Login>


--%>

















