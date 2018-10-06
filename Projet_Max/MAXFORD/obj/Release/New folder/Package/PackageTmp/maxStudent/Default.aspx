<%@ Page Title="" Language="C#" MasterPageFile="~/maxStudent/Student.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.maxStudent.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AccountHead" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <br /><br /><br />
    <div style=" width:1200px; display:block; border: 1px solid #DEDEDE; border-radius:5px; margin-left:auto; margin-right:auto;">







        <label class="maxGrouplabel">Maxford Teacher's Profile Details Box One:</label>
        <table align="center">
            <tr align="center">
                <th width="45%"></th>
                <th width="10%"></th>
                <th width="45%"></th>
            </tr>

            <tr align="center">
                <td align="center" valign="middle">
                    <div class="maxTextBoxOut">
                        <asp:TextBox ID="maxFirstName" runat="server" CssClass="maxTextBox tooltip-right" Text="First Name" onfocus="if (this.value=='First Name'){ this.value='';}" onblur="if (this.value==''){ this.value='First Name';}" data-tooltip="Maxford Password is required." >
                        </asp:TextBox>
                    </div>
                </td>
                <td></td>
                <td align="center" valign="middle">
                    <div class="maxTextBoxOut">
                        <asp:TextBox ID="TextBox19" runat="server" CssClass="maxTextBox" Text="" onfocus="if (this.value=='PASS WORD'){ this.value=''; this.style.backgroundColor='#FFF'; this.setAttribute('type', 'password');}" onblur="if (this.value==''){ this.value='PASS WORD'; this.setAttribute('type', 'text');}">
                        </asp:TextBox>
                    </div>
                </td>
            </tr>
            <tr align="center">
                <td align="center" valign="top"><i style=" color:Red" >S eyty jety AVE</i></td>
                <td></td>
                <td align="center" valign="top"><i style=" color:Red" >S eyty jety AVE</i></td>
            </tr>


        </table>

















        </div>
    <br /><br /><br />
</asp:Content>
