<%@ Page Title="" Language="C#" MasterPageFile="~/Account.Master" AutoEventWireup="true" CodeBehind="Register-Form.aspx.cs" Inherits="maxACCOUNT.Register_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AccountHead" runat="server">
    <link href="style/register.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <br /><br /><br /><br />
        <asp:Label ID="maxCatoryLabelTopic" runat="server" Text="" CssClass="maxGrouplabel"></asp:Label>
        <table align="center">

            <tr align="center">
                <th width="500px"></th>
                <th width="30px"></th>
                <th width="500px"></th>
            </tr>
                        <tr align="center">
                <td align="left" valign="middle">
                    <div class="maxTextBoxOut">
						<asp:DropDownList ID="DropDownList2" CssClass="maxDropDowntBox"  runat="server">
                            <asp:ListItem Text="SELECT LEVEL" Value="1"></asp:ListItem>
                            <asp:ListItem Text="PRIMARY" Value="1"></asp:ListItem>
                            <asp:ListItem Text="SECONDARY" Value="2"></asp:ListItem>
                            <asp:ListItem Text="ORDINARY" Value="3"></asp:ListItem>
                            <asp:ListItem Text="ADVANCED" Value="4"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label15" runat="server" CssClass="maxErrorText" Text="Label"></asp:Label>
                    </div>
                </td>
                <td></td>
                <td align="left" valign="middle">
                    <div class="maxTextBoxOut">
						<asp:DropDownList ID="DropDownList3" CssClass="maxDropDowntBox"  runat="server" onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                            <asp:ListItem Text="SELECT GRADE" Value="1"></asp:ListItem>
                            <asp:ListItem Text="MALE" Value="1"></asp:ListItem>
                            <asp:ListItem Text="FEMALE" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label16" runat="server" CssClass="maxErrorText" Text="Label"></asp:Label>
                    </div>
                </td>
            </tr>


            <tr align="center">
                <td align="left" valign="middle">
                    <div class="maxTextBoxOut">
						<asp:DropDownList ID="maxTitle" CssClass="maxDropDowntBox"  runat="server">
                            <asp:ListItem Text="SELECT TITLE" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Mr" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Mrs" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Ms" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Miss" Value="4"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label9" runat="server" CssClass="maxErrorText" Text="Label"></asp:Label>
                    </div>
                </td>
                <td></td>
                <td align="left" valign="middle">
                    <div class="maxTextBoxOut">
						<asp:DropDownList ID="DropDownList1" CssClass="maxDropDowntBox"  runat="server">
                            <asp:ListItem Text="SELECT GENDER" Value="1"></asp:ListItem>
                            <asp:ListItem Text="MALE" Value="1"></asp:ListItem>
                            <asp:ListItem Text="FEMALE" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label10" runat="server" CssClass="maxErrorText" Text="Label"></asp:Label>
                    </div>
                </td>
            </tr>


            <tr align="center">
                <td align="left" valign="middle">
                    <div class="maxTextBoxOut">
                        <asp:TextBox 
                                ID="maxFirstName" 
                                runat="server" 
                                CssClass="maxTextBox" 
                                Text="FIRST NAME" 
                                onfocus="if (this.value=='FIRST NAME'){ this.value=''; }" 
                                onblur="if (this.value==''){ this.value='FIRST NAME'; }" >
                        </asp:TextBox>
                        <asp:Label ID="Label1" runat="server" CssClass="maxErrorText" Text="Label"></asp:Label>
                    </div>
                </td>
                <td></td>
                <td align="left" valign="middle">
                    <div class="maxTextBoxOut">
                        <asp:TextBox 
                                ID="TextBox1" 
                                runat="server" 
                                CssClass="maxTextBox" 
                                Text="MIDDLE NAME" 
                                onfocus="if (this.value=='MIDDLE NAME'){ this.value=''; }" 
                                onblur="if (this.value==''){ this.value='MIDDLE NAME'; }" >
                        </asp:TextBox>
                        <asp:Label ID="Label2" runat="server" CssClass="maxErrorText" Text="Label"></asp:Label>
                    </div>
                </td>
            </tr>

            <tr align="center">
                <td align="left" valign="middle">
                    <div class="maxTextBoxOut">
                        <asp:TextBox 
                                ID="TextBox2" 
                                runat="server" 
                                CssClass="maxTextBox" 
                                Text="LAST NAME" 
                                onfocus="if (this.value=='LAST NAME'){ this.value=''; }" 
                                onblur="if (this.value==''){ this.value='LAST NAME'; }" >
                        </asp:TextBox>
                        <asp:Label ID="Label3" runat="server" CssClass="maxErrorText" Text="Label"></asp:Label>
                    </div>
                </td>
                <td></td>
                <td align="left" valign="middle">
                    <div class="maxTextBoxOut">
                        <asp:TextBox 
                                ID="TextBox3" 
                                runat="server" 
                                CssClass="maxTextBox" 
                                Text="SURNAME" 
                                onfocus="if (this.value=='SURNAME'){ this.value=''; }" 
                                onblur="if (this.value==''){ this.value='SURNAME'; }" >
                        </asp:TextBox>
                        <asp:Label ID="Label4" runat="server" CssClass="maxErrorText" Text="Label"></asp:Label>
                    </div>
                </td>
            </tr>

            <tr align="center">
                <td align="left" valign="middle">
                    <div class="maxTextBoxOut">
                        <asp:TextBox 
                                ID="TextBox4" 
                                runat="server" 
                                CssClass="maxTextBox" 
                                Text="HOME ADDRESS" 
                                onfocus="if (this.value=='HOME ADDRESS'){ this.value=''; }" 
                                onblur="if (this.value==''){ this.value='HOME ADDRESS'; }" 
                                TextMode="MultiLine">
                        </asp:TextBox>
                        <asp:Label ID="Label5" runat="server" CssClass="maxErrorText" Text="Label"></asp:Label>
                    </div>
                </td>
                <td></td>
                <td align="left" valign="middle">
                    <div class="maxTextBoxOut">
                        <asp:TextBox 
                                ID="TextBox5" 
                                runat="server" 
                                CssClass="maxTextBox" 
                                Text="OFFICE ADDRESS" 
                                onfocus="if (this.value=='OFFICE ADDRESS'){ this.value=''; }" 
                                onblur="if (this.value==''){ this.value='OFFICE ADDRESS'; }" 
                                TextMode="MultiLine">
                        </asp:TextBox>
                        <asp:Label ID="Label6" runat="server" CssClass="maxErrorText" Text="Label"></asp:Label>
                    </div>
                </td>
            </tr>

             <tr>
                <td><br /></td>
                <td></td>
                <td></td>
            </tr>

            <tr align="center">
                <td align="left" valign="middle">
                    <div class="maxTextBoxOut">
                        <asp:TextBox 
                                ID="TextBox8" 
                                runat="server" 
                                CssClass="maxTextBox" 
                                Text="CONTACT NUMBER" 
                                onfocus="if (this.value=='CONTACT NUMBER'){ this.value=''; }" 
                                onblur="if (this.value==''){ this.value='CONTACT NUMBER'; }" >
                        </asp:TextBox>
                        <asp:Label ID="Label11" runat="server" CssClass="maxErrorText" Text="Label"></asp:Label>
                    </div>
                </td>
                <td></td>
                <td align="left" valign="middle">
                    <div class="maxTextBoxOut">
                        <asp:TextBox 
                                ID="TextBox9" 
                                runat="server" 
                                CssClass="maxTextBox" 
                                Text="HANDPHONE NUMBER" 
                                onfocus="if (this.value=='HANDPHONE NUMBER'){ this.value=''; }" 
                                onblur="if (this.value==''){ this.value='HANDPHONE NUMBER'; }" >
                        </asp:TextBox>
                        <asp:Label ID="Label12" runat="server" CssClass="maxErrorText" Text="Label"></asp:Label>
                    </div>
                </td>
            </tr>

            <tr align="center">
                <td align="left" valign="middle">
                    <div class="maxTextBoxOut">
                        <asp:TextBox 
                                ID="TextBox10" 
                                runat="server" 
                                CssClass="maxTextBox" 
                                Text="PERSONAL E-MAIL" 
                                onfocus="if (this.value=='PERSONAL E-MAIL'){ this.value=''; }" 
                                onblur="if (this.value==''){ this.value='PERSONAL E-MAIL'; }" >
                        </asp:TextBox>
                        <asp:Label ID="Label13" runat="server" CssClass="maxErrorText" Text="Label"></asp:Label>
                    </div>
                </td>
                <td></td>
                <td align="left" valign="middle">
                    <div class="maxTextBoxOut">
                        <asp:TextBox 
                                ID="TextBox11" 
                                runat="server" 
                                CssClass="maxTextBox" 
                                Text="OFFICEAL E-MAIL" 
                                onfocus="if (this.value=='OFFICEAL E-MAIL'){ this.value=''; }" 
                                onblur="if (this.value==''){ this.value='OFFICEAL E-MAIL'; }" >
                        </asp:TextBox>
                        <asp:Label ID="Label14" runat="server" CssClass="maxErrorText" Text="Label"></asp:Label>
                    </div>
                </td>
            </tr>

            <tr align="center">
                <td align="left" valign="middle">
                    <div class="maxTextBoxOut">
                        <asp:TextBox 
                                ID="TextBox6" 
                                runat="server" 
                                CssClass="maxTextBox" 
                                Text="CITY" 
                                onfocus="if (this.value=='CITY'){ this.value=''; }" 
                                onblur="if (this.value==''){ this.value='CITY'; }" >
                        </asp:TextBox>
                        <asp:Label ID="Label7" runat="server" CssClass="maxErrorText" Text="Label"></asp:Label>
                    </div>
                </td>
                <td></td>
                <td align="left" valign="middle">
                    <div class="maxTextBoxOut">
                        <asp:TextBox 
                                ID="TextBox7" 
                                runat="server" 
                                CssClass="maxTextBox" 
                                Text="COUNTRY" 
                                onfocus="if (this.value=='COUNTRY'){ this.value=''; }" 
                                onblur="if (this.value==''){ this.value='COUNTRY'; }" >
                        </asp:TextBox>
                        <asp:Label ID="Label8" runat="server" CssClass="maxErrorText" Text="Label"></asp:Label>
                    </div>
                </td>
            </tr>

             <tr>
                <td><br /></td>
                <td></td>
                <td></td>
            </tr>

           <tr align="center">
                <td align="left" valign="middle">
                    <div class="maxTextBoxOut">
                        <asp:Button ID="Button1" runat="server" Text="SUBMIT" />
                    </div>
                </td>
                <td></td>
                <td align="left" valign="middle">
                    <div class="maxTextBoxOut">
                        <asp:Button ID="Button2" runat="server" Text=" SUBMIT FORM " CssClass="maxSubmitBox"/>
                    </div>
                </td>
            </tr>

        </table>
    </asp:Panel>
</asp:Content>
