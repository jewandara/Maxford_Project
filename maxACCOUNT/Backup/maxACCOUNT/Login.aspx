﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Account.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="maxACCOUNT.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AccountHead" runat="server">
        <link href="css/max_login_style.css" rel="stylesheet" type="text/css" />


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">



  <div class="max_login_page">
	    <div class="max_login_logo"></div>
	    <br/>

	    <form>
        <asp:Login ID="LoginMax" runat="server" CssClass="max_login_page_aspBox"
            CreateUserIconUrl="http://www.maxford.lk/Max_Data/Max_Images/icon.png" 
            CreateUserText="Helo Login" 
            FailureText="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please Try Again. Your Login Attempt Was Not Successful ! &nbsp;" 
            HelpPageIconUrl="http://www.maxford.lk/Max_Data/Max_Images/search.png" 
            HelpPageText="Click To Help" 
            HelpPageUrl="http://www.maxford.lk/Max_Account/Help.aspx" 
            InstructionText="Enetr You User Name And Pass Word" 
            LoginButtonText="Log In To MaxFord" 
            PasswordRecoveryIconUrl="http://www.maxford.lk/Max_Data/Max_Images/slide-control-icon.png" 
            PasswordRecoveryText="Click to Recover Your Pass Wprd" 
            PasswordRecoveryUrl="http://www.maxford.lk/Max_Account/Recovery.aspx" 
            DestinationPageUrl="http://www.account.maxford.lk/Login.aspx"
        >
        <InstructionTextStyle/>

        <LayoutTemplate>

            <a class="tooltip-right" data-tooltip="Enter Maxford User Name.">
                <asp:TextBox ID="UserName" runat="server" CssClass="max_login_userName" Text="USER NAME" onfocus="if (this.value=='USER NAME') this.value=''; this.style.backgroundColor='#FFF'; " onblur="if (this.value=='') this.value='USER NAME';" ></asp:TextBox> 
            </a>
            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Enter Maxford User Name or Registered UserID." ValidationGroup="LoginMax">
                <a class="tooltip-right" data-tooltip="Maxford UserID is required.">
                    <img src="images/Error2.png" />
                </a>
            </asp:RequiredFieldValidator>
            
            <br/><br/>

            <a class="tooltip-right" data-tooltip="Enter Maxford Pass Word.">
                <asp:TextBox ID="Password" runat="server" CssClass="max_login_passWord" Text="PASS WORD" type="password" onfocus="if (this.value=='PASS WORD'){ this.value=''; this.style.backgroundColor='#FFF'; this.setAttribute('type', 'password');}" onblur="if (this.value==''){ this.value='PASS WORD'; this.setAttribute('type', 'text');}"></asp:TextBox>
            </a>
            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Enter Maxford Login Password." ValidationGroup="LoginMax">
            <a class="tooltip-right" data-tooltip="Maxford Password is required.">
                <img src="images/Error2.png" />
            </a>
            </asp:RequiredFieldValidator>

            <br/><br/>

            <a class="tooltip-bottom" data-tooltip="Click The Button To Login Page">
                <asp:Button ID="LoginButton" runat="server" CommandName="Login"  Text="LOGIN" ValidationGroup="LoginMax"  CssClass="max_login_button" />
            </a>  
            <a class="tooltip-bottom" data-tooltip="Click The Button To Clear All">
                <button type="reset"  class="max_login_button" value="ass" onClick="clearForms()">Clear</button>
            </a>

            <br/>

            <p>
            <a href="Recovery.aspx" class="tooltip-bottom" data-tooltip="Click The Link To Recover User Login Details">
                <div class="max_login_foget"><p>Forget Your Password</div>
            </a>
            <a class="tooltip-bottom" data-tooltip="Click The Link To Recover User Login Details">
                <asp:CheckBox ID="RememberMe" runat="server" Text="Remember Me" CssClass="max_login_foget"/>
            </a>
            <br />
            <div class="max_login_failure_text">
                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
            </div>
                <p>
                </p>
                <p>
                </p>
                <p>
                </p>
            </p>
	    
        </LayoutTemplate>









                <FailureTextStyle BackColor="#FF9966"  Font-Size="0.8em" ForeColor="#990000" />
                <LoginButtonStyle BackColor="White" Font-Size="0.8em" ForeColor="#990000" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#990000" Font-Size="0.9em" ForeColor="White" />

        </asp:Login>
        </form>



    </div>






</asp:Content>