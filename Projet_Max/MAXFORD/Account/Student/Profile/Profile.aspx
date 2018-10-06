<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Student/Student.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="MAXFORD.Account.Student.Profile.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="style.css" rel="stylesheet" />    
    <style type="text/css">
        .maxTopBarButton {text-decoration:none;background-color:#0f687c;color:#fff;border:none; font-size:18px; font-weight:bold; padding:10px;padding-left:20px;padding-right:20px; margin-top:20px;}
        .maxTopBarButton:hover {background:#143a57;color:#fff;}
        input[type='submit'] {background:#000;color:#fff;border:none; font-size:16px; font-weight:bold; padding:10px;padding-left:15px;padding-right:15px; margin-top:10px;}
        input[type='submit']:hover {background:#312d2d;color:#fff;}
        .maxSelectTable { border:2px solid #312d2d;padding:5px; margin:5px;}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
  <div class="container">
    <div class="row">
        <asp:Panel ID="maxRegisterPanel" runat="server" >
            <ul class="maxFormSelectBox">
                <li style="display: block; padding: 15px;">
                    <div class="maxFormSelectBox-box-header">
                        <h1> Maxford Student Profile </h1><br />
                    </div>
                    <div class="box-content">               
                        <div>
                            <a href="Default.aspx" class="maxTopBarButton">PROFILE</a>
                            <a href="Education.aspx" class="maxTopBarButton">EDUCATION</a>
                        </div>         
                        <br />

                        <asp:Panel ID="maxPanel" CssClass="maxPanel" runat="server">
                            <div class="maxFormSelectBox-box-header">
                                <h2> Maxford Student Education </h2><br />
                            </div>
                            <div>
                                <a class="tooltip-right" data-tooltip="Enter Your First Name"><asp:TextBox ID="TextBoxFirstName" CssClass="maxTextBox" runat="server" placeholder="First Name" MaxLength="50"></asp:TextBox></a>
                                <br />
                                <div class="maxfieldValidationErrorBox">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxFirstName" runat="server" ControlToValidate="TextBoxFirstName" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="* First name field is required." />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxFirstName" runat="server" ControlToValidate = "TextBoxFirstName"  CssClass="maxfieldValidationErrorMaxMin"  ValidationExpression = "^[\s\S]{3,50}$" ErrorMessage="* Minimum 3 and Maximum 50 characters allowed."></asp:RegularExpressionValidator>
                                </div>
                            </div> 
                            <div>
                                <a class="tooltip-right" data-tooltip="Enter Your First Name"><asp:TextBox ID="TextBoxMiddleName" CssClass="maxTextBox" runat="server" placeholder="First Name" MaxLength="50"></asp:TextBox></a>
                                <br />
                                <div class="maxfieldValidationErrorBox">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate = "TextBoxMiddleName"  CssClass="maxfieldValidationErrorMaxMin"  ValidationExpression = "^[\s\S]{3,50}$" ErrorMessage="* Minimum 3 and Maximum 50 characters allowed."></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div>
                                <a class="tooltip-right" data-tooltip="Enter Your Last Name"><asp:TextBox ID="TextBoxLastName"  CssClass="maxTextBox" runat="server" placeholder="Last Name" MaxLength="50"></asp:TextBox></a>
                                <br />
                                <div class="maxfieldValidationErrorBox">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxLastName" runat="server" ControlToValidate="TextBoxLastName" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="* Last name field is required." />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxLastName" runat="server" ControlToValidate = "TextBoxLastName"  CssClass="maxfieldValidationErrorMaxMin"  ValidationExpression = "^[\s\S]{4,50}$" ErrorMessage="* Minimum 4 and Maximum 50 characters allowed."></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div>
                                <a class="tooltip-right" data-tooltip="Enter Your Initial Name"><asp:TextBox ID="TextBoxInitalName"  CssClass="maxTextBox" runat="server" placeholder="Initial Name" MaxLength="100"></asp:TextBox></a>
                                <br />
                                <div class="maxfieldValidationErrorBox">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxInitalName" runat="server" ControlToValidate = "TextBoxInitalName"  CssClass="maxfieldValidationErrorMaxMin"  ValidationExpression = "^[\s\S]{6,100}$" ErrorMessage="* Minimum 6 and Maximum 100 characters allowed."></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div>
                                <a class="tooltip-right" data-tooltip="Select Your Gender"><asp:DropDownList ID="DropDownListTitle" runat="server" Width="511px" ForeColor="#373737"></asp:DropDownList></a>
                                <br />
                                <div class="maxfieldValidationErrorBox">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  InitialValue="0" runat="server" ControlToValidate="DropDownListTitle" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="* Select your gender." />
                                </div>
                            </div>  
                            <div>
                                <a class="tooltip-right" data-tooltip="Select Your Gender"><asp:DropDownList ID="maxDropDownListGender" runat="server" Width="511px" ForeColor="#373737"></asp:DropDownList></a>
                                <br />
                                <div class="maxfieldValidationErrorBox">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatormaxDropDownListGender"  InitialValue="0" runat="server" ControlToValidate="maxDropDownListGender" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="* Select your gender." />
                                </div>
                            </div>   
                            <div>
                                <a class="tooltip-right" data-tooltip="Select Your Birth Day"><asp:DropDownList ID="maxDropDownListBDay" runat="server" Width="110px" ></asp:DropDownList></a>
                                <a class="tooltip-right" data-tooltip="Select Your Birth Month"><asp:DropDownList ID="maxDropDownListBMonth" runat="server" Width="220px" ></asp:DropDownList></a>
                                <a class="tooltip-right" data-tooltip="Select Your Birth Year"><asp:DropDownList ID="maxDropDownListBYear" runat="server" Width="158px" ></asp:DropDownList></a>
                                <div class="maxfieldValidationErrorBox">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatormaxDropDownListBDay"  InitialValue="0" runat="server" ControlToValidate="maxDropDownListBDay" CssClass="maxfieldValidationErrorEmptyDate" ErrorMessage="Select Birth Date" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatormaxDropDownListBMonth"  InitialValue="0" runat="server" ControlToValidate="maxDropDownListBMonth" CssClass="maxfieldValidationErrorEmptyMonth" ErrorMessage="Select Birth Month" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatormaxDropDownListBYear"  InitialValue="0" runat="server" ControlToValidate="maxDropDownListBYear" CssClass="maxfieldValidationErrorEmptyYear" ErrorMessage="Select Birth Year" />
                                </div>
                            </div>
                            <div>
                                <asp:Button ID="Button3" runat="server" Text="SAVE" OnClick="ButtonNextStep_Click" />
                            </div>
                        </asp:Panel>


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