<%@ Page Title="" Language="C#" MasterPageFile="~/maxClasses/Classes.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.maxClasses.Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style.css" rel="stylesheet" />

    <style type="text/css">
        .register-icon {
            height:30px;
        }        
        .register-icon:hover {
            opacity:0.6;
        }
        .GradeMenuItems li a  {
    text-align: center;
    display:block;
    padding: 15px 0 15px 0;
    background: #fff; 
    text-decoration: none; 
    color:#002000;
    text-transform: uppercase; 
    font-weight:bold;
    -webkit-transition: background 0.5s linear;
    -moz-transition: background 0.5s linear;
    -ms-transition: background 0.5s linear;
    -o-transition: background 0.5s linear;
    transition: background 0.5s linear;
    }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="TopContent" runat="server">
    
	<div class="maxTeacherHeaderWrap">
            <table class="maxTeacherHeaderWrapTable">
                <tr align="left">
                    <td><h4 style="font-size:25px; color:#fff; ">Maxford Classs</h4>
                    <p style="font-size:15px; color:#1a3524;" >Skilled in setting curriculums alongwith the experience of assessing students and holding examinations Efficient in planning and organising day-to-day activities related to teaching Expert academician with distinction of being associated with numerous Presentations, Workshops for students. </p>
                    </td>
                </tr>
            </table>
	</div>
	
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">

<div class="maxTeacherProfileBody">
    <div class="SideNavMenuBar">

    <ul class="SideNavMenuItems">
            <li><a href="Primary.aspx" > PRIMARY </a></li>
            <li><a href="Secondary.aspx"> SECONDARY </a></li>
            <li><a href="Ordinary.aspx"> ORDINARY </a></li>
            <li><a href="Advanced.aspx" > ADVANCED </a></li>
    </ul>

    <div style="text-decoration:none;background:#088;color:#fff; display:block; margin-top:-10px; padding-top:30px; padding-left:5px; padding-bottom:25px; border-top:1px solid #1a3524">
        <tr>                   
            <td valign="top"></td>
        </tr>
    </div>

        <table class="maxSubjectBodyTable">
            <tr>
                <td valign="top">
                    <ul class="default-GradeMenuItems">
                         <asp:Label ID="LabelGradeMenu" runat="server" Text="Label"></asp:Label>
                    </ul> 
                </td>

                <td valign="top">   
                    <ul class="default-GradeMenuItems">
                         <asp:Label ID="LabelGradeMenuTwo" runat="server" Text="Label"></asp:Label>
                    </ul>
                </td>

                <td valign="top">   
                    <ul class="default-GradeMenuItems">
                         <asp:Label ID="LabelGradeMenuThree" runat="server" Text="Label"></asp:Label>
                    </ul>
                </td>

                <td valign="top">   
                    <ul class="default-GradeMenuItems">
                         <asp:Label ID="LabelGradeMenuFour" runat="server" Text="Label"></asp:Label>
                    </ul>
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
                    <img src="~/Content/icon.png" runat="server"  class="middle-bot-footer-logo"/>
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