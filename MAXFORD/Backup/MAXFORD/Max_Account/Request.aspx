<%@ Page Title="" Language="C#" MasterPageFile="~/Max_Account/Account.Master" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="MAXFORD.Max_Account.Request" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/max_register_style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function changeIconTextBox(id) {
            document.getElementById(id).style.background = "#FFF";
        }
</script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <br />
       <asp:Label ID="Label1" runat="server" Text="Only Maxford Student Can Request For This Form" CssClass="max_request_header_text"></asp:Label>
       <br />
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" CssClass="max_request_page" CreateUserButtonText="CONTINUE" 
            AnswerRequiredErrorMessage="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please Enter Your Contact Number." 
            CompleteSuccessText="&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Your Request has been successfully sent. And Your Account will activate within 48 hours. If not, Contact Us." 
            DuplicateEmailErrorMessage="&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; The e-mail address that you entered is already in use. Please enter a different e-mail address." 
            DuplicateUserNameErrorMessage="&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; " 
            InvalidAnswerErrorMessage="&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Please Enter a Different Contact Number. Your Contact Number has been used before." 
            InvalidEmailErrorMessage="&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Enter Correct Email Address" 
            InvalidPasswordErrorMessage="&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Password length minimum: {0}. Non-alphanumeric characters required: {1}." 
            InvalidQuestionErrorMessage="&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Can't use  your Full Name. Get Help or Contact Us." 
            UnknownErrorMessage="&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Your account was not created. Please try again." 
            ContinueButtonText="SEND REQUEST" 
            ContinueDestinationPageUrl="~/Max_Account/Login.aspx">

            <CompleteSuccessTextStyle CssClass="max_request_complete" />
            <ContinueButtonStyle CssClass="max_request_complete_button" />
            <CreateUserButtonStyle CssClass="max_request_button" />

            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                    <ContentTemplate>


                        <table>
                            <tr>
                                <td>
                                    <a class="tooltip-right" data-tooltip="Enter Your User ID">
                                        <asp:TextBox ID="UserName" runat="server" 
                                        CssClass="max_request_textBox max_RTB_LoginID" 
                                        onfocus='changeIconTextBox(this.id)' MaxLength="20"></asp:TextBox>
                                    </a>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator 
                                        ID="UserNameRequired"
                                        runat="server"
                                        ControlToValidate="UserName"
                                        ValidationGroup="CreateUserWizard1">
                                            <a class="tooltip-right" data-tooltip="User id is required. Can't be empty.">
                                                <img src="images/Error2.png" class="max_request_error_image"/>
                                            </a>
                                    </asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <a class="tooltip-right" data-tooltip="Enter Your Full Name">
                                        <asp:TextBox ID="Question" runat="server" 
                                        CssClass="max_request_textBox max_RTB_FullName" 
                                        onfocus='changeIconTextBox(this.id)' MaxLength="75"></asp:TextBox>  
                                    </a>
                                </td>
                                <td>                      
                                    <asp:RequiredFieldValidator 
                                        ID="QuestionRequired" 
                                        runat="server" 
                                        ControlToValidate="Question"  
                                        ValidationGroup="CreateUserWizard1">
                                            <a class="tooltip-right" data-tooltip="Your full name is required. Can't be empty.">
                                                <img src="images/Error2.png" class="max_request_error_image"/>
                                            </a>
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>





                            <tr>
                                <td>
                                    <a class="tooltip-right" data-tooltip="Enter Your Password">
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password" 
                                        CssClass="max_request_textBox max_RTB_Password" 
                                        onfocus='changeIconTextBox(this.id)' MaxLength="25"></asp:TextBox>
                                    </a>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator 
                                        ID="PasswordRequired" 
                                        runat="server" 
                                        ControlToValidate="Password"
                                        ValidationGroup="CreateUserWizard1">
                                            <a class="tooltip-right" data-tooltip="Your password is required. Can't be empty.">
                                                <img src="images/Error2.png" class="max_request_error_image"/>
                                            </a>
                                    </asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <a class="tooltip-right" data-tooltip="Enter Email Address">
                                        <asp:TextBox ID="Email" runat="server" 
                                        CssClass="max_request_textBox max_RTB_Email" 
                                        onfocus='changeIconTextBox(this.id)' MaxLength="100"></asp:TextBox>
                                    </a>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator 
                                        ID="EmailRequired" 
                                        runat="server" 
                                        ControlToValidate="Email"
                                        ValidationGroup="CreateUserWizard1">
                                            <a class="tooltip-right" data-tooltip="Email address is required. Can't be empty.">
                                                <img src="images/Error2.png" class="max_request_error_image"/>
                                            </a>
                                    </asp:RequiredFieldValidator>
                                
                                </td>
                            </tr>





                            <tr>
                                <td>
                                    <a class="tooltip-right" data-tooltip="Enter Password Again">
                                        <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" 
                                        CssClass="max_request_textBox max_RTB_ConfimPassword" 
                                        onfocus='changeIconTextBox(this.id)' MaxLength="25"></asp:TextBox>
                                    </a>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator 
                                        ID="ConfirmPasswordRequired" 
                                        runat="server" 
                                        ControlToValidate="ConfirmPassword"
                                        ValidationGroup="CreateUserWizard1">
                                        <a class="tooltip-right" data-tooltip="Confirm password is required. Can't be empty.">
                                            <img src="images/Error2.png" class="max_request_error_image"/>
                                        </a>
                                    </asp:RequiredFieldValidator>

                                </td>
                                <td>
                                    <a class="tooltip-right" data-tooltip="Enter Contact Number">
                                        <asp:TextBox ID="Answer" runat="server" 
                                        CssClass="max_request_textBox max_RTB_Contact" 
                                        onfocus='changeIconTextBox(this.id)' MaxLength="15"></asp:TextBox>
                                    </a>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator 
                                        ID="AnswerRequired" 
                                        runat="server" 
                                        ControlToValidate="Answer"  
                                        ValidationGroup="CreateUserWizard1">
                                        <a class="tooltip-right" data-tooltip="Contact Number is required. Can't be empty.">
                                            <img src="images/Error2.png" class="max_request_error_image"/>
                                        </a>
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>


                        <br />
                        <asp:CompareValidator 
                        ID="PasswordCompare" 
                        runat="server" 
                        ControlToCompare="Password" 
                        ControlToValidate="ConfirmPassword" 
                        Display="Dynamic" 
                        ErrorMessage="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The Password and Confirmation Password must match." 
                        ValidationGroup="CreateUserWizard1" 
                        CssClass="max_request_error_message"></asp:CompareValidator>

                        <br /><br />
                         <a href="Help.aspx" class="tooltip-right max_request_error_message" data-tooltip="Click To Get Help">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                         </a>
                          <br />
                    </ContentTemplate>
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>
</asp:Content>
