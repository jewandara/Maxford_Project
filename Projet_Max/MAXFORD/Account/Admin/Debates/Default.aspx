<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Account.Admin.Debates.Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <br /><br /><br />
    <div class="container">
        <div class="row">
            <div>
                <div class="thumbnail">
                    <a id="A1" runat="server" href="~/Account/Admin/Database/Teacher/Default.aspx"><img alt="" src="img/debateName.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>DEBATES</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A5" runat="server" href="~/Account/Admin/Database/Subject/Default.aspx"><img alt="" src="img/members.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>TEAMS</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A10" runat="server" href="~/Account/Admin/Database/Grade/Default.aspx"><img alt="" src="img/other.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>EVENTS</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A13" runat="server" href="~/Account/Admin/Database/Hall/Default.aspx"><img alt="" src="img/debateTopics.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>COMMENTS</h3>
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


