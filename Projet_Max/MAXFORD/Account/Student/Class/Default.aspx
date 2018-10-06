<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Student/Student.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Account.Student.Class.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="style.css" rel="stylesheet" />    
    <style type="text/css">
        .maxTopBarButton {text-decoration:none;background-color:#0f687c;color:#fff;border:none; font-size:18px; font-weight:bold; padding:10px;padding-left:20px;padding-right:20px; margin-top:20px;}
        .maxTopBarButton:hover {background:#143a57;color:#fff;}
        input[type='submit'] {background:#000;color:#fff;border:none; font-size:16px; font-weight:bold; padding:10px;padding-left:15px;padding-right:15px; margin-top:10px;}
        input[type='submit']:hover {background:#312d2d;color:#fff;}
        .maxSelectTable { border:2px solid #312d2d;padding:5px; margin:5px;}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
  <div class="container">
    <div class="row">
        <asp:Panel ID="maxRegisterPanel" runat="server" >
            <ul class="maxFormSelectBox">
                <li style="display: block; padding: 15px;">
                    <div class="maxFormSelectBox-box-header">
                        <h1> Maxford Student Classes </h1><br />
                    </div>
                    <div class="box-content">
                        <div>
                            <a href="Default.aspx" class="maxTopBarButton">MY CLASSES</a>
                            <a href="Request.aspx" class="maxTopBarButton">REQUEST CLASS</a>
                        </div>         
                        <br />


                        <asp:Panel ID="maxPanel" CssClass="maxPanel" runat="server">
                            <div class="maxFormSelectBox-box-header">
                                <h2> Maxford Student Attending Classes </h2><br />
                            </div>
                            <style type="text/css">
                                .gridview th { font-size: large;font-weight: bold;color: Navy;border: 1px solid black;padding: 8px;}                
                                .gridview th a{ text-decoration:none; }
                                .gridview th a:hover{ color:#39423b }
                                .gridview td { padding: 8px; border: 1px solid black;}
                                .gridview tr td a { text-decoration:none; display:block; padding:7px; background:#099999; }
                                .gridview tr td a:hover {background:#175858; color:#fff }
                                input[value='CANCEL REQUEST'] {background:#099999;color:#061a1a;border:none; padding:5px;padding-left:15px;padding-right:15px;}
                                input[value='CANCEL REQUEST']:hover {background:#082121;color:#b3dede;}
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
                                OnPageIndexChanging="GridView1_PageIndexChanging"
                                OnSorting="GridView1_Sorting"
                                OnRowEditing="GridView1_RowEditing"
                                DataKeyNames="ClassID"
                                >
                                <Columns>
	                                <asp:BoundField HeaderText="Class ID" DataField="ClassID" ReadOnly="True" SortExpression="ClassID"  >
		                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
	                                </asp:BoundField>

	                                <asp:BoundField HeaderText="Class Name" DataField="Class" SortExpression="Class" ReadOnly="True" >
		                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Font-Size="Small" />
	                                </asp:BoundField>
    	            
	                                <asp:BoundField HeaderText="Class State" DataField="ClassState" SortExpression="ClassState" ReadOnly="True" >
		                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="120px" BackColor="#4e9e9c" Font-Size="Medium" ForeColor="Red" />
	                                </asp:BoundField>

	                                <asp:CommandField ShowEditButton="True" ButtonType="Button" EditText="CANCEL REQUEST" >
		                                <ItemStyle Width="190px" HorizontalAlign="Left" VerticalAlign="Middle" />
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
