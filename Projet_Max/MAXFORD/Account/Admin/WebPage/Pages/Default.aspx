<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Account.Admin.WebPage.Pages.Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container" style="margin-top:-25px;">
        <div class="max_middle_nav_bar">   
            <ul>     
                <li><a id="A1" runat="server" href="~/Account/Admin/Manage.aspx" >HOME </a></li> >    
                <li><a id="A2" runat="server" href="~/Account/Admin/Database/Default.aspx" >CLASS </a></li> >   
                <li><a id="A3" runat="server" href="~/Account/Admin/Database/Hall/Default.aspx" >VIEW </a></li>   
            </ul>
        </div>

        <div class="pageContainer">
            <style type="text/css">
                .gridview th { font-size: large;font-weight: bold;color: Navy;border: 1px solid black;padding: 8px;}                
                .gridview th a{ text-decoration:none; }
                .gridview th a:hover{ color:#39423b; }
                .gridview td { padding: 8px; border: 1px solid black;}
                .gridview tr td a { text-decoration:none; display:block; padding:7px; background:#099999; }
                .gridview tr td a:hover {background:#175858; color:#fff }              
                input[value='EDIT'] {background:#099999;color:#061a1a;border:none; padding:5px;padding-left:25px;padding-right:25px;}
                input[value='EDIT']:hover {background:#082121;color:#b3dede;}
                input[type='submit'] {background:#0f687c;color:#fff;border:none; font-size:18px; font-weight:bold; padding:15px;padding-left:25px;padding-right:25px; margin-top:20px;}
                input[type='submit']:hover {background:#143a57;color:#fff;}
                input[id='Body_btnAddNewTwo']{float:right;}
            </style>
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
                DataKeyNames="MainID"
                >
                <Columns>
	                <asp:BoundField HeaderText="Page ID" DataField="MainID" ReadOnly="True" SortExpression="MainID" Visible="false" >
		                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
	                </asp:BoundField>

	                <asp:BoundField HeaderText="Page Name" DataField="PageMainName" SortExpression="PageMainName" ReadOnly="True" >
		                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" />
	                </asp:BoundField>
    	            
	                <asp:BoundField HeaderText="Page Header" DataField="PageMainTitle" SortExpression="PageMainTitle" ReadOnly="True" >
		                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="250px" />
	                </asp:BoundField>

	                <asp:BoundField HeaderText="Page Link" DataField="PageMainTitleLink" SortExpression="PageMainTitleLink" ReadOnly="True" >
		                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
	                </asp:BoundField>

	                <asp:CommandField ShowCancelButton="False" ShowEditButton="True" ButtonType="Button" EditText="EDIT" >
		                <ItemStyle Width="110px" HorizontalAlign="Left" VerticalAlign="Middle" />
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
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            SelectCommand="SELECT * FROM dbo.PageMain WHERE PageDataCatogory = 'SUB_PAGE'" >
        </asp:SqlDataSource>

    </div>

<script src="../../assets/jquery/jquery.min.js"></script>
<script src="../../assets/bootstrap/js/bootstrap.min.js"></script>
<script src="../../assets/smooth-scroll/SmoothScroll.js"></script>
<script src="../../assets/mobirise/js/script.js"></script>
</asp:Content>


