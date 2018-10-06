<%@ Page Title="" Language="C#" MasterPageFile="~/maxClasses/Classes.Master" AutoEventWireup="true" CodeBehind="Primary.aspx.cs" Inherits="MAXFORD.maxClasses.Primary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style.css" rel="stylesheet" />
    <style type="text/css">
        .register-icon {
            height:30px;
        }
            .register-icon:hover {
                opacity: 0.6;
            }

    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="TopContent" runat="server">
	<div class="maxTeacherHeaderWrap">
        <table class="maxTeacherHeaderWrapTable">
            <tr align="left">
                <td><h4 style="font-size:25px; color:#fff; ">Primary Level Classs</h4>
                <p style="font-size:15px; color:#1a3524;" >Primary school teachers develop schemes of work and lesson plans in line with curriculum objectives. They facilitate learning by establishing a relationship with pupils, and by their organisation of learning resources and the classroom learning environment.
    Primary school teachers develop and foster the appropriate skills and social abilities to enable the optimum development of children, according to age, ability and aptitude.
    They assess and record progress and prepare pupils for examinations.</p>
                </td>
            </tr>
        </table>
	</div>
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div class="maxTeacherProfileBody">
        <div class="SideNavMenuBar">
            <ul class="SideNavMenuItems">
                <li><a href="Primary.aspx" style="text-decoration:none;background:#088;color:#fff;"> PRIMARY </a></li>
                <li><a href="Secondary.aspx"> SECONDARY </a></li>
                <li><a href="Ordinary.aspx"> ORDINARY </a></li>
                <li><a href="Advanced.aspx"> ADVANCED </a></li>
            </ul>
            <div style="text-decoration:none;background:#088;color:#fff; display:block; margin-top:-10px; padding-top:30px; padding-left:5px; padding-bottom:25px;">
                <tr>                   
                    <td valign="top">
                        <h5 style="color:#fff; padding-left:20px;">Details of the Primary Level Classes in Maxford Higher Educational Institute</h5>
                    </td>
                </tr>
            </div>
            <table class="maxSubjectBodyTable">
                <tr>
                    <th width="23%"></th>
                    <th width="75%"></th>
                </tr>
                <tr>
                    <td valign="top">
                        <ul class="GradeMenuItems">
                             <asp:Label ID="LabelGradeMenu" runat="server" Text="Label"></asp:Label>
                        </ul>
                    </td>
                    <td valign="top">

                        <asp:Panel ID="PanelCatogory" runat="server">
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="CatogorySource">
                            <ItemTemplate>
                            <div style=" border:2px solid #022; padding:2px 2px 2px 2px; margin-top:6px; background:#fff;">
                                <table>
                                    <tr>
                                        <th style="width:480px;"></th>
                                        <th style="width:10px;"></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <a href='../maxTeacher/teacher.aspx?UserID=<%# Eval("UserID")%>' ><h3 style="padding-left:15px; font-size:25px; font-weight:bold; margin-top:-20px; color:#808080"><%# Eval("ClassName")%></h3></a>
                                            <br />
                                                <p style="padding:10px 10px 10px 10px">
                                                    <img src='/gfh.png' width="50px"/>
                                                    <b style="font-weight:bold;"><%# Eval("TeacherName")%></b>
                                                    <br />
                                                    On <b style="font-weight:bold;"><%# Eval("ClassDate")%></b>  From  <b style=" font-weight:bold"><%# Eval("TimeDuretion")%></b>
                                                    <br /> <%# Eval("GradeName")%> <%# Eval("SubjectCatogory")%> <%# Eval("SubjectName")%> <br />
                                                    <b style=" font-size:x-small"><%# Eval("HallName")%></b>
                                                </p>
                                        </td>
                                        <td></td>
                                        <td>
                                            <b style=" font-weight:bold"><%# Eval("SubjectName")%></b>
                                            <br /><br />
                                            <a href='../maxTeacher/teacher.aspx?UserID=<%# Eval("UserID")%>' ><img src="images/register.png" class="register-icon"/></a>
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <br /><br />
                            </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource 
                                    ID="CatogorySource"
                                    runat="server"
                                    ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                                    SelectCommand="SELECT * FROM [vw_maxford_Classes] WHERE GradeCatogory = 'PRIMARY' AND GradeID = @GradeID">
                                    <SelectParameters><asp:QueryStringParameter Name="GradeID" QueryStringField="GradeID" Type="Int64" /></SelectParameters>
                            </asp:SqlDataSource>
                        </asp:Panel>

                        <br /><br /><br />
                        <h3 style="font-size:15px; font-weight:bold;">
                            <asp:Label ID="LabelOther" runat="server" Text="Primary Level Classes"></asp:Label>
                        </h3><hr />

                        <asp:Panel ID="PanelCode" runat="server" Enabled="false">
                            <asp:Repeater ID="RepeaterAdvancedLevel" runat="server" DataSourceID="CodeSource">
                            <ItemTemplate>
                            <div style=" border:2px solid #022; padding:2px 2px 2px 2px; margin-top:6px; background:#fff;">
                                <table>
                                    <tr>
                                        <th style="width:480px;"></th>
                                        <th style="width:10px;"></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <a href='../maxTeacher/teacher.aspx?UserID=<%# Eval("UserID")%>' ><h3 style="padding-left:15px; font-size:25px; font-weight:bold; margin-top:-20px; color:#808080"><%# Eval("ClassName")%></h3></a>
                                            <br />
                                                <p style="padding:10px 10px 10px 10px">
                                                    <img src='/gfh.png' width="50px"/>
                                                    <b style="font-weight:bold;"><%# Eval("TeacherName")%></b>
                                                    <br />
                                                    On <b style="font-weight:bold;"><%# Eval("ClassDate")%></b>  From  <b style=" font-weight:bold"><%# Eval("TimeDuretion")%></b>
                                                    <br /> <%# Eval("GradeName")%> <%# Eval("SubjectCatogory")%> <%# Eval("SubjectName")%> <br />
                                                    <b style=" font-size:x-small"><%# Eval("HallName")%></b>
                                                </p>
                                        </td>
                                        <td></td>
                                        <td>
                                            <b style=" font-weight:bold"><%# Eval("SubjectName")%></b>
                                            <br /><br />
                                            <a href='../maxTeacher/teacher.aspx?UserID=<%# Eval("UserID")%>' ><img src="images/register.png" class="register-icon"/></a>
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <br /><br />
                            </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource 
                                    ID="CodeSource"
                                    runat="server"
                                    ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                                    SelectCommand="SELECT TOP 10 * FROM [vw_maxford_Classes] WHERE GradeCatogory = 'PRIMARY'">
                            </asp:SqlDataSource>
                        </asp:Panel>

                    </td>
                </tr>
            </table>
        </div>
    </div>

    <section class="featured">
        <div class="content-wrapper">
            <div style="margin-top:-40px;">
                <div class="content-wrapper wa-content-divided">
                    <h2>Our Teachers</h2>
                    <div class="wa-resourceBlockRow">
                        <a href="#" class="wa-resourceBlock" >
                            <span class="wa-resourceBlock-header">Teachers Events</span>
                            Manage the end-to-end customer lifecycle for Microsoft Cloud services
                        </a>
                        <a href="#" class="wa-resourceBlock" >
                            <span class="wa-resourceBlock-header">Teachers News</span>
                            Resell Azure services through Open Licensing
                        </a>
                        <a href="#" class="wa-resourceBlock" >
                            <span class="wa-resourceBlock-header">Teachers Downloads</span>
                            Earn more on services your customers consume
                        </a>
                        <a href="#" class="wa-resourceBlock" >
                            <span class="wa-resourceBlock-header">About Our Teachers</span>
                            Sell your applications and services on Azure Marketplace
                        </a>
                    </div>
                </div>
            </div>
       </div>
    </section>
