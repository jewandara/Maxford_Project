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
		                    <li><a href="hjlhj"><img src="img/chrysanthemum.jpg" alt="Chrysanthemum" title="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chrysanthemum" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lhjlhjlhjl</li>
		                    <li><a href="hjlhj"><img src="img/desert.jpg" alt="Desert" title="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Desert" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lhjlhjlhjl</li>
		                    <li><a href="hjlhj"><img src="img/hydrangeas.jpg" alt="Hydrangeas" title="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hydrangeas"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lhjlhjlhjl</li>
		                    <li><a href="hjlhj"><img src="img/jellyfish.jpg" alt="Jellyfish" title="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jellyfish"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lhjlhjlhjl</li>
		                    <li><a href="hjlhj"><img src="img/koala.jpg" alt="Koala" title="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Koala" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lhjlhjlhjl</li>
		                    <li><a href="hjlhj"><img src="img/lighthouse.jpg" alt="Lighthouse" title="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lighthouse"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hjlhjlhjl</li>
		                    <li><a href="hjlhj"><img src="img/tulips.jpg" alt="Tulips" title="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tulips"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lhjlhjlhjl</li>
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
                        <tr>
                            <th>
                            <a href="hjlhj">Titl fd d df f fg f f jij ufg hfgh fghfghfge</a>
                            <p>gky j yj jyyj ytu jty ydtyu jy gkj ygjgk gfy jygjkhj ydtyu jy gkj ygjgk gfy jygjkhj ydtyu jy gkj ygjgk gfy jygjkhj ydtyu jy gkj ygjgk gfy jygjkhj khjy yjy</p>
                            </th>
                        </tr>
                        <tr>
                            <th>
                            <a href="hjlhj">Titl fd d df f fg f f fg h f gh fghfghfge</a>
                            <p>gky j yj jyyj ytu jty ydtyu jy gkj ygjgk gfy jygjkhj ydtyu jy gkj ygjgk gfy jygjkhj ydtyu jy gkj ygjgk gfy jygjkhj ydtyu jy gkj ygjgk gfy jygjkhj khjy yjy</p>
                            </th>
                        </tr>
                        <tr>
                            <th>
                            <a href="hjlhj">Titl fd d df f fg f f f g hf gh fghfghfge</a>
                            <p>gky j yj jyyj ytu jty ydtyu jy gkj ygjgk gfy jygjkhj ydtyu jy gkj ygjgk gfy jygjkhj ydtyu jy gkj ygjgk gfy jygjkhj ydtyu jy gkj ygjgk gfy jygjkhj khjy yjy</p>
                            </th>
                        </tr>
                        <tr>
                            <th>
                            <a href="hjlhj">Titl fd d df f fg f f fg h f gh fghfghfge</a>
                            <p>gky j yj jyyj ytu jty ydtyu jy gkj ygjgk gfy jygjkhj ydtyu jy gkj ygjgk gfy jygjkhj ydtyu jy gkj ygjgk gfy jygjkhj ydtyu jy gkj ygjgk gfy jygjkhj khjy yjy</p>
                            </th>
                        </tr>
                    </table>
                </div>
            </td>
    </tr>
</table>
</div>
</asp:Content>







<asp:Content ID="Content3" ContentPlaceHolderID="maxEventBodyContentPlaceHolder" runat="server">
<div class="max-Event-MenuNav">
<ul>
       <asp:Repeater ID="maxMenuSubRepeater" runat="server" 
            DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <li>
                    <div class="max-Event-MenuNav-li">
                        <div class="max-Event-MenuNav-img">
                            <a href="Event.aspx?MENUDATAID=<%# Eval("MENUDATAID")%>&MenuID=<%# Eval("MenuID")%>&SubMenuID=<%# Eval("SubMenuID")%>"><img src="css/eventstop.png" class="max-Event-MenuNav-link-img"/></a>
                        </div>
                        <div class="max-Event-MenuNav-text">
                                <h2><%# Eval("EventTitleMain")%></h2>
                                <a href="Event.aspx?MENUDATAID=<%# Eval("MENUDATAID")%>&MenuID=<%# Eval("MenuID")%>&SubMenuID=<%# Eval("SubMenuID")%>">
                                    <p><%# Eval("EventBodyMain")%></p>
                                </a>
                        </div>
                    </div>
                </li>
            </ItemTemplate>
        </asp:Repeater>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ZionxMaxDatabaseNet16ConnectionString %>" 
            SelectCommand="EXECUTE dbo.SP_MAX_PAGE_EVENT_CLICK_MenuSubEventData @max_AppID = 1, @max_BaseID	= 3, @max_MenuID = @MenuID, @max_SubMenuID = @SubMenuID ">

                <SelectParameters>
                    <asp:QueryStringParameter Name="MenuID" QueryStringField="MenuID" Type="Int32" />
                    <asp:QueryStringParameter Name="SubMenuID" QueryStringField="SubMenuID" Type="Int32" />
                </SelectParameters>
        </asp:SqlDataSource>
