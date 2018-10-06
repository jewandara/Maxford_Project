<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="maxEvents.ascx.cs" Inherits="MAXFORD.Max_Data.Max_Modules.maxEvents" %>

<div class="max_top_three">


<table>
<tr>

<asp:DataList ID="maxEventTOPDataList" runat="server" DataKeyField="EventID" DataSourceID="maxEventTOPSqlDataSource" RepeatDirection="Horizontal">
<EditItemStyle />
<ItemTemplate>
    <td>
    	<div class="max_top_three_event"  style="background:#E3E09F; border-color:#69661F;">
        	<div class="max_top_three_inner_event_box">
   				<strong><a href="<%# Eval("MENUDATAID") %>" style="border-color:#69661F;"><%# Eval("EventTitleMain")%></a></strong>
    			<div class="max_top_three_item_image"><%# Eval("EventTitleSub")%></div>
                <div class="max_top_three_event_body"><%# Eval("EventBodyMain")%>
                </div>
             </div>
        </div>
        <div class="max_top_three_read_more">  
        	<a href="<%# Eval("MENUDATAID") %>">READ &nbsp;MORE</a>
            <p><%# Eval("InsertDate") %></p>
        </div>
    </td>
    <td>

</ItemTemplate>
</asp:DataList>
<asp:SqlDataSource 
    ID="maxEventTOPSqlDataSource" 
    runat="server"  
    ConnectionString="<%$ ConnectionStrings:ZionxMaxDatabaseNet16ConnectionString %>" 
    SelectCommand="EXECUTE dbo.SP_MAX_MAIN_PAGE_TopEventBox @max_AppID = 1, @max_BaseID	= 3, @max_SubMenuID	= 1"></asp:SqlDataSource>

</tr>
</table>

</div>
<br />

<%--
#F9B899 --#C63606
#C5DACA --#42664B
#E3E09F --#69661F
#B4E9BF --#1A5525
#A0E9E9 --#166363
#A6BBE1 --#2D4B86
#EDBBF2 --#66156F
#FCA3B0 --#720314
--%>