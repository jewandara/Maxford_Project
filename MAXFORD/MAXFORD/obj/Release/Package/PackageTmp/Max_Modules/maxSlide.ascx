<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="maxSlide.ascx.cs" Inherits="MAXFORD.Max_Data.Max_Modules.maxSlide" %>

<!--    MAXFORD WOWSLIDER DISCRIPTION BOX   -->
<div class="max_slideBox_Back">

<link href="../Max_Data/Max_CSS/max_slide_style.css" rel="stylesheet" type="text/css" />
<script src="../Max_Data/Max_JavaScript/max_Slide_Script_3.js" type="text/javascript"></script>
<!--    MAXFORD WOWSLIDER   -->
<div id="wowslider-container1">
	<div class="ws_images">
        <asp:Repeater ID="maxSlideRepeater" runat="server" DataSourceID="TOPSlideSqlDataSource">
            <HeaderTemplate><ul></HeaderTemplate>
                <ItemTemplate>
                    <li>
                    <a href="<%# Eval("SlideID", "./maxSlide/Default.aspx?SlideID={0}") %>" target="_blank"><img src="<%# Eval("SlideLink") %>" alt="<%# Eval("SlideTitle") %>" height="430px" width="1000px" /></a>
                        <!--    MAXFORD WOWSLIDER DISCRIPTION BOX   -->
                        <div class="max_slideBox" style="<%# Eval("SlideTheamColorOne") %>">
                            <h1><a href="<%# Eval("SlideID", "./maxSlide/Default.aspx?SlideID={0}") %>" title="<%# Eval("SlideTitle") %>"><%# Eval("SlideTitle") %></a></h1>
                            <div class="max_slideBoxTitle">
                                <table class="max_slideBoxTable">
                                <tr>
                                    <td><p style="<%# Eval("SlideTheamColorTwo") %>"><a href="<%# Eval("SlideID", "./maxSlide/Default.aspx?SlideID={0}") %>"  title="<%# Eval("SlideReadMe") %>"><%# Eval("SlideReadMe") %></a></p></td>
                                    <td><label style="<%# Eval("SlideTheamColorOne") %>"><a href="<%# Eval("SlideID", "./maxSlide/Default.aspx?SlideID={0}") %>">READ MORE</a></label></td>
                                </tr>
                                </table>
                            </div>
                        </div>
                    </li>
                </ItemTemplate>
            <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>

        <asp:SqlDataSource 
            ID="TOPSlideSqlDataSource"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:ZionxMaxDatabaseNet16ConnectionString %>" 
            SelectCommand="SELECT * FROM [VIEW_MAXIN_PAGE_TOP_SLIDES]">
        </asp:SqlDataSource>
    </div>
</div>

<script src="../Max_Data/Max_JavaScript/max_Slide_Script_1.js" type="text/javascript"></script>
<script src="../Max_Data/Max_JavaScript/max_Slide_Script_2.js" type="text/javascript"></script>


</div>

