<%@ Page Title="Maxford Location View" Language="C#" MasterPageFile="~/maxAboutUs/AboutUs.Master" AutoEventWireup="true" CodeBehind="maxLocation.aspx.cs" Inherits="MAXFORD.maxAboutUs.maxLocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTopGreen" runat="server">

    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSourceMaxPageAboutUsDefault1">
        <ItemTemplate>
            <h1><asp:Label ID="MPageBodyLabel" runat="server" Text='<%# Bind("MPageTitleHead") %>' CssClass="MaxTextPading"/></h1>
                <br />
            <p><asp:Label ID="MPageBodyLabel2" runat="server" Text='<%# Bind("MPageTitle") %>' CssClass="MaxTextPading"/></p>
        </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSourceMaxPageAboutUsDefault1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [viewMaxPAGE]"></asp:SqlDataSource>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderRightSideBodyDiscription" runat="server">
    <img src="images/locations2.png" width="740px"/>
    <br />
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
        <div style="overflow:hidden;height:520px;width:740px;">
        <div id="gmap_canvas" style="height:520px;width:740px;">
        </div>
        <style>#gmap_canvas img{max-width:none!important;background:none!important}</style>
        </div>
        <script type="text/javascript">    function init_map() { var myOptions = { zoom: 16, center: new google.maps.LatLng(7.068014551049828, 79.95905890307154), mapTypeId: google.maps.MapTypeId.ROADMAP }; map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions); marker = new google.maps.Marker({ map: map, position: new google.maps.LatLng(7.068014551049828, 79.95905890307154) }); infowindow = new google.maps.InfoWindow({ content: "<img src='images/googleLogo.png' width='200px'/><br/><b>207 / E, Galahitiyawa East, Ganemulla,</b><br/> Sri Lanla" }); google.maps.event.addListener(marker, "click", function () { infowindow.open(map, marker); }); infowindow.open(map, marker); } google.maps.event.addDomListener(window, 'load', init_map);</script>


    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSourceMaxPageAboutUsDefault2">
        <ItemTemplate>
            <asp:Label ID="MPageBodyLabe3" runat="server" Text='<%# Bind("MPageBody") %>' CssClass="MaxTextPading"/>
        </ItemTemplate>

    </asp:Repeater>
           
    <asp:SqlDataSource ID="SqlDataSourceMaxPageAboutUsDefault2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [viewMaxPAGE]"></asp:SqlDataSource>

</asp:Content>
