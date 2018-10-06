<%@ Page Title="Insert Main Slide" validateRequest="false" Language="C#" MasterPageFile="~/Max_Account/MaxfordUser/User.Master" AutoEventWireup="true" CodeBehind="maxSlideAdd.aspx.cs" Inherits="MAXFORD.Max_Account.MaxfordUser.Administrator.maxSlide.maxSlideAdd" %>
<%@ Register Src="~/Max_Account/MaxfordUser/Administrator/maxSLIDE/TopBar.ascx" TagPrefix="maxTOP" TagName="maxMenuFunction"%>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../../../Max_Data/Max_Editor/ckeditor.js" type="text/javascript"></script>
    <link href="../../css/FormStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBodyHead" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHoldermaxTopMenuBar" runat="server">
  <maxTOP:maxMenuFunction runat="server" id="MaxUserFunction"></maxTOP:maxMenuFunction>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
     <table cellpadding="6" style="width:100%; text-align:left;">
        <tr>
            <th width="15%"></th>
            <th width="1%"></th>
            <th width="74%"></th>
            <th width="10%"></th>
        </tr>
        <tr>
            <td valign="top"><asp:Label ID="maxSlideTitleLabel" runat="server" Text="Slide Title" CssClass="maxUserDataLabelStyle"></asp:Label></td>
            <td valign="top">:</td>
            <td valign="top"><asp:TextBox ID="maxSlideTitleLabelTextBox" runat="server" CssClass="maxUserDataTextBoxStyle"></asp:TextBox></td>
            <td valign="top"></td>
        </tr>
        <tr>
            <td valign="top"><asp:Label ID="maxSlideReadMeLabel" runat="server" Text="Slide Read Me" CssClass="maxUserDataLabelStyle"></asp:Label></td>
            <td valign="top">:</td>
            <td valign="top"><asp:TextBox ID="maxSlideReadMeTextBox" runat="server"  CssClass="maxUserDataTextBoxStyle"></asp:TextBox></td>
            <td valign="top"></td>
        </tr>
        <tr>
            <td valign="top"><asp:Label ID="SlideTitleSubLabel" runat="server" Text="Slide Title Sub" CssClass="maxUserDataLabelStyle"></asp:Label></td>
            <td valign="top">:</td>
            <td valign="top"><asp:TextBox ID="SlideTitleSubTextBox" runat="server"  CssClass="maxUserDataTextBoxStyle"></asp:TextBox></td>
            <td valign="top"></td>
        </tr>
        <tr>
            <td valign="top"><asp:Label ID="SlideBodyMainLabel" runat="server" Text="Slide Body Main" CssClass="maxUserDataLabelStyle"></asp:Label></td>
            <td valign="top">:</td>
            <td valign="top"><textarea runat="server" class="ckeditor" id="editor1" name="editor1" cols="10" rows="10" style="width:100px;"></textarea></td>
            <td valign="top"></td>
        </tr>
        <tr>
            <td valign="top"><asp:Label ID="maxSlideBodySubLabel" runat="server" Text="Slide Body Sub" CssClass="maxUserDataLabelStyle"></asp:Label></td>
            <td valign="top">:</td>
            <td valign="top"><asp:TextBox ID="maxSlideBodySubTextBox" runat="server"  CssClass="maxUserDataTextBoxStyle" TextMode="MultiLine" ></asp:TextBox></td>
            <td valign="top"></td>
        </tr>
        <tr>
            <td valign="top"><asp:Label ID="maxSlideLinkLabel" runat="server" Text="Slide Link" CssClass="maxUserDataLabelStyle"></asp:Label></td>
            <td valign="top">:</td>
            <td valign="top"><asp:FileUpload ID="maxSlideLinkUpload" runat="server" CssClass="maxUserDataUploadButtonStyle"  /></td>
            <td valign="top"><p style=" font-size:10px;">WIDTH:1000px & HEIGHT:430px</p></td>
        </tr>
        <tr>
            <td valign="top"><asp:Label ID="maxSlidePictureLinkLabel" runat="server" Text="Slide Picture Link" CssClass="maxUserDataLabelStyle"></asp:Label></td>
            <td valign="top">:</td>
            <td valign="top"><asp:FileUpload ID="maxSlidePictureLinkUpload" runat="server" CssClass="maxUserDataUploadButtonStyle" /></td>
            <td valign="top"><p style=" font-size:10px;">Any Size</p></td>
        </tr>
        <tr>
            <td valign="top"><asp:Label ID="maxSlideTheamColorOneLabel" runat="server" Text="Slide Theam One" CssClass="maxUserDataLabelStyle"></asp:Label></td>
            <td valign="top">:</td>
            <td valign="top">         
                    <asp:DropDownList ID="maxSlideTheamColorOneListBox" runat="server" Width="100%"  CssClass="maxUserDataTextBoxStyle">
                        <asp:ListItem Value="background:#B27C7C;border-color:#B27C7C;" style="display:block;background:#B27C7C;height:18px;">Theam : Colour 1</asp:ListItem>
                        <asp:ListItem Value="background:#B2977C;border-color:#B2977C;" style="display:block;background:#B2977C;height:18px;">Theam : Colour 2</asp:ListItem>
                        <asp:ListItem Value="background:#B2AB7C;border-color:#B2AB7C;" style="display:block;background:#B2AB7C;height:18px;">Theam : Colour 3</asp:ListItem>
                        <asp:ListItem Value="background:#9FB27C;border-color:#9FB27C;" style="display:block;background:#9FB27C;height:18px;">Theam : Colour 4</asp:ListItem>
                        <asp:ListItem Value="background:#81B27C;border-color:#81B27C;" style="display:block;background:#81B27C;height:18px;">Theam : Colour 5</asp:ListItem>
                        <asp:ListItem Value="background:#7CB2A2;border-color:#7CB2A2;" style="display:block;background:#7CB2A2;height:18px;">Theam : Colour 6</asp:ListItem>
                        <asp:ListItem Value="background:#7CA0B2;border-color:#7CA0B2;" style="display:block;background:#7CA0B2;height:18px;">Theam : Colour 7</asp:ListItem>
                        <asp:ListItem Value="background:#7CA0B2;border-color:#7CA0B2;" style="display:block;background:#7CA0B2;height:18px;">Theam : Colour 8</asp:ListItem>
                        <asp:ListItem Value="background:#7F7DB3;border-color:#7F7DB3;" style="display:block;background:#7F7DB3;height:18px;">Theam : Colour 9</asp:ListItem>
                        <asp:ListItem Value="background:#A27DB3;border-color:#A27DB3;" style="display:block;background:#A27DB3;height:18px;">Theam : Colour 10</asp:ListItem>
                        <asp:ListItem Value="background:#B37D85;border-color:#B37D85;" style="display:block;background:#B37D85;height:18px;">Theam : Colour 11</asp:ListItem>

                        <asp:ListItem Value="background:#3CB371;border-color:#3CB371;" style="display:block;background:#3CB371;height:18px;">Theam : MediumSeaGreen</asp:ListItem>
                        <asp:ListItem Value="background:#2E8B57;border-color:#2E8B57;" style="display:block;background:#2E8B57;height:18px;">Theam : SeaGreen</asp:ListItem>
                        <asp:ListItem Value="background:#228B22;border-color:#228B22;" style="display:block;background:#228B22;height:18px;">Theam : ForestGreen</asp:ListItem>
                        <asp:ListItem Value="background:#6B8E23;border-color:#6B8E23;" style="display:block;background:#6B8E23;height:18px;">Theam : OliveDrab</asp:ListItem>
                        <asp:ListItem Value="background:#808000;border-color:#808000;" style="display:block;background:#808000;height:18px;">Theam : Olive</asp:ListItem>
                        <asp:ListItem Value="background:#556B2F;border-color:#556B2F;" style="display:block;background:#556B2F;height:18px;">Theam : DarkOliveGreen</asp:ListItem>
                        <asp:ListItem Value="background:#8FBC8F;border-color:#8FBC8F;" style="display:block;background:#8FBC8F;height:18px;">Theam : DarkSeaGreen</asp:ListItem>
                        <asp:ListItem Value="background:#008080;border-color:#008080;" style="display:block;background:#008080;height:18px;">Theam : Teal</asp:ListItem>
                        <asp:ListItem Value="background:#AFEEEE;border-color:#AFEEEE;" style="display:block;background:#AFEEEE;height:18px;">Theam : PaleTurquoise </asp:ListItem>
                        <asp:ListItem Value="background:#CD5C5C;border-color:#CD5C5C;" style="display:block;background:#CD5C5C;height:18px;">Theam : IndianRed</asp:ListItem>
                        <asp:ListItem Value="background:#E9967A;border-color:#E9967A;" style="display:block;background:#FFA07A;height:18px;">Theam : DarkSalmon</asp:ListItem>
                        <asp:ListItem Value="background:#FFA07A;border-color:#FFA07A;" style="display:block;background:#3CB371;height:18px;">Theam : LightSalmon</asp:ListItem>
                        <asp:ListItem Value="background:#FF8C00;border-color:#FF8C00;" style="display:block;background:#FF8C00;height:18px;">Theam : DarkOrange</asp:ListItem>
                    </asp:DropDownList>
            </td>
            <td valign="top"></td>
        </tr>
        <tr>
            <td valign="top"><asp:Label ID="maxSlideTheamColorTwoLabel" runat="server" Text="Slide Theam Two" CssClass="maxUserDataLabelStyle"></asp:Label></td>
            <td valign="top">:</td>
            <td valign="top">
                    <asp:DropDownList ID="maxSlideTheamColorTwoListBox" runat="server" Width="100%"  CssClass="maxUserDataTextBoxStyle">
                        <asp:ListItem Value="background:#640404;border-color:#640404;" style="display:block;background:#640404;color:#fff;height:20px;">Theam : Dark Colour 1</asp:ListItem>
                        <asp:ListItem Value="background:#5C2806;border-color:#5C2806;" style="display:block;background:#5C2806;color:#fff;height:20px;">Theam : Dark Colour 2</asp:ListItem>
                        <asp:ListItem Value="background:#5C3E06;border-color:#5C3E06;" style="display:block;background:#5C3E06;color:#fff;height:18px;">Theam : Dark Colour 3</asp:ListItem>
                        <asp:ListItem Value="background:#484508;border-color:#484508;" style="display:block;background:#484508;color:#fff;height:18px;">Theam : Dark Colour 4</asp:ListItem>
                        <asp:ListItem Value="background:#2F3F17;border-color:#2F3F17;" style="display:block;background:#2F3F17;color:#fff;height:18px;">Theam : Dark Colour 5</asp:ListItem>
                        <asp:ListItem Value="background:#173F1B;border-color:#173F1B;" style="display:block;background:#173F1B;color:#fff;height:18px;">Theam : Dark Colour 6</asp:ListItem>
                        <asp:ListItem Value="background:#184030;border-color:#184030;" style="display:block;background:#184030;color:#fff;height:18px;">Theam : Dark Colour 7</asp:ListItem>
                        <asp:ListItem Value="background:#1E474C;border-color:#1E474C;" style="display:block;background:#1E474C;color:#fff;height:18px;">Theam : Dark Colour 8</asp:ListItem>
                        <asp:ListItem Value="background:#203E5D;border-color:#203E5D;" style="display:block;background:#203E5D;color:#fff;height:18px;">Theam : Dark Colour 9</asp:ListItem>
                        <asp:ListItem Value="background:#20255D;border-color:#20255D;" style="display:block;background:#20255D;color:#fff;height:18px;">Theam : Dark Colour 10</asp:ListItem>
                        <asp:ListItem Value="background:#47325A;border-color:#47325A;" style="display:block;background:#47325A;color:#fff;height:18px;">Theam : Dark Colour 11</asp:ListItem>
                        <asp:ListItem Value="background:#5A3251;border-color:#5A3251;" style="display:block;background:#5A3251;color:#fff;height:18px;">Theam : Dark Colour 12</asp:ListItem>
                        <asp:ListItem Value="background:#5A3232;border-color:#5A3232;" style="display:block;background:#5A3232;color:#fff;height:18px;">Theam : Dark Colour 13</asp:ListItem>
                        <asp:ListItem Value="background:#3D4141;border-color:#3D4141;" style="display:block;background:#3D4141;color:#fff;height:18px;">Theam : Dark Colour 14</asp:ListItem>
                        <asp:ListItem Value="background:#000000;border-color:#000000;" style="display:block;background:#000000;color:#fff;height:18px;">Theam : Dark Colour 15</asp:ListItem>
                    </asp:DropDownList>
            </td>
            <td valign="top"></td>
        </tr>
        <tr>
            <td valign="top"><asp:Label ID="maxSlideDiscripitionLabel" runat="server" Text="Slide Discripition" CssClass="maxUserDataLabelStyle"></asp:Label></td>
            <td valign="top">:</td>
            <td valign="top"><asp:TextBox ID="maxSlideDiscripitionTextBox" runat="server"  CssClass="maxUserDataTextBoxStyle"></asp:TextBox></td>
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
            <td><asp:Button ID="slideInsertButton" runat="server" Text="SUBMIT" onclick="slideInsertButton_Click" CssClass="maxUserDataButtonStyle" /></td>
            <td></td>
        </tr>
    </table>
    <br /><br />
    <hr />
    <br />
</asp:Content>