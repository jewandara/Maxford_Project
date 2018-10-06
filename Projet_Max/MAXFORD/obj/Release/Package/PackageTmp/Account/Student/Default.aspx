<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Student/Student.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Account.Student.Default" %>

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
                    <a id="A1" runat="server" href="~/Account/Teacher/Page/Default.aspx"><img alt="" src="assets/images/Profile.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>MY PROFILE</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A5" runat="server" href="~/Account/Teacher/Profile/Default.aspx"><img alt="" src="assets/images/Class.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>MY CLASSES</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A10" runat="server" href="~/Account/Teacher/Class/Default.aspx"><img alt="" src="assets/images/TimeTable.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>TIME TABLE</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A13" runat="server" href="~/Account/Teacher/Student/Default.aspx"><img alt="" src="assets/images/Exams.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>MAXFORD EXAMS</h3>
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

