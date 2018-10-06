<%@ Page Title="" Language="C#" MasterPageFile="~/maxSubject/Subject.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.maxSubject.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    
    
    <img src="images/subjects.jpg" style="width:280px; border:1px solid #000; margin-bottom:0px; margin-left:0px;" />
    <h4 style="margin-top:-180px; margin-left:300px;">Learning Subjects</h4>
    <p style=" display:block; margin-left:300px; margin-top:10px; width:700px; height:300px; overflow:hidden; color:#fff;">
    Learning is the act of acquiring new, or modifying and reinforcing, existing knowledge, behaviors, skills, values, or preferences and may involve synthesizing different types of information. The ability to learn is possessed by humans, animals and some machines. Progress over time tends to follow learning curves 
     </p>



    <ul class="SideNavMenuItems">
            <li><a href="PrimaryClasses.aspx?GradeID=37">Primary Class</a></li>
            <li><a href="SecondaryLevel.aspx?GradeID=45">Secondary Level</a></li>
            <li><a href="OrdinaryLevel.aspx?GradeID=50">Ordinary Level</a></li>
            <li><a href="AdvancedLevel.aspx?SubjectCatogory=Arts">Advanced Level</a></li>
    </ul>


    <table style="text-decoration:none;background:#088;color:#fff; display:block; padding-top:20px; padding-left:5px; padding-bottom:5px; box-shadow: 0px 1px 1px #088;">
        <tr>                   
            <td valign="top">
                <h5 style="color:#333">Details of the Classes in Maxford Higher Educational Institute</h5>
            </td>
        </tr>
    </table>





