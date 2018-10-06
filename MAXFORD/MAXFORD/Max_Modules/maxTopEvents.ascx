<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="maxTopEvents.ascx.cs" Inherits="MAXFORD.Max_Modules.maxTopEvents" %>

<%--<link href="../Max_Data/Max_CSS/max_event_table_style.css" rel="stylesheet" type="text/css" />
<br/>
    <!--    MAXFORD TOP EVENT BOX   -->
	<div id="maxEventSliderBox">

       <!--    MAXFORD TOP EVENT BOX LEFT SIDE   -->
        <div class="max_event_ws">
            <h1>Featured <br /><strong>Events</strong></h1>
            <p><a href="#">More&nbsp;events</a></p>
        </div>


        <!--    MAXFORD TOP EVENT BOX RIGHT SIDE   -->
	    <div class="max_event_ws_images">
        
        <ul>
        <asp:Repeater ID="maxEventTable_1" runat="server" DataSourceID="maxEventTableSqlDataSource_One">
            <ItemTemplate>

            <li>
                <div class="maxEventSlider">
                    <abbr><a href="<%# Eval("MENUDATAID") %>"  style="border-top: 3px solid #00C; color:#00C;"><%# Eval("NewsTitleMain")%></a></abbr>
                    <p><a href="<%# Eval("NewsLink") %>"><%# Eval("NewsBodyMain")%></a></p>
                </div>
            </li>


            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource 
                ID="maxEventTableSqlDataSource_One" 
                runat="server"  
                ConnectionString="<%$ ConnectionStrings:ZionxMaxDatabaseNet16ConnectionString %>" 
                SelectCommand="EXECUTE dbo.SP_MAX_MAIN_PAGE_TopNewsBox  @max_AppID  =   1,  @max_BaseID =   4,  @max_SubMenuID	=   1">
        </asp:SqlDataSource>
        <%-- #093 #900--%>
<%--        </ul>




        <ul>
        <asp:Repeater ID="maxEventTable_2" runat="server" DataSourceID="maxEventTableSqlDataSource_Two">
            <ItemTemplate>

            <li>
                <div class="maxEventSlider"  style="animation-delay:3s;">
                    <abbr><a href="<%# Eval("MENUDATAID") %>"  style="border-top: 3px solid #90F; color:#90F;"><%# Eval("NewsTitleMain")%></a></abbr>
                    <p><a href="<%# Eval("NewsLink") %>"><%# Eval("NewsBodyMain")%></a></p>
                </div>
            </li>


            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource 
                ID="maxEventTableSqlDataSource_Two" 
                runat="server"  
                ConnectionString="<%$ ConnectionStrings:ZionxMaxDatabaseNet16ConnectionString %>" 
                SelectCommand="EXECUTE dbo.SP_MAX_MAIN_PAGE_TopNewsBox  @max_AppID  =   1,  @max_BaseID =   4,  @max_SubMenuID	=   2">
        </asp:SqlDataSource>
        <%--#90F #990 #390--%>
        </ul>




    <%--    <ul>
        <asp:Repeater ID="maxEventTable_3" runat="server" DataSourceID="maxEventTableSqlDataSource_Three">
            <ItemTemplate>

            <li>
                <div class="maxEventSlider" style="animation-delay:6s;">
                    <abbr><a href="<%# Eval("MENUDATAID") %>"  style="border-top: 3px solid #36F; color:#36F;"><%# Eval("NewsTitleMain")%></a></abbr>
                    <p><a href="<%# Eval("NewsLink") %>"><%# Eval("NewsBodyMain")%></a></p>
                </div>
            </li>

            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource 
                ID="maxEventTableSqlDataSource_Three" 
                runat="server"  
                ConnectionString="<%$ ConnectionStrings:ZionxMaxDatabaseNet16ConnectionString %>" 
                SelectCommand="EXECUTE dbo.SP_MAX_MAIN_PAGE_TopNewsBox  @max_AppID  =   1,  @max_BaseID =   4,  @max_SubMenuID	=   3">
                </asp:SqlDataSource>
        <%--#36F #C63 #F63--%>
<%--        </ul>







        </div>
    </div>
<br/>--%>--%>