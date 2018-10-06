<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Account.Admin.WebPage.Main.Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container" style="margin-top:-25px;">
        <div class="thumbnail">
            <p class="group">
                <a id="A1" runat="server" href="~/Account/Admin/WebPage/Main/Slide.aspx" class="btn btn-default" style="width:200px; background:#000; border-color:#000; color:#fff;">SLIDES</a>
                <a id="A2" runat="server" href="~/Account/Admin/WebPage/Main/Event.aspx" class="btn btn-default" style="width:200px;">EVENTS</a>
                <a id="A3" runat="server" href="~/Account/Admin/WebPage/Main/Header.aspx" class="btn btn-default" style="width:200px;">HEADER</a>
                <a id="A4" runat="server" href="~/Account/Admin/WebPage/Main/Footer.aspx" class="btn btn-default" style="width:200px;">FOOTER</a>
            </p>
        </div>
        <hr style="height:3px; background:#000; margin-top:-18px;"/>

        <div class="pageContainer">
            <style type="text/css">
                .gridview th { font-size: large;font-weight: bold;color: Navy;border: 1px solid black;padding: 8px;}                
                .gridview th a{ text-decoration:none; }
                .gridview th a:hover{ color:#39423b }
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
	                <asp:BoundField HeaderText="Slide ID" DataField="MainID" ReadOnly="True" SortExpression="MainID" Visible="false" >
		                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
	                </asp:BoundField>

	                <asp:BoundField HeaderText="Slide Name" DataField="PageMainName" SortExpression="PageMainName" ReadOnly="True" >
		                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="220px" />
	                </asp:BoundField>
    	            
	                <asp:BoundField HeaderText="Slide Header" DataField="PageMainTitle" SortExpression="PageMainTitle" ReadOnly="True" >
		                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
	                </asp:BoundField>
    	            
	                <asp:ImageField HeaderText="Preview" DataImageUrlField="PageMainImageThumbnail" DataImageUrlFormatString="~/Store/Slide/thumbnail/{0}"
	                    DataAlternateTextField="MainID" DataAlternateTextFormatString="Record #{0}" ControlStyle-Width="50px">
	                    <ItemStyle Width="50px" HorizontalAlign="Left" VerticalAlign="Middle" />
	                </asp:ImageField>
    	            
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
            SelectCommand="SELECT * FROM dbo.PageMain WHERE PageDataCatogory = 'MAIN_TOP_SLIDE'" >
        </asp:SqlDataSource>

    </div>

<script src="../../assets/jquery/jquery.min.js"></script>
<script src="../../assets/bootstrap/js/bootstrap.min.js"></script>
<script src="../../assets/smooth-scroll/SmoothScroll.js"></script>
<script src="../../assets/mobirise/js/script.js"></script>
</asp:Content>


