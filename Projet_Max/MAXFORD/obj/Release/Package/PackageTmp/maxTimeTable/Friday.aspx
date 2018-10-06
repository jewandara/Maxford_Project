<%@ Page Title="Maxford Friday TimeTable" Language="C#" MasterPageFile="~/maxTimeTable/TimeTable.Master" AutoEventWireup="true" CodeBehind="Friday.aspx.cs" Inherits="MAXFORD.maxTimeTable.Friday" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTimeTableHeader" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderTopGreen" runat="server">
<h1>Time Table [ FRIDAY ]</h1>
<p>This is Friday Maxford Class Time Table.</p>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderTimetableBody" runat="server">
<table class="tt_timetable" style="background-color: #F0F0F0; border:1px solid #033;  border-top:7px solid #033;">
    <thead>
        <tr>
	        <th></th>	
	        <th><a href="Monday.aspx" class="max_row_date" >Monday</a></th>	
	        <th><a href="Tuesday.aspx" class="max_row_date" >Tuesday</a></th>	
	        <th><a href="Wednesday.aspx" class="max_row_date" >Wednesday</a></th>	
	        <th><a href="Thursday.aspx" class="max_row_date" >Thursday</a></th>	
	        <th><a href="Friday.aspx" class="max_row_date max_row_date_active" >Friday</a></th>	
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
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</tbody>
</table>
</asp:Content>