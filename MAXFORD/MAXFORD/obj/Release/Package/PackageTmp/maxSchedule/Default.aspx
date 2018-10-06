<%@ Page Title="" Language="C#" MasterPageFile="~/maxSchedule/Schedule.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.maxSchedule.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTopGreen" runat="server">
        <h1>The Schedule of Maxford Classes</h1>
		    <p>To find contact information for Maxford Time Table, using Maxford 
            directory. The links below provide information and resources for Maxford. More 
            information can be found on the websites of each classes.</p>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMiddleBody" runat="server">
    <table style="width: 100%; font-family: Tahoma; text-decoration: none; font-size: medium; color: #800000; text-transform: none;">
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/maxSchedule/maxPrimaryClasses.aspx">PRIMARY CLASSES</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    NavigateUrl="~/maxSchedule/maxScholarshipExams.aspx">SCHOLARSHIP EXAMS</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink3" runat="server" 
                    NavigateUrl="~/maxSchedule/maxOrdinaryLevel_6_to_9.aspx">ORDINARY LEVEL 6 TO 9</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink4" runat="server" 
                    NavigateUrl="~/maxSchedule/maxOrdinaryLevel_10_to_11.aspx">ORDINARY LEVEL 10 TO 11</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink5" runat="server" 
                    NavigateUrl="~/maxSchedule/maxAdvancedLevel.aspx">ADVANCED LEVEL</asp:HyperLink>
            </td>
        </tr>
    </table>
&nbsp;
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderLeftAdver" runat="server">
    <img src="images/adver.png"/>
</asp:Content>