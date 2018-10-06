<%@ Page Title="" Language="C#" MasterPageFile="~/maxEvent/Event.Master" AutoEventWireup="true" CodeBehind="SlideData.aspx.cs" Inherits="MAXFORD.maxEvent.SlideData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="SubEventContentPlaceHolder" runat="server">
<%--        <asp:Repeater ID="maxSlideRepeater" runat="server" DataSourceID="TOPSlideSqlDataSource">
            <HeaderTemplate><ul></HeaderTemplate>
                <ItemTemplate>
                    --%>
                    <img src="../Max_Data/Max_LocalResources/<%# Eval("SlidePictLinkTwo") %>" alt="<%# Eval("SlideReadMeBody") %>" style=" width:955px; padding:2px; border:1px solid #111;" />
                        <!--    MAXFORD WOWSLIDER DISCRIPTION BOX   -->
                        <br /><br />
                        <div class="max_slideBox">
                            <h1><%# Eval("SlideTitle") %></h1>
                            <div class="max_slideBoxTitle">
                                <table class="max_slideBoxTable">
                                <tr>
                                    <td><i><%# Eval("SlideReadMeBody") %></i></td>
                                </tr>
                                <tr>
                                    <td><i><%# Eval("SlideTitleBody")%></i></td>
                                </tr>
                                </table>
                            </div>
                        </div>
                    
                    <p style="padding:2px;"><%# Eval("SlideMainBody")%></p>
<%--
                </ItemTemplate>
            <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>

        <asp:SqlDataSource 
            ID="TOPSlideSqlDataSource"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            
            
            SelectCommand="SELECT * FROM [MAX_PAGE_Slide] WHERE ([SlideID] = @SlideID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="SlideID" QueryStringField="SlideID" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>--%>
</asp:Content>
