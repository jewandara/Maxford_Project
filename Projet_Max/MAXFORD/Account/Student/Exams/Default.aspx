<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Student/Student.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Account.Student.Exams.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="style.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
  <div class="container">
    <div class="row">
        <asp:Panel ID="maxRegisterPanel" runat="server" >
            <ul class="maxFormSelectBox">
                <li style="display: block; padding: 15px;">
                    <div class="maxFormSelectBox-box-header">
                        <h1> Maxford Exams </h1><br />
                    </div>
                    <div class="box-content">        
                       <h6> There are not any exams. Try again later </h6><br />
                    </div>
                </li>
            </ul>
        </asp:Panel>
    </div>
  </div>
<script src="../assets/jquery/jquery.min.js"></script>
<script src="../assets/bootstrap/js/bootstrap.min.js"></script>
<script src="../assets/smooth-scroll/SmoothScroll.js"></script>
<script src="../assets/mobirise/js/script.js"></script>
</asp:Content>