<%--        <div style=" margin-right:auto;  margin-left:auto; display:block; width:800px; border:1px solid #022; padding:5px 5px 5px 70px; background-color:#DCEFEA;">
            <table>
                <tr>
                    <th width="400px"></th>
                    <th></th>
                </tr>
                <tr>
                    <td>
                        <a href="PrimaryClasses.aspx?GradeID=37" ><img src="images/primary.jpg" style="width:280px; border:1px solid #000; margin-bottom:0px; margin-left:0px;" /></a>
                    </td>
                    <td valign="top">
                        <h1 style=" color:Green"><a href="PrimaryClasses.aspx?GradeID=37" >Primary Class</a></h1>
                        <br />
                        <asp:Repeater ID="maxTeacherPrimaryDataRepeater" runat="server" DataSourceID="maxPrimaryTeacherDataSqlDataSource">
                        <ItemTemplate>
                            <a href='../maxTeacher/teacher.aspx?UserID=<%# Eval("UserID")%>&GradeCatogory=<%# Eval("GradeCatogory")%>' ><p style="color:#000"><%# Eval("TimeName")%></p><p style=" font-size:x-small;  color:#555;"><%# Eval("GradeName")%> </p></a>
                            <br />
                        </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource 
                            ID="maxPrimaryTeacherDataSqlDataSource"
                            runat="server"
                            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                            SelectCommand="SELECT * FROM [vw_aspnet_TimeTable] WHERE (GradeCatogory =  'PRIMARY')">
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
         <br /> <br />


        <div style=" margin-right:auto;  margin-left:auto; display:block; width:800px; border:1px solid #022; padding:5px 5px 5px 70px; background-color:#DCEFEA;">
            <table>
                <tr>
                    <th width="400px"></th>
                    <th></th>
                </tr>
                <tr>
                    <td>
                       <a href="SecondaryLevel.aspx?GradeID=45"><img src="images/scholarship.jpg" style="width:280px; border:1px solid #000; margin-bottom:0px; margin-left:0px;" /></a>
                    </td>
                    <td valign="top">
                        <h1 style=" color:Green"><a href="SecondaryLevel.aspx?GradeID=45" >Secondary Level</a></h1>
                        <br />
                        <asp:Repeater ID="maxTeacherScholarshipDataRepeater" runat="server" DataSourceID="maxScholarshipTeacherDataSqlDataSource">
                        <ItemTemplate>
                            <a href='../maxTeacher/teacher.aspx?UserID=<%# Eval("UserID")%>&GradeCatogory=<%# Eval("GradeCatogory")%>' ><p style="color:#000"><%# Eval("TimeName")%></p><p style=" font-size:x-small;  color:#555;"><%# Eval("GradeName")%> </p></a>
                            <br />
                        </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource 
                            ID="maxScholarshipTeacherDataSqlDataSource"
                            runat="server"
                            ConnectionString="<%$ ConnectionStrings:ZionxMaxUserDB %>"
                            SelectCommand="SELECT * FROM [vw_aspnet_TimeTable] WHERE (GradeCatogory =  'SECONDARY')">
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
       <br /> <br />


        <div style=" margin-right:auto;  margin-left:auto; display:block; width:800px; border:1px solid #022; padding:5px 5px 5px 70px; background-color:#DCEFEA;">
            <table>
                <tr>
                    <th width="400px"></th>
                    <th></th>
                </tr>
                <tr>
                    <td>
                        <a href="OrdinaryLevel.aspx?GradeID=50" ><img src="images/ordinary.jpg" style="width:280px; border:1px solid #000; margin-bottom:0px; margin-left:0px;" /></a>
                    </td>
                    <td valign="top">
                        <h1 style=" color:Green"><a href="OrdinaryLevel.aspx?GradeID=50" >Ordinary Level</a></h1>
                        <br />
                        <asp:Repeater ID="maxTeacherOrdinaryDataRepeater" runat="server" DataSourceID="maxOrdinaryTeacherDataSqlDataSource">
                        <ItemTemplate>
                            <a href='../maxTeacher/teacher.aspx?UserID=<%# Eval("UserID")%>&GradeCatogory=<%# Eval("GradeCatogory")%>' ><p style="color:#000"><%# Eval("TimeName")%></p><p style=" font-size:x-small;  color:#555;"><%# Eval("GradeName")%> </p></a>
                            <br />
                        </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource 
                            ID="maxOrdinaryTeacherDataSqlDataSource"
                            runat="server"
                            ConnectionString="<%$ ConnectionStrings:ZionxMaxUserDB %>"
                            SelectCommand="SELECT * FROM [vw_aspnet_TimeTable] WHERE (GradeCatogory =  'ORDINARY')">
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
         <br /> <br />


        <div style=" margin-right:auto;  margin-left:auto; display:block; width:800px; border:1px solid #022; padding:5px 5px 5px 70px; background-color:#DCEFEA;">
            <table>
                <tr>
                    <th width="400px"></th>
                    <th></th>
                </tr>
                <tr>
                    <td>
                        <a href="AdvancedLevel.aspx?SubjectCatogory=Arts" ><img src="images/advanced.jpg" style="width:280px; border:1px solid #000; margin-bottom:0px; margin-left:0px;" /></a>
                    </td>
                    <td valign="top">
                        <h1 style=" color:Green"><a href="AdvancedLevel.aspx?SubjectCatogory=Arts" >Advanced Level</a></h1>
                        <br />
                        <asp:Repeater ID="maxTeacherAdvancedDataRepeater" runat="server" DataSourceID="maxAdvancedTeacherDataSqlDataSource">
                        <ItemTemplate>
                            <a href='../maxTeacher/teacher.aspx?UserID=<%# Eval("UserID")%>&GradeCatogory=<%# Eval("GradeCatogory")%>' ><p style="color:#000"><%# Eval("TimeName")%></p><p style=" font-size:x-small;  color:#555;"><%# Eval("GradeName")%> </p></a>
                            <br />
                        </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource 
                            ID="maxAdvancedTeacherDataSqlDataSource"
                            runat="server"
                            ConnectionString="<%$ ConnectionStrings:ZionxMaxUserDB %>"
                            SelectCommand="SELECT * FROM [vw_aspnet_TimeTable] WHERE (GradeCatogory =  'ADVANCED')">
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
        <br /> <br />--%>
















</asp:Content>