</asp:Content>



<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <link href="../Content/footerStyle.css" rel="stylesheet" />
    <section class="content-wrapper main-content clear-fix">
        <div id="MaxBottomFooterBox">
            <div id="MaxFooterBoxDescription">
                <div class="maxFooterBox">
                    <div class="maxFooterHead">
		                <h3>CONNECT &nbsp;WITH &nbsp;MAXFORD</h3>
                    </div>
                    <div class="maxFooterLinks">
                        <h3>SUBSCRIBE TO OUR NEWSLETTER</h3>
                        <input type="text" runat="server" id="SUBSCRIBE"  placeholder="Your Email Address . . ."/>
                        <asp:Button ID="Button1" runat="server" Text="SUBSCRIBE" CssClass="maxFooterButton" />
                    </div> 
                    <div class="footer-insert"></div>
                </div>
                <div class="middle-footer">
                   <h3>We suggest the following:</h3>
                    <ol class="round">
                        <h5>Getting Started</h5>
                        ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
                        A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
                        <a href="http://www.maxford.lk/">More…</a>
                        <h5>Add NuGet packages and jump-start your coding</h5>
                        NuGet makes it easy to install and update free libraries and tools.
                        <a href="http://www.maxford.lk/">More…</a>
                        <h5>Find Web Hosting</h5>
                        You can easily find a web hosting company that offers the right mix of features and price for your applications.
                        <a href="http://www.maxford.lk/">More…</a>
                    </ol>
                    <br /><hr /><br />
                    <img id="Img1" src="~/Content/icon.png" runat="server"  class="middle-bot-footer-logo"/>
                    <div class="middle-bot-footer">
                        <address>
                            Maxford Higher Educational Institute,<br/>
                            207 / E, Galahitiyawa East, Ganemulla,<br/>
                            Sri Lanka<br />
                        </address>
                        <ul>
                            <li class="">
                                <a href="#" class="first" onclick="#">Our Mission</a>
                            </li>
                            <li class="">
                                <a href="#" class="" onclick="#">Our Vission</a>
                            </li>
                            <li class="">
                                <a href="#" class="" onclick="#">About Us</a>
                            </li>
                            <li class="last">
                                <a href="#" class="last" onclick="#">Contact Us</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
         </div>
    </section>
</asp:Content>