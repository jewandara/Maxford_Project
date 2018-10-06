<%@ Page Title="Maxford - Main Page Slide View" Language="C#" MasterPageFile="~/maxSlide/Slide.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.maxSlide.Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="maxEventBodyContentPlaceHolder" runat="server">
<div class="max-Event-MenuNav">

       <asp:Repeater ID="maxMenuSubRepeater" runat="server" 
            DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <h2><%# Eval("SlideTitle")%></h2>
                <h4 style="color:#4E4E4E; font-family:Verdana, Geneva, sans-serif"><%# Eval("SlideReadMe")%></h4>
                <h6 style="color:#858484; font-family:Tahoma, Geneva, sans-serif"><%# Eval("SlideTitleSub")%></h6>
                <br /><br />
                <p><img src="<%# Eval("SlideLink")%>" width="100%"/><br /><%# Eval("SlideBodySub")%></p>
                <br />
                <%# Eval("SlideBodyMain")%>
                <br /><p>________________________</p><br />
                <p>Inserted  :</p><%# Eval("ModifiedDate")%>
                <br /><br />
            </ItemTemplate>
        </asp:Repeater>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ZionxMaxDatabaseNet16ConnectionString %>" 
            SelectCommand="SELECT * FROM dbo.MAX_PAGE_Slide WHERE SlideID = @SlideID">

                <SelectParameters>
                    <asp:QueryStringParameter Name="SlideID" QueryStringField="SlideID" Type="String" />
                </SelectParameters>
        </asp:SqlDataSource>

   
</div>
</asp:Content>
