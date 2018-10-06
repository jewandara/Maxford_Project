<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Student/Student.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Account.Student.Articals.Default" %>

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
                        <h1> Articals </h1><br />
                    </div>
                    <div class="box-content">        
                        <br />
                        <asp:Panel ID="maxPanel" CssClass="maxPanel" runat="server">
                            <div class="maxFormSelectBox-box-header">
                                <h2> Maxford Student Request Classes </h2><br />
                            </div>
                            <asp:GridView 
                                ID="GridView1" 
                                runat="server" 
                                AllowPaging="True" 
                                AllowSorting="True" 
                                AutoGenerateColumns="False" 
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
                                OnPageIndexChanging="GridView1_PageIndexChanging"
                                OnSorting="GridView1_Sorting"
                                OnRowEditing="GridView1_RowEditing"
                                OnRowDeleting="AccessDataSource1_Deleting"
                                DataKeyNames="ArticleID"
                                >
                                <Columns>
                                    	                                
                                    <asp:ImageField HeaderText="Preview" DataImageUrlField="ArticleImageThumbnail" DataImageUrlFormatString="~/Store/Article/thumbnail/{0}" DataAlternateTextField="ArticleID" DataAlternateTextFormatString="Record #{0}" ControlStyle-Width="40px">
	                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="50px" />
	                                </asp:ImageField>
	                                <asp:BoundField HeaderText="Article ID" DataField="ArticleID" ReadOnly="True" SortExpression="ArticleID" Visible="false" >
		                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
	                                </asp:BoundField>

	                                <asp:BoundField HeaderText="Article Name" DataField="ArticleName" SortExpression="ArticleName" ReadOnly="True" >
		                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
	                                </asp:BoundField>
    	            
	                                <asp:BoundField HeaderText="Type" DataField="ArticleType" SortExpression="ArticleType" ReadOnly="True" >
		                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="250px" />
	                                </asp:BoundField>


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
                        </asp:Panel>
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
