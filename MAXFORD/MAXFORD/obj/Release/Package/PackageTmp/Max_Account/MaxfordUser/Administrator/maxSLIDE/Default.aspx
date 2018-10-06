<%@ Page Title="" Language="C#" MasterPageFile="~/Max_Account/MaxfordUser/User.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Max_Account.MaxfordUser.Administrator.maxSlide.Default" %>
<%@ Register Src="~/Max_Account/MaxfordUser/Administrator/maxSLIDE/TopBar.ascx" TagPrefix="maxTOP" TagName="maxMenuFunction"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBodyHead" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHoldermaxTopMenuBar" runat="server">
    <maxTOP:maxMenuFunction runat="server" id="MaxUserFunction"></maxTOP:maxMenuFunction>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
</asp:Content>
