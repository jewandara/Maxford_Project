<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Account.Master" AutoEventWireup="true" CodeBehind="AdminRedirect.aspx.cs" Inherits="MAXFORD.Account.AdminRedirect" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">

        
        			        
        <h2> Welcome Administrator</h2>

        <div class="mbr-header mbr-header--center mbr-header--std-padding">
            <asp:Panel ID="Success" runat="server">
                <h2 class="mbr-header__text" style="display:block; padding:20px; background:#a2f5cc; color:#124e27">
                    <asp:Button ID="Button2" runat="server" class="mbr-buttons__btn btn btn-lg btn-danger" Text="LOGIN AS ADMINISTRATOR" OnClick="Admin_Click" Width="600px" />

                </h2>
            </asp:Panel>

            <br /><br /><br />
            <asp:Panel ID="Panel1" runat="server">
                <h2 class="mbr-header__text" style="display:block; padding:20px; background:#a2f5cc; color:#124e27"> 
                    <asp:Button ID="Button3" runat="server" class="mbr-buttons__btn btn btn-lg btn-danger" Text="LOGIN AS TEACHER" OnClick="Teach_Click" Width="600px" />
                </h2>
            </asp:Panel>
        </div>
        			        

    </div>
    <br />
    <script src="../assets/jquery/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/smooth-scroll/SmoothScroll.js"></script>
    <script src="../assets/mobirise/js/script.js"></script>
</asp:Content>
