<%@ Page Title="Maxford Higher Educational Institute" Language="C#" MasterPageFile="~/maxSite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Default" %>
<%@ Register Src="~/Max_Modules/maxPageEvents.ascx" TagPrefix="maxP" TagName="maxPageEvent"%>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Max_Data/Max_CSS/style-Middle-Events.css" rel="stylesheet" type="text/css" />
</asp:Content>





<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">

    <!-- MAIN PAGE BODY -->
    <div class="max_main_event">
        <table>
                <maxP:maxPageEvent runat="server" id="maxPageOne"></maxP:maxPageEvent>
        </table>
    </div>

</asp:Content>


