<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Account.Teacher.Email.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <div class="mbr-header mbr-header--center mbr-header--std-padding">
            <asp:Panel ID="Success" runat="server" Visible ="false">
                <h2 class="mbr-header__text" style="display:block; padding:20px; background:#a2f5cc; color:#124e27"><asp:Label ID="sentSuccess" runat="server" Text="Your message is sent to administrator successfully."></asp:Label></h2>
            </asp:Panel>
            <asp:Panel ID="Error" runat="server" Visible ="false">
                <h2 class="mbr-header__text" style="display:block; padding:20px; background:#f3c6c6; color:#f00"><asp:Label ID="sentError" runat="server" Text="Your message is not sent to administrator. Try Again"></asp:Label></h2>
            </asp:Panel>
        </div>         
        <form action="http://mobirise.com/" method="post">
                            
            <div class="form-group">
                <asp:TextBox ID="Subject" runat="server" class="form-control" BorderStyle="Solid" BorderWidth="2" BorderColor="Black"  name="name" required="Enter Your Subject" placeholder="About Subject"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="Email" runat="server" type="email" class="form-control" BorderStyle="Solid" BorderWidth="2" BorderColor="Black" name="email" required="Enter Your Email" placeholder="Teacher Email"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="ContactNumber" runat="server" class="form-control" BorderStyle="Solid" BorderWidth="2" BorderColor="Black"  name="phone" required="Enter Your Contact Number" placeholder="Teacher Contact Number"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="Message" runat="server" class="form-control" BorderStyle="Solid" BorderWidth="2" BorderColor="Black"  name="message" placeholder="Message" TextMode="MultiLine" Height="500px"></asp:TextBox>
            </div>
            <div class="mbr-buttons mbr-buttons--right">
                <asp:Button ID="ButtonSubmit" runat="server" class="mbr-buttons__btn btn btn-lg btn-danger" Text="SEND EMAIL TO ADMIN" OnClick="btn_send_Click" />
            </div>
        </form>
        <img src="underConstruction.png" />
    </div>
    <br />
    <script src="../assets/jquery/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/smooth-scroll/SmoothScroll.js"></script>
    <script src="../assets/mobirise/js/script.js"></script>
</asp:Content>