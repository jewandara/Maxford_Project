<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Account.Master" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="MAXFORD.Account.Confirm" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    <link href="Style/register.css" rel="stylesheet" />
    <asp:Panel ID="maxRegisterPanel" runat="server" >
        <ul class="maxFormSelectBox" style=" margin-top:20px">
            <li style="display: block; padding: 15px;">
                <div class="maxFormSelectBox-box-header">
                    <h2> Maxford Student Registration Form Confirmation</h2>
                </div>
                <div class="box-content">
                    <fieldset>
                        <legend></legend>
                        <div>
                        </div>
                        <div>
                            <asp:Button ID="ButtonNextStep" runat="server" Text="LOGIN" OnClick="ButtonLogin_Click" />
                        </div>
                    </fieldset>
                    <br />
                    <br />
                </div>
            </li>
        </ul>
        <br />
        <br />
    </asp:Panel>
</asp:Content>
