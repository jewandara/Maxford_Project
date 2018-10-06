<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Account.Admin.Database.Teacher.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .gridview th { font-size: large;font-weight: bold;color: Navy;border: 1px solid black;padding: 8px;}                
        .gridview th a{ text-decoration:none; }
        .gridview th a:hover{ color:#39423b }
        .gridview td { padding: 8px; border: 1px solid black;}
        .gridview tr td a { text-decoration:none; display:block; padding:7px; background:#099999; }
        .gridview tr td a:hover {background:#175858; color:#fff }
    </style>
    <script src="NewFolder1/scripts/jquery-1.4.3.min.js" type="text/javascript"></script>
    <style type="text/css">
        .web_dialog_overlay
        {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            height: 100%;
            width: 100%;
            margin: 0;
            padding: 0;
            background: #000000;
            opacity: .15;
            filter: alpha(opacity=15);
            -moz-opacity: .15;
            z-index: 101;
            display: none;
        }
        .web_dialog
        {
            display: none;
            position: fixed;
            width: 380px;
            height: 200px;
            top: 50%;
            left: 50%;
            margin-left: -190px;
            margin-top: -100px;
            background-color: #ffffff;
            border: 2px solid #336699;
            padding: 0px;
            z-index: 102;
            font-family: Verdana;
            font-size: 10pt;
        }
        .web_dialog_title
        {
            border-bottom: solid 2px #336699;
            background-color: #336699;
            padding: 4px;
            color: White;
            font-weight:bold;
        }
        .web_dialog_title a
        {
            color: White;
            text-decoration: none;
        }
        .align_right
        {
            text-align: right;
        }
    </style>
        <script type="text/javascript">

            $(document).ready(function () {
                $("#btnShowSimple").click(function (e) {
                    ShowDialog(false);
                    e.preventDefault();
                });

                $("#btnShowModal").click(function (e) {
                    ShowDialog(true);
                    e.preventDefault();
                });

                $("#btnClose").click(function (e) {
                    HideDialog();
                    e.preventDefault();
                });

                $("#btnSubmit").click(function (e) {
                    var brand = $("#brands input:radio:checked").val();
                    $("#output").html("<b>Your favorite mobile brand: </b>" + brand);
                    HideDialog();
                    e.preventDefault();
                });
            });

            function ShowDialog(modal) {
                $("#overlay").show();
                $("#dialog").fadeIn(300);

                if (modal) {
                    $("#overlay").unbind("click");
                }
                else {
                    $("#overlay").click(function (e) {
                        HideDialog();
                    });
                }
            }

            function HideDialog() {
                $("#overlay").hide();
                $("#dialog").fadeOut(300);
            }

    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <div class="pageContainer">
            <div style="border:solid 2px #099999; padding:15px;">
                <div class="max_middle_nav_bar">
                    <ul>
                        <li><a id="A1" runat="server" href="~/Account/Admin/Manage.aspx" > HOME </a></li> >
                        <li><a id="A2" runat="server" href="~/Account/Admin/Database/Default.aspx" > DATABASE </a></li> >
                        <li><a id="A3" runat="server" href="~/Account/Admin/Database/Teacher/Default.aspx" > VIEW </a></li>
                    </ul>
                </div>
                <asp:GridView 
                    ID="GridView1" 
                    runat="server" 
                    AllowPaging="True" 
                    AllowSorting="True" 
                    AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" 
                    EmptyDataText="No record found." 
                    CssClass="gridview" 
                    BackColor="White" 
                    BorderColor="#DEDFDE" 
                    BorderStyle="None" 
                    BorderWidth="1px" 
                    CellPadding="4" 
                    ForeColor="Black" 
                    GridLines="Vertical" 
                    Width="100%"
                    OnRowEditing="GridView1_RowEditing" 
                    OnRowDeleting="GridView1_RowDeleting"
                    DataKeyNames="UserID"
                    >
                    <Columns>
	                    <asp:BoundField HeaderText="Teacher ID" DataField="UserID" ReadOnly="True" SortExpression="UserID" Visible="false">
		                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
	                    </asp:BoundField>

	                    <asp:BoundField HeaderText="Login Name" DataField="UserName" SortExpression="UserName" ReadOnly="True" >
		                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="220px" />
	                    </asp:BoundField>
    	            
	                    <asp:BoundField HeaderText="Teacher Name" DataField="maxTeacherName" SortExpression="maxTeacherName" ReadOnly="True" >
		                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
	                    </asp:BoundField>

	                    <asp:BoundField HeaderText="Contact" DataField="ContactNo" SortExpression="ContactNo" ReadOnly="True" >
		                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="150px "/>
	                    </asp:BoundField>

                        <asp:TemplateField HeaderText="View" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="70px">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="35px" ImageUrl='<%# string.Format("~/Store/Teacher/{0}/thumbnail/{1}", HttpUtility.UrlEncode(Eval("UserName").ToString()), HttpUtility.UrlEncode(Eval("UserImageThumbnail").ToString()) )%>' />
                            </ItemTemplate>
                        </asp:TemplateField>

	                    <asp:CommandField ShowCancelButton="False" ShowDeleteButton="True"  ShowEditButton="True" ButtonType="Button" EditText="EDIT" DeleteText="DELETE">
		                    <ItemStyle Width="150px" HorizontalAlign="Left" VerticalAlign="Middle" />
	                    </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#7fc1a3" />
                    <HeaderStyle BackColor="#808080" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#7fc1a3" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#b1efd3" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#b1efd3" />
                    <SortedAscendingHeaderStyle BackColor="#6B696B" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <br />
                <asp:Button runat="server" ID="btnAddNew" Text="Add new record" CausesValidation="false" OnClick="btnAddNew_Click" Height="40px" Width="150px"/>
            </div>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            SelectCommand="SELECT * FROM _vw_maxford_UsersData" >
        </asp:SqlDataSource>
    </div>



<script src="../../assets/jquery/jquery.min.js"></script>
<script src="../../assets/bootstrap/js/bootstrap.min.js"></script>
<script src="../../assets/smooth-scroll/SmoothScroll.js"></script>
<script src="../../assets/mobirise/js/script.js"></script>
</asp:Content>
