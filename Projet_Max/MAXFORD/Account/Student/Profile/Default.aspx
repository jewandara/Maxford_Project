<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Student/Student.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Account.Student.Profile.Default" %>

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
                        <h1> Maxford Student Education </h1><br />
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
                                <a class="tooltip-right" data-tooltip="Select Your Catogory"><asp:DropDownList ID="maxGradeCatogoryDropDownList" runat="server" Width="500px" ForeColor="#373737" ></asp:DropDownList></a>
                                <br />
                                <div class="maxfieldValidationErrorBox">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  InitialValue="0" runat="server" ControlToValidate="maxGradeCatogoryDropDownList" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="* Select your catogory." />
                                </div>
                            </div>

                            <div>
                                <a class="tooltip-right" data-tooltip="Enter Your Ordinary Level Exam Year"><asp:DropDownList ID="maxDropDownListOllYear" runat="server" Width="500px" ForeColor="#373737" ></asp:DropDownList></a>
                                <br />
                                <div class="maxfieldValidationErrorBox">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2"  InitialValue="0" runat="server" ControlToValidate="maxDropDownListOllYear" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="* Select your O/L Year." />
                                </div>
                            </div>                        

                            <div>
                                <a class="tooltip-right" data-tooltip="Enter Your Primary School"><asp:TextBox ID="TextBoxPrimarySchool" CssClass="maxTextBox" runat="server" placeholder="Primary School" MaxLength="50"></asp:TextBox></a>
                                <br />
                                <div class="maxfieldValidationErrorBox">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate = "TextBoxPrimarySchool"  CssClass="maxfieldValidationErrorMaxMin"  ValidationExpression = "^[\s\S]{3,50}$" ErrorMessage="* Minimum 3 and Maximum 50 characters allowed."></asp:RegularExpressionValidator>
                                </div>
                            </div>
                             
                            <div>
                                <a class="tooltip-right" data-tooltip="Select Your Primary Medium Language"><asp:DropDownList ID="maxDropDownListPrimary" runat="server" Width="500px" ForeColor="#373737" ></asp:DropDownList></a>
                            </div>
                             
                            <div>
                                <a class="tooltip-right" data-tooltip="Enter Your Secondary School"><asp:TextBox ID="TextBoxSecondarySchool" CssClass="maxTextBox" runat="server" placeholder="Secondary School" MaxLength="50"></asp:TextBox></a>
                                <br />
                                <div class="maxfieldValidationErrorBox">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate = "TextBoxSecondarySchool"  CssClass="maxfieldValidationErrorMaxMin"  ValidationExpression = "^[\s\S]{3,50}$" ErrorMessage="* Minimum 3 and Maximum 50 characters allowed."></asp:RegularExpressionValidator>
                                </div>
                            </div>

                            <div>
                                <a class="tooltip-right" data-tooltip="Select Your Secondary Medium Language"><asp:DropDownList ID="maxDropDownListSecondary" runat="server" Width="500px" ForeColor="#373737" ></asp:DropDownList></a>
                            </div>

                            <div>
                                <a class="tooltip-right" data-tooltip="Enter Your Ordinary Level School"><asp:TextBox ID="TextBoxOrdinarySchool" CssClass="maxTextBox" runat="server" placeholder="Ordinary Level School" MaxLength="50"></asp:TextBox></a>
                                <br />
                                <div class="maxfieldValidationErrorBox">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate = "TextBoxOrdinarySchool"  CssClass="maxfieldValidationErrorMaxMin"  ValidationExpression = "^[\s\S]{3,50}$" ErrorMessage="* Minimum 3 and Maximum 50 characters allowed."></asp:RegularExpressionValidator>
                                </div>
                            </div>

                            <div>
                                <a class="tooltip-right" data-tooltip="Select Your Ordinary Level Medium Language"><asp:DropDownList ID="maxDropDownListOrdinary" runat="server" Width="500px" ForeColor="#373737" ></asp:DropDownList></a>
                            </div>

                            <div>
                                <a class="tooltip-right" data-tooltip="Enter Your Advanced Level School"><asp:TextBox ID="TextBoxAdvancedSchool" CssClass="maxTextBox" runat="server" placeholder="Advanced Level School" MaxLength="50"></asp:TextBox></a>
                                <br />
                                <div class="maxfieldValidationErrorBox">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate = "TextBoxAdvancedSchool"  CssClass="maxfieldValidationErrorMaxMin"  ValidationExpression = "^[\s\S]{3,50}$" ErrorMessage="* Minimum 3 and Maximum 50 characters allowed."></asp:RegularExpressionValidator>
                                </div>
                            </div>

                            <div>
                                <a class="tooltip-right" data-tooltip="Select Your Advanced Level Medium Language"><asp:DropDownList ID="maxDropDownListAdvanced" runat="server" Width="500px" ForeColor="#373737" ></asp:DropDownList></a>
                            </div>

                            <div class="maxFormSelectBox-box-header">
                                <h5>For Old Maxfordian </h5><br />
                            </div>

                            <div>
                                <a class="tooltip-right" data-tooltip="Enter Your Univercity Name"><asp:TextBox ID="TextBoxUnivercityName" CssClass="maxTextBox" runat="server" placeholder="Univercity Name" MaxLength="50"></asp:TextBox></a>
                                <br />
                                <div class="maxfieldValidationErrorBox">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate = "TextBoxUnivercityName"  CssClass="maxfieldValidationErrorMaxMin"  ValidationExpression = "^[\s\S]{3,50}$" ErrorMessage="* Minimum 3 and Maximum 50 characters allowed."></asp:RegularExpressionValidator>
                                </div>
                            </div>

                            <div>
                                <a class="tooltip-right" data-tooltip="Enter About Your Univercity Life"><asp:TextBox ID="TextBoxUnivercityLife" CssClass="maxTextBox" runat="server" placeholder="About Univercity Life" MaxLength="250"></asp:TextBox></a>
                                <br />
                                <div class="maxfieldValidationErrorBox">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate = "TextBoxUnivercityLife"  CssClass="maxfieldValidationErrorMaxMin"  ValidationExpression = "^[\s\S]{3,50}$" ErrorMessage="* Minimum 3 and Maximum 50 characters allowed."></asp:RegularExpressionValidator>
                                </div>
                            </div>

                            <div>
                                <a class="tooltip-right" data-tooltip="Enter Your Company Name"><asp:TextBox ID="TextBoxCompanyName" CssClass="maxTextBox" runat="server" placeholder="Company Name" MaxLength="50"></asp:TextBox></a>
                                <br />
                                <div class="maxfieldValidationErrorBox">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate = "TextBoxCompanyName"  CssClass="maxfieldValidationErrorMaxMin"  ValidationExpression = "^[\s\S]{3,50}$" ErrorMessage="* Minimum 3 and Maximum 50 characters allowed."></asp:RegularExpressionValidator>
                                </div>
                            </div>

                            <div>
                                <a class="tooltip-right" data-tooltip="Enter About Your Company Life"><asp:TextBox ID="TextBoxAboutCompany" CssClass="maxTextBox" runat="server" placeholder="About Company Life" MaxLength="250"></asp:TextBox></a>
                                <br />
                                <div class="maxfieldValidationErrorBox">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate = "TextBoxAboutCompany"  CssClass="maxfieldValidationErrorMaxMin"  ValidationExpression = "^[\s\S]{3,50}$" ErrorMessage="* Minimum 3 and Maximum 50 characters allowed."></asp:RegularExpressionValidator>
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
