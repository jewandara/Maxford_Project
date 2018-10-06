<%@ Page Title="Update Main Slide" validateRequest="false" Language="C#" MasterPageFile="~/Max_Account/MaxfordUser/Administrator/Admin.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="MAXFORD.Max_Account.MaxfordUser.Administrator.maxSLIDE.Update" %>
<%@ Register Src="~/Max_Account/MaxfordUser/Administrator/maxSLIDE/TopBar.ascx" TagPrefix="maxTOP" TagName="maxMenuFunction"%>


<asp:Content ID="Content1" ContentPlaceHolderID="Adminhead" runat="server">
    <script src="../../../../Max_Data/Max_Editor/ckeditor.js" type="text/javascript"></script>
    <script src="../../../../Max_Data/Max_Form/jscolor/jscolor.js" type="text/javascript"></script>
    <link href="../../../../Max_Data/Max_Form/css/FormStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBodyHead" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHoldermaxTopMenuBar" runat="server">
  <maxTOP:maxMenuFunction runat="server" id="MaxUserFunction"></maxTOP:maxMenuFunction>
</asp:Content>





<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
        <h3 style=" color:Gray; font-size:25px;">UPDATE SLIDE</h3>
        <hr /><br />
        <table id="Table1" cellpadding="4" class="maxTable" >
            <tr>
                <th width="15%"></th>
                <th width="1%"></th>
                <th width="82%"></th>
                <th width="1%"></th>
            </tr>
            <tr>
                <td valign="top"></td>
                <td valign="top"></td>
                <td valign="top"><asp:Label ID="maxPictLabel" runat="server" Text=""></asp:Label></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="TitleLabel" runat="server" Text="Slide Title" CssClass="maxLabel"></asp:Label></td>
                <td valign="top"></td>
                <td valign="top"><asp:TextBox ID="maxSlideTitleTextBox" runat="server" CssClass="maxTextBox"></asp:TextBox></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="ReadMeLabel" runat="server" Text="Slide ReadMe" CssClass="maxLabel"></asp:Label></td>
                <td valign="top"></td>
                <td valign="top"><asp:TextBox ID="maxSlideReadMeTextBox" runat="server" CssClass="maxTextBox"></asp:TextBox></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="SlideTitleSubLabel" runat="server" Text="Slide Sub Title" CssClass="maxLabel"></asp:Label></td>
                <td valign="top"></td>
                <td valign="top"><asp:TextBox ID="SlideTitleSubTextBox" runat="server" CssClass="maxTextBox"></asp:TextBox></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="SlideBodyMainLabel" runat="server" Text="Slide Body" CssClass="maxLabel"></asp:Label></td>
                <td valign="top"></td>
                <td valign="top"><textarea runat="server" class="ckeditor" id="editor1" name="editor1" cols="10" rows="10" style="width:100px;"></textarea></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="SlideTheamColorOne" runat="server" Text="Title Background Colour" CssClass="maxLabel"></asp:Label></td>
                <td valign="top"></td>
                <td valign="top"><asp:TextBox ID="maxSlideTheamColorOne" runat="server" CssClass="color maxTextBox" ></asp:TextBox></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="SlideTheamColorTwo" runat="server" Text="ReadMe Background Colour" CssClass="maxLabel"></asp:Label></td>
                <td valign="top"></td>
                <td valign="top"><asp:TextBox ID="maxSlideTheamColorTwo" runat="server" CssClass="color maxTextBox" ></asp:TextBox></td>
                <td valign="top"></td>
            </tr>
            <tr>
                <td valign="top"><asp:Label ID="SlideDiscripitionLabel" runat="server" Text="Slide Discription" CssClass="maxLabel"></asp:Label></td>
                <td valign="top"></td>
                <td valign="top"><asp:TextBox ID="maxSlideDiscripitionTextBox" runat="server" CssClass="maxTextBox" Height="100" TextMode="MultiLine"></asp:TextBox></td>
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
                <td><asp:Button ID="slideInsertButton" runat="server" Text="SAVE SLIDE" CssClass="maxButton" OnClick="slideInsertButton_Click" /></td>
                <td></td>
            </tr>
        </table>





    <br />
    <br />
    <hr />
    <br />
</asp:Content>
