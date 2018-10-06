<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Account.Admin.Database.Default" %>



<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <br /><br /><br />
    <div class="container">
        <div class="row">
            <div>
                <div class="thumbnail">
                    <a id="A1" runat="server" href="~/Account/Admin/Database/Teacher/Default.aspx"><img alt="" src="img/Teacher.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>TEACHERS</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A5" runat="server" href="~/Account/Admin/Database/Subject/Default.aspx"><img alt="" src="img/Subjects.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>SUBJECTS</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A10" runat="server" href="~/Account/Admin/Database/Grade/Default.aspx"><img alt="" src="img/Grade.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>GRADE</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="thumbnail">
                    <a id="A13" runat="server" href="~/Account/Admin/Database/Hall/Default.aspx"><img alt="" src="img/Hall.png"/></a>
                    <div class="caption">
                        <div>
                            <h3>HALLS</h3>
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


