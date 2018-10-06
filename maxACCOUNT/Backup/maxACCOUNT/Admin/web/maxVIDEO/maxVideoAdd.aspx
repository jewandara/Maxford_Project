<%@ Page Title="Add New Video" validateRequest="false" Language="C#" MasterPageFile="~/Max_Account/MaxfordUser/User.Master" AutoEventWireup="true" CodeBehind="maxVideoAdd.aspx.cs" Inherits="MAXFORD.Max_Account.MaxfordUser.Administrator.maxVIDEO.maxVideoAdd" %>
<%@ Register Src="~/Max_Account/MaxfordUser/Administrator/maxVIDEO/TopBar.ascx" TagPrefix="maxTOP" TagName="maxMenuFunction"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../../../Max_Data/Max_Editor/ckeditor.js" type="text/javascript"></script>
    <link href="../../css/FormStyle.css" rel="stylesheet" type="text/css" />

    <script src="../../../../Max_Data/Max_Colour/Browser/script.js" type="text/javascript"></script>
    <link href="../../../../Max_Data/Max_Colour/Browser/style.css" rel="stylesheet" type="text/css" />

    <script src="../../../../Max_Data/Max_Colour/Picker/jscolor.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBodyHead" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHoldermaxTopMenuBar" runat="server">
    <maxTOP:maxMenuFunction runat="server" id="MaxUserFunction"></maxTOP:maxMenuFunction>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
<asp:Panel ID="maxINSERT_Video_Panel" runat="server">
        <table id="maxINSERT_Video_Table" cellpadding="6" style="width:100%; text-align:left;">
            <tr>
                <th width="15%"></th>
                <th width="1%"></th>
                <th width="74%"></th>
                <th width="10%"></th>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="maxVideoTitleLabel" runat="server" Text="Video Title" CssClass="maxUserDataLabelStyle"></asp:Label></td>
                <td valign="top">:</td>
                <td valign="top"><asp:TextBox ID="maxVideoTitleLabelTextBox" runat="server" CssClass="maxUserDataTextBoxStyle"></asp:TextBox></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="maxVideoReadMeLabel" runat="server" Text="Video Read Me" CssClass="maxUserDataLabelStyle"></asp:Label></td>
                <td valign="top">:</td>
                <td valign="top"><asp:TextBox ID="maxVideoReadMeTextBox" runat="server"  CssClass="maxUserDataTextBoxStyle"></asp:TextBox></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="VideoTitleSubLabel" runat="server" Text="Video Title Sub" CssClass="maxUserDataLabelStyle"></asp:Label></td>
                <td valign="top">:</td>
                <td valign="top"><asp:TextBox ID="VideoTitleSubTextBox" runat="server"  CssClass="maxUserDataTextBoxStyle"></asp:TextBox></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="VideoBodyMainLabel" runat="server" Text="Video Body Main" CssClass="maxUserDataLabelStyle"></asp:Label></td>
                <td valign="top">:</td>
                <td valign="top"><textarea runat="server" class="ckeditor" id="editor1" name="editor1" cols="10" rows="10" style="width:100px;"></textarea></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="maxVideoLinkLabel" runat="server" Text="Video Link" CssClass="maxUserDataLabelStyle"></asp:Label></td>
                <td valign="top">:</td>
                <td valign="top"><asp:FileUpload ID="maxVideoLinkUpload" runat="server" CssClass="maxUserDataUploadButtonStyle"  /></td>
                <td valign="top"><p style=" font-size:10px;">WIDTH:1000px & HEIGHT:430px</p></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="maxVideoTheamColorOneLabel" runat="server" Text="Video Theam One" CssClass="maxUserDataLabelStyle"></asp:Label></td>
                <td valign="top">:</td>
                <td valign="top">
                                <input ID="maxVideoColourPickerOne" runat="server" class="color maxUserDataTextBoxStyle" value=""/>
                </td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="maxVideoTheamColorTwoLabel" runat="server" Text="Video Theam Two" CssClass="maxUserDataLabelStyle"></asp:Label></td>
                <td valign="top">:</td>
                <td valign="top">
                                <input ID="maxVideoColourPickerTwo" runat="server" class="color maxUserDataTextBoxStyle" value=""/>
                </td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="maxVideoDiscripitionLabel" runat="server" Text="Video Discripition" CssClass="maxUserDataLabelStyle"></asp:Label></td>
                <td valign="top">:</td>
                <td valign="top"><asp:TextBox ID="maxVideoDiscripitionTextBox" runat="server"  CssClass="maxUserDataTextBoxStyle"></asp:TextBox></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td><asp:Button ID="VideoInsertButton" runat="server" Text="SUBMIT" onclick="VideoInsertButton_Click" CssClass="maxUserDataButtonStyle" /></td>
                <td></td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="maxVIEW_Video_Panel" runat="server" Visible="False">

        <table cellpadding="6" style="width:100%;text-align:left;">
            <tr>
                <th></th>
            </tr>
            <tr>
                <td><asp:Label ID="maxVIEW_VideoTitle" runat="server" Text="" CssClass="maxUserDataLabelStyle"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="maxVIEW_VideoReadMe" runat="server" Text="" CssClass="maxUserDataLabelStyle"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Image ID="SmallImageVideo" runat="server" /></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
        </table>
    </asp:Panel>


        <br />
    <br />
    <hr />
    <br />
</asp:Content>
