<%@ Page Title="Maxford Higher Educational Institute" Language="C#" MasterPageFile="~/maxSite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Max_Data/Max_CSS/max_middle_events.css" rel="stylesheet" type="text/css" />
</asp:Content>





<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">

<!-- MAIN PAGE BODY -->
<div class="max_main_event">
    <table>

<%--            <tr>
            <asp:DataList ID="maxEventDataList14" runat="server" DataKeyNames="EventID" DataKeyField="EventID" DataSourceID="maxEventSqlDataSource14" RepeatDirection="Horizontal">
            <ItemStyle HorizontalAlign="Right" />
            <ItemTemplate>
            <td>

    	            <div class="max_event">
        	            <div class="max_inner_event_box">

   				            <strong>
                                   <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='maxEvent/Default.aspx' Target="_blank"><%# Eval("EventTitleMain")%></asp:HyperLink>
                            </strong>

    			            <div class="item_image"><img src="Max_Data/Max_Images/timeTable.png" /></div>
                            <div class="event_body"><%# Eval("EventID")%>
                            </div>
                         </div>
                    </div>

                    <div class="max_read_more">
                        <asp:HyperLink ID="hlnkEnCapRptr" runat="server" Text="READ MORE" NavigateUrl='maxEvent/Event.aspx?EventID={0}' Target="_blank"/>
                        <p><%# Eval("InsertDate") %></p>
                    </div>

             </td>
            </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource 
                ID="maxEventSqlDataSource14" 
                runat="server"  
                ConnectionString="<%$ ConnectionStrings:ZionxMaxDatabaseNet16ConnectionString %>" 
                SelectCommand="EXECUTE dbo.SP_MAX_MAIN_PAGE_BownEventBox @max_AppID = 1, @max_BaseID	= 3, @max_MenuID = 5, @max_SubMenuID = 1" 
                ProviderName="System.Data.SqlClient">
            </asp:SqlDataSource>
            </tr>





            <tr>
            <asp:DataList ID="maxEventDataList58" runat="server" DataKeyField="EventID" DataSourceID="maxEventSqlDataSource58" RepeatDirection="Horizontal">
            <ItemStyle HorizontalAlign="Right" />
            <ItemTemplate>
            <td>
    	            <div class="max_event">
        	            <div class="max_inner_event_box">
   				            <strong><a href="<%# Eval("EventID")%>"><%# Eval("EventTitleMain") %></a></strong>
    			            <div class="item_image"><img src="Max_Data/Max_Images/timeTable.png" /></div>
                            <div class="event_body"><%# Eval("EventBodyMain") %>
                            </div>
                         </div>
                    </div>
                    <div class="max_read_more">
        	            <a href="<%# Eval("EventID")%>">READ MORE</a>
                        <p><%# Eval("InsertDate") %></p>
                    </div>

             </td>
            </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource 
                ID="maxEventSqlDataSource58" 
                runat="server"  
                ConnectionString="<%$ ConnectionStrings:ZionxMaxDatabaseNet16ConnectionString %>" 
                SelectCommand="EXECUTE dbo.SP_MAX_MAIN_PAGE_BownEventBox @max_AppID = 1, @max_BaseID	= 3, @max_MenuID = 5, @max_SubMenuID = 1">
            </asp:SqlDataSource>
            </tr>





            <tr>
            <asp:DataList ID="maxEventDataList912" runat="server" DataKeyField="EventID" DataSourceID="maxEventSqlDataSource912" RepeatDirection="Horizontal">
                <ItemStyle HorizontalAlign="Right" />
            <ItemTemplate>
            <td>
    	            <div class="max_event">
        	            <div class="max_inner_event_box">
   				            <strong><a href="<%# Eval("EventID")%>"><%# Eval("EventTitleMain") %></a></strong>
    			            <div class="item_image"><img src="Max_Data/Max_Images/timeTable.png" /></div>
                            <div class="event_body"><%# Eval("EventBodyMain") %>
                            </div>
                         </div>
                    </div>
                    <div class="max_read_more">
        	            <a href="<%# Eval("EventID")%>">READ MORE</a>
                        <p><%# Eval("InsertDate") %></p>
                    </div>

             </td>
            </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource 
                ID="maxEventSqlDataSource912" 
                runat="server"  
                ConnectionString="<%$ ConnectionStrings:ZionxMaxDatabaseNet16ConnectionString %>"
                SelectCommand="EXECUTE dbo.SP_MAX_MAIN_PAGE_BownEventBox @max_AppID = 1, @max_BaseID	= 3, @max_MenuID = 5, @max_SubMenuID = 1">
            </asp:SqlDataSource>
            </tr>--%>

    </table>

	

</div>

</asp:Content>