<li>
        <div class="max-Event-MenuNav-li">
            <div class="max-Event-MenuNav-img">
                <a href="fdfg"><img src="css/eventstop.png" class="max-Event-MenuNav-link-img"/></a>
            </div>
            <div class="max-Event-MenuNav-text">
                    dsafuhgsad fsduf sduifgy dsugyd fgdufyiygfigy igyi fifg yyyyyyyyyyy yyyyyyy yyyyyyyyyyy yyyyyyyyyyyyiguig odfug dfuighd foigfd<br />
                    sdfsduifyg dsaiufyduyfoudyfgoasduyfg]]
                    <br /> oashgigfyuigyuifyggggggggggggg
                dfgdfgsdfgdsf fbhiasdf dsiufhsdaufa9sudbfsad9uf sdayuf9asduf
                        gggggggggg ggggggggduf asduii ofg usadigfy    sdfsduifyg dsaiufyduyfoudyfgoasduyfg]]
                    <br /> oashgigfyuigyuifyggggggggggggg
                dfgdfgsdfgdsf fbhiasdf dsiufhsdaufa9sudbfsad9uf sdayuf9asduf
                        gggggggggg ggggggggduf asduii ofg usadigfy    sdfsduifyg dsaiufyduyfoudyfgoasduyfg]]
                    <br /> oashgigfyuigyuifyggggggggggggg
                dfgdfgsdfgdsf fbhiasdf dsiufhsdaufa9sudbfsad9uf sdayuf9asduf
                        gggggggggg ggggggggduf asduii ofg usadigfy    <br /> oashgigfyuigyuifyggggggggggggg
                dfgdfgsdfgdsf fbhiasdf dsiufhsdaufa9sudbfsad9uf sdayuf9asduf
                        gggggggggg ggggggggduf asduii ofg usadigfy    sdfsduifyg dsaiufyduyfoudyfgoasduyfg]]
                    <br /> oashgigfyuigyuifyggggggggggggg
                dfgdfgsdfgdsf fbhiasdf dsiufhsdaufa9sudbfsad9uf sdayuf9asduf
                        gggggggggg ggggggggduf asduii ofg usadigfy    sdfsduifyg dsaiufyduyfoudyfgoasduyfg]]
                    <br /> oashgigfyuigyuifyggggggggggggg
                dfgdfgsdfgdsf fbhiasdf dsiufhsdaufa9sudbfsad9uf sdayuf9asduf
                        gggggggggg ggggggggduf asduii ofg usadigfy
            </div>
        </div>
</li>
<li>
        <div class="max-Event-MenuNav-li">
            <div class="max-Event-MenuNav-img">
                <a href="fdfg"><img src="css/eventstop.png" class="max-Event-MenuNav-link-img"/></a>
            </div>
            <div class="max-Event-MenuNav-text">
                    dsafuhgsad fsduf sduifgy dsugyd fgdufyiygfigy igyi fifg yyyyyyyyyyy yyyyyyy yyyyyyyyyyy yyyyyyyyyyyyiguig odfug dfuighd foigfd<br />
                    sdfsduifyg dsaiufyduyfoudyfgoasduyfg]]
                    <br /> oashgigfyuigyuifyggggggggggggg
                dfgdfgsdfgdsf fbhiasdf dsiufhsdaufa9sudbfsad9uf sdayuf9asduf
                        gggggggggg ggggggggduf asduii ofg usadigfy    sdfsduifyg dsaiufyduyfoudyfgoasduyfg]]
                    <br /> oashgigfyuigyuifyggggggggggggg
                dfgdfgsdfgdsf fbhiasdf dsiufhsdaufa9sudbfsad9uf sdayuf9asduf
                        gggggggggg ggggggggduf asduii ofg usadigfy    sdfsduifyg dsaiufyduyfoudyfgoasduyfg]]
                    <br /> oashgigfyuigyuifyggggggggggggg
                dfgdfgsdfgdsf fbhiasdf dsiufhsdaufa9sudbfsad9uf sdayuf9asduf
                        gggggggggg ggggggggduf asduii ofg usadigfy    <br /> oashgigfyuigyuifyggggggggggggg
                dfgdfgsdfgdsf fbhiasdf dsiufhsdaufa9sudbfsad9uf sdayuf9asduf
                        gggggggggg ggggggggduf asduii ofg usadigfy    sdfsduifyg dsaiufyduyfoudyfgoasduyfg]]
                    <br /> oashgigfyuigyuifyggggggggggggg
                dfgdfgsdfgdsf fbhiasdf dsiufhsdaufa9sudbfsad9uf sdayuf9asduf
                        gggggggggg ggggggggduf asduii ofg usadigfy    sdfsduifyg dsaiufyduyfoudyfgoasduyfg]]
                    <br /> oashgigfyuigyuifyggggggggggggg
                dfgdfgsdfgdsf fbhiasdf dsiufhsdaufa9sudbfsad9uf sdayuf9asduf
                        gggggggggg ggggggggduf asduii ofg usadigfy
            </div>
        </div>
</li>
</ul>
</div>

</asp:Content>
