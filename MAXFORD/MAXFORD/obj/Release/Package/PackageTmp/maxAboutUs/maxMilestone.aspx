﻿<%@ Page Title="Our Milestone View" Language="C#" MasterPageFile="~/maxAboutUs/AboutUs.Master" AutoEventWireup="true" CodeBehind="maxMilestone.aspx.cs" Inherits="MAXFORD.maxAboutUs.maxMilestone" %>

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
    
    <img src="images/milstone1.png"  width="740px" height="100px"/>
        <br />
  
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSourceMaxPageAboutUsDefault2">
        <ItemTemplate>
            <asp:Label ID="MPageBodyLabe3" runat="server" Text='<%# Bind("MPageBody") %>' CssClass="MaxTextPading"/>
        </ItemTemplate>

    </asp:Repeater>
           
    <asp:SqlDataSource ID="SqlDataSourceMaxPageAboutUsDefault2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [viewMaxPAGE]"></asp:SqlDataSource>

</asp:Content>
