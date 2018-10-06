<%@ Page Title="" Language="C#" MasterPageFile="~/maxSubject/Subject.Master" AutoEventWireup="true" CodeBehind="PrimaryClasses.aspx.cs" Inherits="MAXFORD.maxSubject.PrimaryClasses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTeacherHeader" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentGradeDetailsHeader" runat="server">
    <img src="images/primary.jpg" style="width:280px; border:1px solid #000; margin-bottom:0px; margin-left:0px;" />
    <h4 style="margin-top:-170px; margin-left:300px;">Primary Classes</h4>
    <p style=" display:block; margin-left:300px; margin-top:10px; width:700px; height:300px; overflow:hidden; color:#fff;">
    Primary school teachers develop schemes of work and lesson plans in line with curriculum objectives. They facilitate learning by establishing a relationship with pupils, and by their organisation of learning resources and the classroom learning environment.
    Primary school teachers develop and foster the appropriate skills and social abilities to enable the optimum development of children, according to age, ability and aptitude.
    They assess and record progress and prepare pupils for examinations. 
    </p>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderGradeCatogoryNavMenu" runat="server">
    <ul class="SideNavMenuItems">
            <li><a href="PrimaryClasses.aspx?GradeID=37" style="text-decoration:none;background:#088;color:#fff;">Primary Class</a></li>
            <li><a href="SecondaryLevel.aspx?GradeID=45">Secondary Level</a></li>
            <li><a href="OrdinaryLevel.aspx?GradeID=50">Ordinary Level</a></li>
            <li><a href="AdvancedLevel.aspx?SubjectCatogory=Arts">Advanced Level</a></li>
    </ul>
    <table style="text-decoration:none;background:#088;color:#fff; display:block; padding-top:20px; padding-left:5px; padding-bottom:5px; box-shadow: 0px 1px 1px #088;">
        <tr>                   
            <td valign="top">
                <h5 style="color:#333">Details of the Primary Classes in Maxford Higher Educational Institute</h5>
            </td>
        </tr>
    </table>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderGradeNavMenu" runat="server">
    <asp:Label ID="LabelGradeMenu" runat="server" Text="Label"></asp:Label>
</asp:Content>


<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderBottomBody" runat="server">
</asp:Content>