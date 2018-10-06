<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Account.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MAXFORD.Account.Register" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    <link href="Style/register.css" rel="stylesheet" />
    <asp:Panel ID="maxRegisterPanel" runat="server" >
        <ul class="maxFormSelectBox" style=" margin-top:20px">
            <li style="display: block; padding: 15px;">
                <div class="maxFormSelectBox-box-header">
                    <h2> Maxford Student Registration Form ( STEP ONE )</h2>
                </div>
                <div class="box-content">
                    <fieldset>
                        <legend>New Student</legend>
                        <div>
                            <a class="tooltip-right" data-tooltip="Enter Your First Name"><asp:TextBox ID="TextBoxFirstName" CssClass="maxTextBox" runat="server" placeholder="First Name" MaxLength="50"></asp:TextBox></a>
                            <br />
                            <div class="maxfieldValidationErrorBox">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxFirstName" runat="server" ControlToValidate="TextBoxFirstName" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="* First name field is required." />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxFirstName" runat="server" ControlToValidate = "TextBoxFirstName"  CssClass="maxfieldValidationErrorMaxMin"  ValidationExpression = "^[\s\S]{3,50}$" ErrorMessage="* Minimum 3 and Maximum 50 characters allowed."></asp:RegularExpressionValidator>
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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxInitalName" runat="server" ControlToValidate="TextBoxInitalName" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="* Initial name field is required." />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxInitalName" runat="server" ControlToValidate = "TextBoxInitalName"  CssClass="maxfieldValidationErrorMaxMin"  ValidationExpression = "^[\s\S]{6,100}$" ErrorMessage="* Minimum 6 and Maximum 100 characters allowed."></asp:RegularExpressionValidator>
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
                            <a class="tooltip-right" data-tooltip="Select Your Catogory"><asp:DropDownList ID="maxGradeCatogoryDropDownList" runat="server" Width="511px" ForeColor="#373737" ></asp:DropDownList></a>
                            <br />
                            <div class="maxfieldValidationErrorBox">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  InitialValue="0" runat="server" ControlToValidate="maxGradeCatogoryDropDownList" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="* Select your catogory." />
                            </div>
                        </div>
                        <div>
                            <a class="tooltip-right" data-tooltip="Enter Your Home Address"><asp:TextBox ID="TextBoxHomeAddress"  CssClass="maxTextBox" runat="server" placeholder="Home Address"></asp:TextBox></a>
                            <br />
                            <div class="maxfieldValidationErrorBox">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxHomeAddress" runat="server" ControlToValidate="TextBoxHomeAddress" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="* Home address field is required." />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxHomeAddress" runat="server" ControlToValidate = "TextBoxHomeAddress"  CssClass="maxfieldValidationErrorMaxMin"  ValidationExpression = "^[\s\S]{10,150}$" ErrorMessage="* Minimum 10 and Maximum 150 characters allowed."></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div>
                            <a class="tooltip-right" data-tooltip="Enter Your City"><asp:TextBox ID="TextBoxCity" CssClass="maxTextBox" runat="server" placeholder="City"></asp:TextBox></a>
                            <br />
                            <div class="maxfieldValidationErrorBox">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxCity" runat="server" ControlToValidate="TextBoxCity" CssClass="maxfieldValidationErrorEmpty" ErrorMessage="* City field is required." />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxCity" runat="server" ControlToValidate = "TextBoxCity"  CssClass="maxfieldValidationErrorMaxMin"  ValidationExpression = "^[\s\S]{4,50}$" ErrorMessage="* Minimum 4 and Maximum 50 characters allowed."></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div>
                            <a class="tooltip-right" data-tooltip="Enter Your Contact Number"><asp:TextBox ID="TextBox2" CssClass="maxTextBox" runat="server" Text="+ 94" Width="40px" BackColor="#FFFFCC" Font-Bold="True" ForeColor="#666666" MaxLength="4"></asp:TextBox><asp:TextBox ID="TextBoxContactNumber" CssClass="maxTextBox" runat="server" Width="448px" placeholder="Contact Number" MaxLength="12"></asp:TextBox></a>
                            <br />
                            <div class="maxfieldValidationErrorBox">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxContactNumber" runat="server" ControlToValidate = "TextBoxContactNumber"  CssClass="maxfieldValidationErrorNumber"  ValidationExpression = "^\d+$" ErrorMessage="* Only Numbers allowed."></asp:RegularExpressionValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxContactNumberLength" runat="server" ControlToValidate = "TextBoxContactNumber"  CssClass="maxfieldValidationErrorNumberLength"  ValidationExpression = "^[\s\S]{9,12}$" ErrorMessage="* Invalid contact number, minimum 9 and maximum 12 numbers allowed."></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div>
                            <a class="tooltip-right" data-tooltip="Enter Your Telephone Number"><asp:TextBox ID="TextBox1" CssClass="maxTextBox" runat="server" Text="+ 94" Width="40px" BackColor="#FFFFCC" Font-Bold="True" ForeColor="#666666" MaxLength="4"></asp:TextBox><asp:TextBox ID="TextBoxTeleNumber" CssClass="maxTextBox" runat="server" Width="448px" placeholder="Telephone Number" MaxLength="12"></asp:TextBox></a>
                            <br />
                            <div class="maxfieldValidationErrorBox">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxTeleNumber" runat="server" ControlToValidate = "TextBoxTeleNumber"  CssClass="maxfieldValidationErrorNumber"  ValidationExpression = "^\d+$" ErrorMessage="* Only Numbers allowed."></asp:RegularExpressionValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxTeleNumberLength" runat="server" ControlToValidate = "TextBoxTeleNumber"  CssClass="maxfieldValidationErrorNumberLength"  ValidationExpression = "^[\s\S]{9,12}$" ErrorMessage="* Invalid telephone number, minimum 9 and maximum 12 numbers allowed."></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div>
                            <div class="small">
                                <a class="tooltip-right" data-tooltip="You must agree with the terms and conditions of Maxford."><asp:CheckBox ID="CheckBoxTermsAndConditions" runat="server" /> &nbsp;&nbsp; I agree with the <a class="tooltip-right" data-tooltip="Click here to view terms and conditions." href="/terms-and-conditions.aspx"><u><b><i>terms and conditions</i></b></u></a> </a>
                                <br />
                                <asp:CustomValidator ID="CustomValidatorIAgree" runat="server"  ErrorMessage="Please accept the terms and conditions . . . " onservervalidate="CustomValidatorIAgree_ServerValidate"  CssClass="maxfieldValidationErrorEmpty"></asp:CustomValidator>
                            </div>
                        </div>
                        <asp:Panel ID="PanelCondition" runat="server" Visible="False">
                            <div style="display:block; background-color:#9cd383; padding:5px; width:505px;">
                                <div class="small">
                                    <asp:Label ID="LabelSubmitError" runat="server" Text="Your birthday doesn't match with your selected grade." CssClass="maxfieldValidationErrorEmpty"></asp:Label>
                                    <br /><a class="tooltip-right" data-tooltip="Ignore condition"><asp:CheckBox ID="CheckBoxGradeCondition" runat="server" /> &nbsp;&nbsp; Ignore birth day and grade missmatch condition. </a> 
                                </div>
                            </div>
                        </asp:Panel>
                        <div>
                            <asp:Button ID="ButtonNextStep" runat="server" Text="SUBMIT" OnClick="ButtonNextStep_Click" />
                        </div>
                    </fieldset>
                </div>
            </li>
        </ul>
    </asp:Panel>
</asp:Content>
