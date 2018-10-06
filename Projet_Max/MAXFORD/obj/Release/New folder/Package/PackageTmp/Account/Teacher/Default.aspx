<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Account.Teacher.Default" %>

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
        <div class="row">
            <div>
                <div class="thumbnail">
                    <a id="A1" runat="server" href="~/Account/Teacher/Page/Default.aspx"><img alt="" src="assets/images/Mypage.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>MY PAGE</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A5" runat="server" href="~/Account/Teacher/Profile/Default.aspx"><img alt="" src="assets/images/Profile.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>PROFILE</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A10" runat="server" href="~/Account/Teacher/Class/Default.aspx"><img alt="" src="assets/images/Class.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>CLASSES</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A13" runat="server" href="~/Account/Teacher/Student/Default.aspx"><img alt="" src="assets/images/Students.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>STUDENTS</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div>
                <div class="thumbnail">
                    <a id="A18" runat="server" href="~/Account/Teacher/Download/Default.aspx"><img alt="" src="assets/images/Downloads.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>DOWNLOADS</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A22" runat="server" href="~/Account/Teacher/Event/Default.aspx"><img alt="" src="assets/images/Events.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>EVENTS</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A27" runat="server" href="~/Account/Teacher/News/Default.aspx"><img alt="" src="assets/images/News.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>NEWS</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A30" runat="server" href="~/Account/Teacher/Email/Default.aspx"><img alt="" src="assets/images/Email.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>EMAIL</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/jquery/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/smooth-scroll/SmoothScroll.js"></script>
    <script src="assets/mobirise/js/script.js"></script>
</asp:Content>

