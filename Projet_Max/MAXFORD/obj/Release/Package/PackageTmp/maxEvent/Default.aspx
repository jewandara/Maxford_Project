<%@ Page Title="Events of Maxford Higher Educational Institute" Language="C#" MasterPageFile="~/maxEvent/Event.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.maxEvent.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link rel="stylesheet" type="text/css" href="css/WowStyle.css" />
	<script type="text/javascript" src="js/WowJquery.js"></script>
    <link href="css/EventStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>







<asp:Content ID="Content2" ContentPlaceHolderID="SubEventContentPlaceHolder" runat="server">
<div>
<table>
    <tr>
            <td>
	            <div id="wowslider-container1">
	                <div class="ws_images">
                        <ul>
                        <asp:Repeater ID="maxEventSlideRepeater" runat="server" DataSourceID="maxEventSlideSqlDataSource">
                            <ItemTemplate>
                                <li>
                                    <a href='../maxSlide/Default.aspx?SlideID=<%# Eval("SlideID")%>' >
                                    <img src='http://account.maxford.lk/MAX-DATA/SLIDE/<%# Eval("SlideCode") %>/max_<%# Eval("SlidePictureLink") %>' alt="<%# Eval("SlideReadMe")%>" title="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%# Eval("SlideTitle")%>" />
                                    </a>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%# Eval("SlideReadMe")%>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource 
                                ID="maxEventSlideSqlDataSource"
                                runat="server"
                                ConnectionString="<%$ ConnectionStrings:ZionxMaxUserDB %>"
                                SelectCommand="SELECT SlideID,SlideCode,SlidePictureLink,SlideTitle,SlideReadMe,ModifiedDate FROM [aspnet_PageSlide] WHERE (Activiated = 1)">
                        </asp:SqlDataSource>
                        </ul>
                    </div>
	            </div>
	            <script type="text/javascript" src="js/wowslider.js"></script>
	            <script type="text/javascript" src="js/script.js"></script>
            </td>

            <td>
                <div class="maxPopEventsBox">
                    <img src="css/eventstop.png"  width="230"/>
                    <table>
                        <asp:Repeater ID="maxEventNewsRepeater" runat="server" DataSourceID="maxEventNewsSqlDataSource">
                            <ItemTemplate>
                                <tr>
                                    <th>
                                    <a href='../maxNews/Default.aspx?NewsID=<%# Eval("NewsID")%>'><%# Eval("NewsTitle")%></a>
                                    <p><%# Eval("NewsBody")%></p>
                                    </th>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource 
                                ID="maxEventNewsSqlDataSource"
                                runat="server"
                                ConnectionString="<%$ ConnectionStrings:ZionxMaxUserDB %>"
                                SelectCommand="SELECT TOP 4 NewsID,MenuID,NewsTitle,NewsBody FROM [aspnet_PageNews] WHERE (Activiated = 1) ORDER BY ModifiedDate DESC">
                        </asp:SqlDataSource>
                    </table>
                </div>
            </td>
    </tr>
</table>
</div>
</asp:Content>







<asp:Content ID="Content3" ContentPlaceHolderID="maxEventBodyContentPlaceHolder" runat="server">

<br />
<div class="max-Event-MenuNav">
<ul>

                <asp:Repeater ID="maxEventViewSlideRepeater" runat="server" DataSourceID="maxEventViewSlideSqlDataSource">
                    <ItemTemplate>
                        <li>
                            <div class="max-Event-MenuNav-li">
                                <div class="max-Event-MenuNav-img">
                                    <a href='../maxSlide/Default.aspx?SlideID=<%# Eval("SlideID")%>'><img src='http://account.maxford.lk/MAX-DATA/SLIDE/<%# Eval("SlideCode") %>/max_<%# Eval("SlidePictureLink") %>' class="max-Event-MenuNav-link-img"/></a>
                                </div>
                                <div class="max-Event-MenuNav-text">
                                <a href='../maxSlide/Default.aspx?SlideID=<%# Eval("SlideID")%>' style=" text-decoration: none;" ><h2 style=" color:#484848; line-height:190%;" ><%# Eval("SlideTitle")%></h2></a>
                                <p style=" color:Gray; font-size:10px; font-family:Cambria" ><%# Eval("ModifiedDate")%></p>
                                <br />
                                <%# Eval("SlideReadMe")%>
                                <br />
                                <%# Eval("SlideBodyMain")%>
                                </div>
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:SqlDataSource 
                        ID="maxEventViewSlideSqlDataSource"
                        runat="server"
                        ConnectionString="<%$ ConnectionStrings:ZionxMaxUserDB %>"
                        SelectCommand="SELECT SlideID,SlideCode,SlidePictureLink,SlideTitle,SlideBodyMain,SlideReadMe,ModifiedDate FROM [aspnet_PageSlide] WHERE (Activiated = 1) AND (MenuID = @MenuID)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="MenuID" QueryStringField="MenuID" Type="String" />
                        </SelectParameters>
                </asp:SqlDataSource>

</ul>
</div>
</asp:Content>
