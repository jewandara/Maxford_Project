<%@ Page Title="" Language="C#" MasterPageFile="~/maxSubject/Subject.Master" AutoEventWireup="true" CodeBehind="SecondaryLevel.aspx.cs" Inherits="MAXFORD.maxSubject.SecondaryLevel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTeacherHeader" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentGradeDetailsHeader" runat="server">
    <img src="images/ordinary.jpg" style="width:280px; border:1px solid #000; margin-bottom:0px; margin-left:0px;" />
    <h4 style="margin-top:-200px; margin-left:300px;">Secondary Level</h4>
    <p style=" display:block; margin-left:300px; margin-top:10px; width:700px; height:300px; overflow:hidden; color:#fff;">
       Secondary education normally takes place in secondary schools, taking place after primary education and may be followed by higher education or vocational training. The Sri Lankan Secondary Level is a General Certificate of Education qualification in Sri Lanka, conducted by the Department of Examinations of the Ministry of Education. It is usually taken by students during the school Grade 6 to 9. The exams are held in three mediums Sinhala, Tamil and English.
    </p>
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderGradeCatogoryNavMenu" runat="server">
    <ul class="SideNavMenuItems">
            <li><a href="PrimaryClasses.aspx?GradeID=37" >Primary Class</a></li>
            <li><a href="SecondaryLevel.aspx?GradeID=45"  style="text-decoration:none;background:#088;color:#fff;">Secondary Level</a></li>
            <li><a href="OrdinaryLevel.aspx?GradeID=50">Ordinary Level</a></li>
            <li><a href="AdvancedLevel.aspx?SubjectCatogory=Arts">Advanced Level</a></li>
    </ul>
    <table style="text-decoration:none;background:#088;color:#fff; display:block; padding-top:20px; padding-left:5px; padding-bottom:5px; box-shadow: 0px 1px 1px #088;">
        <tr>                   
            <td valign="top">
                <h5 style="color:#333">Details of the Ordinary Level Classes in Maxford Higher Educational Institute</h5>
            </td>
        </tr>
    </table>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderGradeNavMenu" runat="server">
    <asp:Label ID="LabelGradeMenu" runat="server" Text="Label"></asp:Label>
</asp:Content>


<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderBottomBody" runat="server">
</asp:Content>