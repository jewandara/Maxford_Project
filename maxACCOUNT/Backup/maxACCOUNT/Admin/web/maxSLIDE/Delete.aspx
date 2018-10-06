<%@ Page Title="" Language="C#" MasterPageFile="~/Max_Account/MaxfordUser/Administrator/Admin.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="MAXFORD.Max_Account.MaxfordUser.Administrator.maxSLIDE.Delete" %>
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
 
     <asp:Repeater ID="Repeater1" runat="server" 
        DataSourceID="SlideViweToUpdateSqlDataSource">

        <ItemTemplate>
            <table  align="center" width="100%">
                <tr align="center">
                    <td><img src="http://www.maxford.lk/Max_Data/Max_Slide/ORIG/<%# Eval("SlideLink") %>"  width="400px"/></td>
                </tr>
                <tr align="center">
                    <td><asp:Label ID="Label1" runat="server"><%# Eval("SlideTitle")%></asp:Label></td>
                </tr>
                <tr align="center">
                    <td><asp:Label ID="Label2" runat="server"><%# Eval("SlideReadMe") %></asp:Label></td>
                </tr>
             </table>
        </ItemTemplate>

    </asp:Repeater>

    <asp:SqlDataSource ID="SlideViweToUpdateSqlDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ZionxMaxDatabaseNet16ConnectionString %>" 
            SelectCommand="SELECT [SlideLink], [SlideTitle], [SlideReadMe] FROM dbo.MAX_PAGE_Slide WHERE SlideID = @SlideID">

                <SelectParameters>
                    <asp:QueryStringParameter Name="SlideID" QueryStringField="SlideID" Type="String" />
                </SelectParameters>
    </asp:SqlDataSource>
 
    <br />
    <br />
 
 <table width="100%">
    <tr align="center">
        <td align="center"><asp:Label ID="maxActiviatedLabel" runat="server" Font-Bold="True" ForeColor="#002828" Font-Size="Large"><p>Are You Sure , You want to delete this Slide Recode ?<br /> YES or NO</p></asp:Label></td>
    </tr>

    <tr align="center">
        <td>
             <table>
                    <tr align="center">
                        <td><asp:Button ID="DeleteYes" runat="server" Text="YES"  onclick="DeleteYes_Click" /></td>
                        <td><asp:Button ID="DeleteNo" runat="server" Text="NO" onclick="DeleteNo_Click"/></td>
                    </tr>
             </table>
        </td>
    </tr>
</table>

</asp:Content>
