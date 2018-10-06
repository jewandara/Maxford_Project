<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="MAXFORD.Account.Teacher.Class.Classes" %>


<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <div class="max_middle_nav_bar">
            <ul>
                <li><a id="A1" runat="server" href="~/Account/Teacher/Default.aspx" >HOME </a></li> >
                <li><a id="A2" runat="server" href="~/Account/Teacher/Class/Default.aspx" >CLASS </a></li> >
                <li><a id="A3" runat="server" href="~/Account/Teacher/Class/Classes.aspx" >My CLASSES </a></li>
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
                input[value='DELETE'] {background:#f2431c; color:#210b0b;border:none; padding:5px;padding-left:15px;padding-right:15px;}
                input[value='DELETE']:hover {background:#370a0a;color:#fac4c4;}                  
                input[value='EDIT'] {background:#099999;color:#061a1a;border:none; padding:5px;padding-left:15px;padding-right:15px;}
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
                DataKeyNames="ClassID"
                OnPageIndexChanging="GridView1_PageIndexChanging"
                OnSorting="GridView1_Sorting"
                OnRowEditing="GridView1_RowEditing"
                OnRowDeleting="AccessDataSource1_Deleting"
                >
                <Columns>
	                <asp:BoundField HeaderText="Class ID" DataField="ClassID" ReadOnly="True" SortExpression="ClassID" >
		                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" />
	                </asp:BoundField>

	                <asp:BoundField HeaderText="Class Name" DataField="ClassName" ReadOnly="True" SortExpression="ClassName" >
		                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="250px" />
	                </asp:BoundField>

	                <asp:BoundField HeaderText="Subject Name" DataField="SubjectName" SortExpression="SubjectName" ReadOnly="True" >
		                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
	                </asp:BoundField>
    	            
	                <asp:BoundField HeaderText="Grade Name" DataField="GradeName" SortExpression="GradeName" ReadOnly="True" >
		                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
	                </asp:BoundField>
    	          	                    
                    <asp:BoundField HeaderText="Date" DataField="ClassDate" ReadOnly="True" SortExpression="ClassDate" >
		                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
	                </asp:BoundField>

	                <asp:BoundField HeaderText="Class Start Time" DataField="ClassStartTime" SortExpression="ClassStartTime" ReadOnly="True" >
		                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="50px" />
	                </asp:BoundField>

    	            
	                <asp:CommandField ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" EditText="EDIT" DeleteText="DELETE">
		                <ItemStyle Width="115px" HorizontalAlign="Left" VerticalAlign="Middle" />
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
            <asp:Button runat="server" ID="btnAddNew" Text="ADD PRIMARY CLASS" CausesValidation="false" OnClick="PRIMARY_Click" />
            <asp:Button runat="server" ID="Button1" Text="ADD SECOUNDARY CLASS" CausesValidation="false" OnClick="SECOUNDARY_Click" />
            <asp:Button runat="server" ID="Button2" Text="ADD ORDINARY CLASS" CausesValidation="false" OnClick="ORDINARY_Click" />
            <asp:Button runat="server" ID="Button3" Text="ADD ADVANCED CLASS" CausesValidation="false" OnClick="ADVANCED_Click" />
        </div>
    </div>
</asp:Content>

