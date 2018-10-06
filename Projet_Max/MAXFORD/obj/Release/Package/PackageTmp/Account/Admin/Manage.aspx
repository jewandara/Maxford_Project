<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="MAXFORD.Account.Admin.Manage" %>


<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <br /><br /><br />
    <div class="container">
        <div class="row">
            <div>
                <div class="thumbnail">
                    <a runat="server" href="~/Account/Admin/WebPage/Default.aspx"><img alt="" src="assets/images/pages400x400-161.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>WEB PAGE</h3>
                        </div>
                        <p class="group">
                            <a runat="server" href="~/Account/Admin/WebPage/Default.aspx" class="btn btn-default">NEW SLIDES</a> 
                        </p>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a runat="server" href="~/Account/Admin/Database/Default.aspx"><img alt="" src="assets/images/database400x400-122.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>DATABASE</h3>
                        </div>
                        <p class="group">
                            <a runat="server" href="~/Account/Admin/Database/Grade/Default.aspx" class="btn btn-default">NEW TEACHER</a>
                        </p>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a runat="server" href="~/Account/Admin/Debates/Default.aspx"><img alt="" src="assets/images/debates400x400-163.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>DEBATES</h3>
                        </div>
                        <p class="group">
                            <a runat="server" href="~/Account/Admin/Debates/Default.aspx" class="btn btn-default">NEW DEBATE</a>
                        </p>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a runat="server" href="~/Account/Admin/Reports/Default.aspx"><img alt="" src="assets/images/report400x400-187.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>REPORTS</h3>
                        </div>
                        <p class="group">
                            <a runat="server" href="~/Account/Admin/Reports/Default.aspx" class="btn btn-default">REGISTRATIONS</a>
                        </p>
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


