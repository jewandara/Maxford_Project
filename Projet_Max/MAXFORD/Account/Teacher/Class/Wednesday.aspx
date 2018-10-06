<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Wednesday.aspx.cs" Inherits="MAXFORD.Account.Teacher.Class.Wednesday" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Style.css" rel="stylesheet" />
            <style type="text/css">
            .box{
                margin-top: 10px; 
                margin-bottom: 10px ;
                background-color:#F8F9FA;
                padding:20px;
             }
            .topic {
                margin:10px; 
                padding:10px;
                text-decoration:none; 
                font-size:18px; 
                font-weight:bold
            }
            .topic:hover {
                background:#a8d9d9;
                text-decoration:none; 
            }
            .help-footer {
                display:block;
                width:100%;
                background:#aaa;
                padding:20px;
            }
        </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="pageContainer">
        <div style="border:solid 2px #099999; padding:15px;">
                    
            <div class="max_middle_nav_bar">
                <ul style="text-align:center">
                    <li><a id="A1" runat="server" href="~/Account/Teacher/Default.aspx" > HOME </a></li> >
                    <li><a id="A2" runat="server" href="~/Account/Teacher/Class/View.aspx" > PROFILE </a></li> >
                    <li><a id="A3" runat="server" href="~/Account/Teacher/Class/Monday.aspx" > TIME TABLE </a></li>
                    <li><a id="A4" runat="server" href="~/Account/Teacher/Class/Wednesday.aspx" > WEDNESDAY </a></li>
                </ul>
            </div>

			<div class="box">
			    <h2> Maxford Wednesday Time Table</h2><hr />
                <table class="tt_timetable" style="background-color: #F0F0F0; border:1px solid #033;  border-top:7px solid #033;">
                    <thead>
                        <tr>
	                        <th></th>	
	                        <th><a href="Monday.aspx" class="max_row_date">Monday</a></th>	
	                        <th><a href="Tuesday.aspx" class="max_row_date">Tuesday</a></th>	
	                        <th><a href="Wednesday.aspx" class="max_row_date">Wednesday</a></th>	
	                        <th><a href="Thursday.aspx" class="max_row_date">Thursday</a></th>	
	                        <th><a href="Friday.aspx" class="max_row_date max_row_date_active">Friday</a></th>	
	                        <th><a href="Saturday.aspx" class="max_row_date" >Saturday</a></th>	
	                        <th><a href="Sunday.aspx" class="max_row_date" >Sunday</a></th>	
                        </tr>
                    </thead>
                <tbody>
                <tr class="row_1 row_gray" >
                    <td style="border-top:2px solid #033;"></td>
                    <td style="border-top:2px solid #033;"></td>
                    <td style="border-top:2px solid #033;"></td>
                    <td style="border-top:2px solid #033;"></td>
                    <td style="border-top:2px solid #033;"></td>
                    <td></td>
                    <td style="border-top:2px solid #033;"></td>
                    <td style="border-top:2px solid #033;"></td>
                </tr>
                    <asp:Label ID="Label1" runat="server" Text="SEVER ERROR"></asp:Label>
                </tbody>
                </table>
            </div>


        </div>
    </div>
</asp:Content>
