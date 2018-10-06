<%@ Page Title="" Language="C#" MasterPageFile="~/Account.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="maxACCOUNT.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AccountHead" runat="server">
    <link href="style/register.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <br />
    <br />
    <table align="center" cellpadding="10px">
        <tr align="center">
            <th width="1000px">
            </th>
        </tr>
        <tr align="center">
            <td>

                <asp:Panel ID="maxPRIMARYPanel" runat="server">
                    <ul class="maxClassSelectBox">
                        <li style="display: block; padding: 15px;">
                            <table>
                                <tr>
                                    <td>
                                        <div class="row-fluid sortable">
                                            <div class="box span12">
                                                <div class="box-header well" data-original-title>
                                                    <h2>
                                                        Maxford Student Registration Form</h2>
                                                </div>
                                                <div class="box-content">
                                                    <form>
                                                    <fieldset>
                                                        <legend>New Student</legend>
                                                        <div>
                                                            <asp:Label ID="errorLabel" runat="server" Text="" Visible="false" style=" color:Red; font-size:large;"></asp:Label>
                                                        </div>

                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your First Name">
                                                                <asp:TextBox ID="FNameTextBox" runat="server" placeholder="First Name"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Middle Name">
                                                                <asp:TextBox ID="MNameTextBox" runat="server" placeholder="Middle Name"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Last Name">
                                                                <asp:TextBox ID="LNameTextBox" runat="server" placeholder="Last Name"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Surname">
                                                                <asp:TextBox ID="SNameTextBox" runat="server" placeholder="Surname"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Initial Name">
                                                                <asp:TextBox ID="INameTextBox" runat="server" placeholder="Initial Name"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Birth Day">
                                                                <asp:DropDownList ID="maxDropDownListBDay" runat="server" Width="120px">
                                                                </asp:DropDownList>
                                                            </a><a class="tooltip-right" data-tooltip="Enter Your Birth Month">
                                                                <asp:DropDownList ID="maxDropDownListBMonth" runat="server" Width="220px">
                                                                </asp:DropDownList>
                                                            </a><a class="tooltip-right" data-tooltip="Enter Your Birth Year">
                                                                <asp:DropDownList ID="maxDropDownListBYear" runat="server" Width="160px">
                                                                </asp:DropDownList>
                                                            </a>
                                                        </div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Gender">
                                                                <asp:DropDownList ID="maxDropDownListGender" runat="server" Width="512px">
                                                                </asp:DropDownList>
                                                            </a>
                                                        </div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Home Address One">
                                                                <asp:TextBox ID="HomeAddressTextBoxOne" runat="server" placeholder="Home Address One"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Home Address Two">
                                                                <asp:TextBox ID="HomeAddressTextBoxTwo" runat="server" placeholder="Home Address Two"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Contact Number">
                                                                <asp:TextBox ID="ContactNumberTextBox" runat="server" placeholder="Contact Number"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Telephone Number">
                                                                <asp:TextBox ID="TeleNumberTextBox" runat="server" placeholder="Telephone Number"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Email Address">
                                                                <asp:TextBox ID="EmailAddressTextBox" runat="server" placeholder="Email Address"></asp:TextBox></a></div>
                                                        <div>
                                                            <div class="small">
                                                                <a class="tooltip-right" data-tooltip="You must agree with the terms and conditions of Maxford.">
                                                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                                                    I agree with the <a class="tooltip-right" data-tooltip="Click here to view terms and conditions."
                                                                        href="/pages/terms-and-conditions">terms and conditions</a> </a>
                                                            </div>
                                                            <asp:Button ID="submitButton" runat="server" Text="SUBMIT" OnClick="submitButton_Click" />
                                                        </div>
                                                    </fieldset>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </li>
                    </ul>
                </asp:Panel>

                <asp:Panel ID="Panel2" runat="server">
                    <ul class="maxClassSelectBox">
                        <li style="display: block; padding: 15px;">
                            <table>
                                <tr>
                                    <td>
                                        <div class="row-fluid sortable">
                                            <div class="box span12">
                                                <div class="box-header well" data-original-title>
                                                    <h2>
                                                        Maxford Student Registration Form</h2>
                                                </div>
                                                <div class="box-content">
                                                    <form>
                                                    <fieldset>
                                                        <legend>Add Classes</legend>

                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Gender">
                                                                <asp:DropDownList ID="maxGradeCatogoryDropDownList" runat="server" Width="512px">
                                                                </asp:DropDownList>
                                                            </a>
                                                        </div>
                                                        <div>
                                                                    <asp:CheckBoxList ID="chklstStates" runat="server" Width="512px">
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; Alaska" Value="Alaska"></asp:ListItem>
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; Arizona" Value="Arizona"></asp:ListItem>
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; Arkansas" Value="Arkansas"></asp:ListItem>
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; California" Value="California"></asp:ListItem>
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; Connecticut" Value="Connecticut"></asp:ListItem>
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; Florida" Value="Florida"></asp:ListItem>
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; Delaware" Value="Delaware"></asp:ListItem>
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; Hawaii" Value="Hawaii"></asp:ListItem>
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; Kentucky" Value="Kentucky"></asp:ListItem>
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; Maryland" Value="Maryland"></asp:ListItem>
                                                                      </asp:CheckBoxList>
                                                        </div>


                                                        <div>
                                                            <div class="small">
                                                                <a class="tooltip-right" data-tooltip="Click the next button to go next step.">
                                                                    <br />
                                                                    <asp:Button ID="Button2" runat="server" Text="NEXT" />
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </li>
                    </ul>
                </asp:Panel>

                <asp:Panel ID="Panel1" runat="server">
                    <ul class="maxClassSelectBox">
                        <li style="display: block; padding: 15px;">
                            <table>
                                <tr>
                                    <td>
                                        <div class="row-fluid sortable">
                                            <div class="box span12">
                                                <div class="box-header well" data-original-title>
                                                    <h2>
                                                        Maxford Student Registration Form</h2>
                                                </div>
                                                <div class="box-content">
                                                    <form>
                                                    <fieldset>
                                                        <legend>More Information</legend>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your First Name">
                                                                <asp:TextBox ID="TextBox11" runat="server" placeholder="First Name"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Middle Name">
                                                                <asp:TextBox ID="TextBox12" runat="server" placeholder="Middle Name"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Last Name">
                                                                <asp:TextBox ID="TextBox13" runat="server" placeholder="Last Name"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Surname">
                                                                <asp:TextBox ID="TextBox14" runat="server" placeholder="Surname"></asp:TextBox></a>
                                                                </div>

                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="You must agree with the terms and conditions of Maxford.">
                                                                <asp:Button ID="Button3" runat="server" Text="SAVE" />
                                                            </a>
                                                        </div>

                                                    </fieldset>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </li>
                    </ul>
                </asp:Panel>


            </td>
        </tr>
    </table>
</asp:Content>