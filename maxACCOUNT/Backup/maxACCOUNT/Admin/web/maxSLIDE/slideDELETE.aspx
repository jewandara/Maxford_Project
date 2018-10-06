<%@ Page Title="" Language="C#" MasterPageFile="~/Max_Account/MaxfordUser/Administrator/Admin.Master" AutoEventWireup="true" CodeBehind="slideDELETE.aspx.cs" Inherits="MAXFORD.Max_Account.MaxfordUser.Administrator.maxSLIDE.maxSlideDelete" %>
<%@ Register Src="~/Max_Account/MaxfordUser/Administrator/maxSLIDE/TopBar.ascx" TagPrefix="maxTOP" TagName="maxMenuFunction"%>


<asp:Content ID="Content1" ContentPlaceHolderID="Adminhead" runat="server">
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBodyHead" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHoldermaxTopMenuBar" runat="server">
  <maxTOP:maxMenuFunction runat="server" id="MaxUserFunction"></maxTOP:maxMenuFunction>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
 <table width="100%" id="maxDataGridTable">

    <tr Class="maxTRData">
        <td  width="5%" style="height:20px;background:#639888;border:1px solid #000;" ><asp:Label ID="maxActiviatedLabel" runat="server" Text="DELETE" Font-Bold="True" ForeColor="#002828"></asp:Label></td>
        <td  width="11%" style="padding-left:8px;height:20px;background:#639888;border:1px solid #000;" ><asp:Label ID="maxImageLabel" runat="server" Text="Image" Font-Bold="True" ForeColor="#002828"></asp:Label></td>
        <td  width="25%" style="padding-left:8px;height:20px;background:#639888;border:1px solid #000;" ><asp:Label ID="maxTitleLabel" runat="server" Text="Title" Font-Bold="True" ForeColor="#002828"></asp:Label></td>
        <td  width="28%" style="padding-left:8px;height:20px;background:#639888;border:1px solid #000;" ><asp:Label ID="maxReadMeLabel" runat="server" Text="Read Me" Font-Bold="True" ForeColor="#002828"></asp:Label></td>
        <td  width="20%" style="padding-left:8px;height:20px;background:#639888;border:1px solid #000;" ><asp:Label ID="maxDiscripitionLabel" runat="server" Text="Discripition" Font-Bold="True" ForeColor="#002828"></asp:Label></td>
        <td  width="10%" style="padding-left:8px;height:20px;background:#639888;border:1px solid #000;" ><asp:Label ID="maxInsertedDateLabel" runat="server" Text="Inserted Date" Font-Bold="True" ForeColor="#002828"></asp:Label></td>
    </tr>

    <asp:Repeater ID="Repeater1" runat="server" 
        DataSourceID="SlideViweToUpdateSqlDataSource">

        <ItemTemplate>
            <tr Class="maxTRData">
                    <td  width="6%" Class="maxActiviatedLabelData"><a href="Delete.aspx?SlideID=<%# Eval("SlideID") %>"><p>DELETE</p></a></td>
                    <td  width="11%"><a href="http://www.maxford.lk/maxSlide/Default.aspx?SlideID=<%# Eval("SlideID") %>"><img class="maxImageLabel" src="http://www.maxford.lk/Max_Data/Max_Slide/SMALL/<%# Eval("SlideLink") %>" /></a></td>
                    <td  width="24%" Class="maxTitleLabelData"><a href="http://www.maxford.lk/maxSlide/Default.aspx?SlideID=<%# Eval("SlideID") %>"><asp:Label ID="maxTitleLabelData" runat="server" Text="" Font-Bold="True" ForeColor="#002828"><%# Eval("SlideTitle")%></asp:Label></a></td>
                    <td  width="27%" Class="maxReadMeLabelData"><asp:Label ID="maxReadMeLabelData" runat="server" Text="" Font-Bold="True" ForeColor="#002828"><%# Eval("SlideReadMe") %></asp:Label></td>
                    <td  width="19%" Class="maxDiscripitionLabelData"><asp:Label ID="maxDiscripitionLabelData" runat="server" Text="" Font-Bold="True" ForeColor="#002828"><%# Eval("SlideDiscripition") %></asp:Label></td>
                    <td  width="10%" Class="maxInsertedDateLabelData"><asp:Label ID="maxInsertedDateLabelData" runat="server" Text="" Font-Bold="True" ForeColor="#002828"><%# Eval("InsertedDate") %></asp:Label></td>
            </tr>
        </ItemTemplate>

    </asp:Repeater>
    <asp:SqlDataSource ID="SlideViweToUpdateSqlDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ZionxMaxDatabaseNet16ConnectionString %>" 
        SelectCommand="SELECT [SlideID], [SlideLink], [SlideTitle], [SlideReadMe], [SlideDiscripition], [InsertedDate], [Activiated] FROM [MAX_PAGE_Slide]">
    </asp:SqlDataSource>
    </table>
</asp:Content>
