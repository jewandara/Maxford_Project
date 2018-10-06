<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Account.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MAXFORD.Account.Login" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  

    <section id="loginForm">
        <h2>LOGIN TO MAXFORD</h2>
        <asp:Login ID="Login1" runat="server" ViewStateMode="Disabled" RenderOuterTable="false">
            <LayoutTemplate>
                <p class="validation-summary-errors">
                    <asp:Literal runat="server" ID="FailureText" />
                </p>
                <fieldset>
                    <ol>
                        <li>
                            <asp:Label ID="Label1" runat="server" AssociatedControlID="UserName">Email</asp:Label>
                            <asp:TextBox runat="server" ID="UserName" />
                            <asp:RequiredFieldValidator 
                                ID="RequiredFieldValidator1" 
                                runat="server" 
                                ControlToValidate="UserName" 
                                CssClass="field-validation-error" 
                                ErrorMessage=" Email field is required." />
                        </li>
                        <li>
                            <asp:Label ID="Label2" runat="server" AssociatedControlID="Password">Password</asp:Label>
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                            <asp:RequiredFieldValidator 
                                ID="RequiredFieldValidator2" 
                                runat="server" 
                                ControlToValidate="Password" 
                                CssClass="field-validation-error" 
                                ErrorMessage=" Password field is required." />
                        </li>
                        <li>
                            <asp:CheckBox runat="server" ID="RememberMe" />
                            <asp:Label ID="Label3" runat="server" AssociatedControlID="RememberMe" CssClass="checkbox">Remember Me</asp:Label>
                        </li>
                    </ol>
                    <asp:Button ID="ButtonLogin" runat="server" CommandName="Login" Text="LOGIN MAXFORD" CssClass="registerButton"/>
                </fieldset>
            </LayoutTemplate>
        </asp:Login>
    </section>




    <section id="studentRegistrationForm">
        <h2>STUDENT REGISTRATION</h2>
        <fieldset class="registration">
        <legend></legend>
            <p>
                <asp:HyperLink runat="server" ID="HyperLinkText" ViewStateMode="Disabled">Now, Maxford Students Can Register Online</asp:HyperLink>
            </p>
            <div class="message-info">
                <p>Student Membership can be obtained by completing the appropriate Student Registration Application form. Details of Student Registration Fees can be found <a href="Default.aspx"><b><u>here</u></b></a>.</p>
            </div>
            <br />
            <br />
            <p><asp:HyperLink runat="server" ID="HyperLinkRegister" CssClass="registerButton" >ONLINE REGISTER</asp:HyperLink></p>
        </fieldset>
    </section>


</asp:Content>
