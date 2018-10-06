﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Account.Teacher.Page.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <style type="text/css">
        .thumbnail a img:hover {
            border:10px solid #099999;
            opacity: 0.7;
            -webkit-transition-duration: 400ms;
            -webkit-transition-property: width, background;
            -webkit-transition-timing-function: ease;
            -moz-transition-duration: 400ms;
            -moz-transition-property: width, background;
            -moz-transition-timing-function: ease;
            -o-transition-duration: 400ms;
            -o-transition-property: width, background;
            -o-transition-timing-function: ease;
        }
    </style>
    <div class="container">
        <br /><br /><br />
        <div class="row">
            <div>
                <div class="thumbnail">
                    <a id="A1" runat="server" href="~/Account/Teacher/Class/Classes.aspx"><img alt="" src="img/main.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>MAIN PAGE</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A5" runat="server" href="~/Account/Teacher/Profile/Classes.aspx"><img alt="" src="img/sub.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>SUB PAGES</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A10" runat="server" href="~/Account/Teacher/Profile/Subjects.aspx"><img alt="" src="img/addver.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>BANNERS</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A13" runat="server" href="~/Account/Teacher/Profile/Hall.aspx"><img alt="" src="img/result.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>PROGRESS</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
    </div>
    <script src="../assets/jquery/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/smooth-scroll/SmoothScroll.js"></script>
    <script src="../assets/mobirise/js/script.js"></script>
</asp:Content>


