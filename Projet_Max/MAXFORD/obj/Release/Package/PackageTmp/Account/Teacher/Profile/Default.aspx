<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Account.Teacher.Profile.Default" %>

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
                    <a id="A1" runat="server" href="~/Account/Teacher/Profile/Image.aspx"><img alt="" src="img/Photo.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>IMAGE</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A5" runat="server" href="~/Account/Teacher/Profile/Details.aspx"><img alt="" src="img/Details.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>DETAILS</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A10" runat="server" href="~/Account/Teacher/Profile/Contacts.aspx"><img alt="" src="img/Contact.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>CONTACTS</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A13" runat="server" href="~/Account/Teacher/Profile/Location.aspx"><img alt="" src="img/Location.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>Location</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div>
                <div class="thumbnail">
                    <a id="A18" runat="server" href="~/Account/Teacher/Profile/Links.aspx"><img alt="" src="img/Links.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>SOCIAL LINKS</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A22" runat="server" href="~/Account/Teacher/Profile/Certificates.aspx"><img alt="" src="img/Sertifi.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>CERTIFICATES</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A27" runat="server" href="~/Account/Teacher/Profile/Privacy.aspx"><img alt="" src="img/Privacy.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>PRIVACY</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A30" runat="server" href="~/Account/Teacher/Profile/Password.aspx"><img alt="" src="img/PassWord.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>PASSWORD</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../assets/jquery/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/smooth-scroll/SmoothScroll.js"></script>
    <script src="../assets/mobirise/js/script.js"></script>
</asp:Content>


