﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Account.Admin.Debates.Debate.Default" %>


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
                .gridview th a:hover{ color:#39423b }
                .gridview td { padding: 8px; border: 1px solid black;}
                .gridview tr td a { text-decoration:none; display:block; padding:7px; background:#099999; }
                .gridview tr td a:hover {background:#175858; color:#fff }
                input[value='DELETE DEBATE'] {background:#f2431c; color:#210b0b;border:none; padding:5px;padding-left:15px;padding-right:15px;}
                input[value='DELETE DEBATE']:hover {background:#370a0a;color:#fac4c4;}                  
                input[value='EDIT DEBATE'] {background:#099999;color:#061a1a;border:none; padding:5px;padding-left:15px;padding-right:15px;}
                input[value='EDIT DEBATE']:hover {background:#082121;color:#b3dede;}
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
                    DataKeyNames="DebateID"
                    >
                    <Columns>
	                    <asp:BoundField HeaderText="Debate ID" DataField="DebateID" ReadOnly="True" SortExpression="DebateID" >
		                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
	                    </asp:BoundField>

	                    <asp:BoundField HeaderText="Debate Date" DataField="DDDD" SortExpression="DDDD" ReadOnly="True" >
		                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="250px" />
	                    </asp:BoundField>
    	            
	                    <asp:BoundField HeaderText="Debate Topic" DataField="DebateTopic" SortExpression="DebateTopic" ReadOnly="True" >
		                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
	                    </asp:BoundField>

	                    <asp:ImageField HeaderText="Preview" DataImageUrlField="DebateImageThumbnail" DataImageUrlFormatString="~/Store/Debates/thumbnail/{0}" DataAlternateTextField="DebateID" DataAlternateTextFormatString="Record #{0}">
	                        <ItemStyle Width="50px" HorizontalAlign="Left" VerticalAlign="Middle" />
	                    </asp:ImageField>


	                    <asp:CommandField ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" EditText="EDIT DEBATE" DeleteText="DELETE DEBATE">
		                    <ItemStyle Width="270px" HorizontalAlign="Left" VerticalAlign="Middle" />
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
                <asp:Button runat="server" ID="btnAddNew" Text="ADD NEW DEBATE" CausesValidation="false" OnClick="btnAddNew_Click" />
                <asp:Button runat="server" ID="btnAddNewTwo" Text="ADD NEW DEBATE" CausesValidation="false" OnClick="btnAddNew_Click" CssClass="RightButton"/>
            </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            SelectCommand="SELECT *,CONVERT(VARCHAR,DATEPART(yy, DebateDate)) + ', ' + CONVERT(VARCHAR,DATENAME(month, DebateDate)) + ', ' + CONVERT(VARCHAR,DATEPART(dd, DebateDate)) AS 'DDDD' FROM dbo.Debate" >
        </asp:SqlDataSource>


    </div>
</asp:Content>

