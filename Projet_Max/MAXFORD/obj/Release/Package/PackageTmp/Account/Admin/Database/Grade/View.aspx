<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="MAXFORD.Account.Admin.Database.Grade.View" %>


<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <div class="row">                       
            <span class="sticky">
                <div class="max_middle_nav_bar">
                    <ul>
                        <li><a id="A1" runat="server" href="~/Account/Admin/Manage.aspx" >HOME </a></li> >
                        <li><a id="A2" runat="server" href="~/Account/Admin/Database/Default.aspx" >CLASS </a></li> >
                        <li><a id="A3" runat="server" href="~/Account/Admin/Database/Grade/Default.aspx" >VIEW </a></li>
                    </ul>
                </div>
            </span>
        </div>

        <div class="pageContainer">
            <div style="border:solid 2px #099999; padding:15px;">
                <style type="text/css">
                    .gridview th { font-size: large;font-weight: bold;color: Navy;border: 1px solid black;padding: 8px;}                
                    .gridview th a{ text-decoration:none; }
                    .gridview th a:hover{ color:#39423b }
                    .gridview td { padding: 8px; border: 1px solid black;}
                    .gridview tr td a { text-decoration:none; display:block; padding:7px; background:#099999; }
                    .gridview tr td a:hover {background:#175858; color:#fff }
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
                    DataKeyNames="GradeId"
                    >
                    <Columns>
	                    <asp:BoundField HeaderText="Grade ID" DataField="GradeId" ReadOnly="True" SortExpression="GradeId" >
		                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
	                    </asp:BoundField>

	                    <asp:BoundField HeaderText="Grade Name" DataField="GradeName" SortExpression="GradeName" ReadOnly="True" >
		                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="220px" />
	                    </asp:BoundField>
    	            
	                    <asp:BoundField HeaderText="Grade Title" DataField="GradeTitle" SortExpression="GradeTitle" ReadOnly="True" >
		                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
	                    </asp:BoundField>
    	            	                    
                        <asp:ImageField HeaderText="Preview" DataImageUrlField="GradeImageThumbnail" DataImageUrlFormatString="~/Store/Grade/thumbnail/{0}"
	                        DataAlternateTextField="GradeID" DataAlternateTextFormatString="Record #{0}">
	                        <ItemStyle Width="50px" HorizontalAlign="Left" VerticalAlign="Middle" />
	                    </asp:ImageField>
    	            
	                    <asp:CommandField ShowCancelButton="False" runat="server" ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" DeleteImageUrl="~/Account/Admin/assets/css/Close.png" EditImageUrl="~/Account/Admin/assets/css/Close.png" EditText="EDIT" DeleteText="DELETE">
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
                <asp:Button runat="server" ID="btnAddNew" Text="Add new record" CausesValidation="false" OnClick="btnAddNew_Click" />
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            SelectCommand="SELECT * FROM dbo.ClassGrade"
            DeleteCommand="DELETE FROM dbo.ClassGrade WHERE GradeId = @GradeId" 
            OnDeleting="AccessDataSource1_Deleting" >
            <DeleteParameters>
	            <asp:ControlParameter ControlID="GridView1" Name="GradeId" PropertyName="SelectedValue" Type="Int32" />
            </DeleteParameters>
        </asp:SqlDataSource>


    </div>
</asp:Content>
