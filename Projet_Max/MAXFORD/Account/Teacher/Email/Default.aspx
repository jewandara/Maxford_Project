<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Account.Teacher.Email.Default" %>

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
                    <a id="A3" runat="server"></a>
                    <div class="caption">
                        <div>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A1" runat="server" href="http://mail.maxford.lk/Login.aspx" target="_blank"><img alt="" src="images/PCEmail.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>LOGIN FROM DESKTOP</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A5" runat="server" href="http://mail.maxford.lk/Mobile/Login.aspx" target="_blank"><img alt="" src="images/PHONEEmail.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>LOGIN FROM MOBILE</h3>
                        </div>
                    </div>
                </div>
            </div>
                        
            <div>
                <div class="thumbnail">
                    <a id="A2" runat="server"></a>
                    <div class="caption">
                        <div>
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

