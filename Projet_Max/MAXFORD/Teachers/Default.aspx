<%@ Page Title="" Language="C#" MasterPageFile="~/Teachers/Teacher.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Teachers.Default" %>


<asp:Content ID="Header" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
    <style type="text/css">
        .dropdown-menu li a { border-bottom: 1px solid #EEE;padding: 6px 15px;}
        .dropdown-menu{padding:0px;}
        @media (min-width:1000px){.container{width:1100px;}}
        .titleMod{color: #660000;background-color: #f3f2e8; border:1px solid #f3f2e8;border-radius: 2px;font-family:Candara,Calibri,Segoe,'Segoe UI',Optima,Arial,sans-serif;font-size:36px;font-weight:bold;text-align:right;background-color:transparent; border:0px;}
        .titleMod{padding:0px 5px 5px 5px; }
        .mod{border:1px solid #e1dfd0; background-color:#ffffff; border-radius: 2px;  }
        .navbar-default, .dropdown-menu {background-color: #ffffff;border-color: #e1dfd0;border-radius: 2px; margin-bottom:5px;}
        ul.nav li:hover {background-color:#eeeeee;}
        .navbar-default .navbar-nav > li > a, .dropdown-menu > li > a{color: #660000; font-size:14px;}
        .mod h6 {color: #1c1c1c; background-color: #ffffff; font-family:Candara,Calibri,Segoe,'Segoe UI',Optima,Arial,sans-serif;font-family:Candara,Calibri,Segoe,'Segoe UI',Optima,Arial,sans-serif;font-size:18px;font-weight:bold;}
        .profileBorderR,.profileBorderL{border:1px solid #e1dfd0;}
        .btn2, .btn2:hover{ background:#f3f2e8;color:#660000; border:1px solid #f3f2e8;}
        .ppic{border-radius: 0%; border: 5px solid #eee;box-shadow: 0 3px 2px rgba(0, 0, 0, 0.3);}
        a:link,a:visited,a:hover,a:active{color: #660000;}
        .right-caret {border-left: 6px solid #660000;}
        .row.no-gutter [class*='col-']:not(:first-child),.row.no-gutter [class*='col-']:not(:last-child) {padding-right:3px; padding-left:3px;}
        .row.no-gutter {margin-left:-3px; margin-right:-3px;}
    </style>
</asp:Content>



<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="container">
        <div id="wrapper">
            <div class="row no-gutter">

                <div class="col-md-4" id="narrow"> 
                    <ul id="sortable">
                        <li id="moduleKey_28535"> 
                            <div class="mod modLinks">
                            <h6>Profile</h6>
                                <ul>
                                    <li>
                                        <span class="right-caret" style="opacity:1;"></span> 
                                        <a href="http://www.portfoliogen.com/pgsample2/"> About</a>
                                    </li>
                                    <ul style="padding-bottom:0px; padding-left:15px;">
                                        <li>
                                            <a href="http://www.portfoliogen.com/pgsample2/62927">
                                                <span class="right-caret"></span> Teacher</a>
                                        </li>
                                        <li><a href="http://www.portfoliogen.com/pgsample2/62928">
                                            <span class="right-caret"></span> Resume</a>
                                        </li>
                                    </ul>
                                    <li>
                                        <span class="right-caret"></span> 
                                        <a href="http://www.portfoliogen.com/pgsample2/contact">Contact Me</a>
                                    </li> 
                                </ul>
                            </div>
                        </li>
                        <li id="moduleKey_4"> 
                            <div class="mod modLinks">
                            <h6><span class="glyphicon glyphicon-education gopac"></span> Subjects</h6>
                            <div class="catName">Certified Subjects </div>
                                <ul>
                                    <li><span class="right-caret"></span> Guidance Counselor (Arizona)</li>
                                    <li><span class="right-caret"></span> Elementary K-8 (Arizona)</li>
                                </ul>
                            </div>	
                        </li>
                        <li id="moduleKey_5"> 
                            <div class="mod modLinks">
                            <h6><span class="glyphicon glyphicon-education gopac"></span> Education</h6>
                                <ul>
                                    <li><span class="right-caret"></span> University of Arizona <br><i>MA Degree in Sociology </i></li>
                                    <li><span class="right-caret"></span> University of Arizona <br><i>MA Degree in Teaching</i></li>
                                </ul>
                            </div>
                        </li>
                        <li id="moduleKey_6">        
                            <div class="mod modLinks">
                            <h6><span class="glyphicon glyphicon-education gopac"></span> Events</h6>
                                <ul>
                                    <li><span class="right-caret"></span> University of Arizona <br><i>MA Degree in Sociology </i></li>
                                    <li><span class="right-caret"></span> University of Arizona <br><i>MA Degree in Teaching</i></li>
                                </ul>
                            </div>
                        </li>
                        <li id="moduleKey_11">        
                            <div class="mod modLinks">
                            <h6><span class="glyphicon glyphicon-education gopac"></span> Books</h6>
                                <ul>
                                    <li><span class="right-caret"></span> University of Arizona <br><i>MA Degree in Sociology </i></li>
                                    <li><span class="right-caret"></span> University of Arizona <br><i>MA Degree in Teaching</i></li>
                                </ul>
                            </div>
                        </li>
                        <li id="moduleKey_36033">
                            <div class="mod modLinks">
                            <h6><span class="glyphicon glyphicon-heart gopac"></span> Interests</h6>
                                <ul>
                                    <li><span class="right-caret"></span> Arts &amp; Humanities</li>
                                    <li><span class="right-caret"></span> Education</li>
                                    <li><span class="right-caret"></span> Entertainment</li>
                                    <li><span class="right-caret"></span> Math &amp; Physics</li>
                                </ul>
                            </div>	
                        </li>
                    </ul>
                </div>

                <div class="col-md-8" id="wide">

                    <div class="mod">
                     <div class="titleMod">Christopher L. Greer </div>
                        <div class="mainTextWebpage">
                            <img src="img/21068.jpg" width="120" height="120" class="profileBorderL ppic" align="left" />
                            <p>I am excited to be working with children and really making a difference in their lives. I remember being so upset in class as a child because I did not understand what was being talked about in the classroom. A dedicated teacher helped me by recognizing my learning disability and finding ways to assist me. I owe my success to this amazing teacher who changed my life.</p>
                            <p>Those experiences made me who I am today and I am now helping others. I assist children making the transition to our school systems here in the United States both academically and culturally. I love my job and am very proud to be in this position making a difference.</p>
                            <p>I come to this profession with definite beliefs in mind in relation to who I will be as a successful teacher, employee, and member of your community. I am a teacher who most importantly embraces the development of a trusting environment with my students. In my opinion, students only open up to learning beyond the borders of basic requirements when trust is present. One of the skills I will utilize in building the before mentioned environment is found in the ability to communicate efficiently with one’s students. I will not only provide educational data from the curriculum, but am a good listener willing to respond in kind to all ideas presented by the classroom community. I will also respond well to change in being open to learning from others in trying new approaches in lesson construction and delivery.</p>
                            <p>I am committed to inspiring this critical exploration through stimulating teamwork amongst peers, being aware of different learning styles, teaching across subject boundaries, providing individualized accommodations, involving students in goal setting where appropriate, and being able to recognize and seize the moment when teachable moments occur. All of these approaches can be fostered through creative lesson planning. My teaching methodologies main objective is to inspire learning of content as well as developing the skills necessary for students to explore content and draw intelligent conclusions independently. I am committed to inspiring this critical exploration through stimulating teamwork amongst peers, being aware of different learning styles, teaching across subject boundaries, providing individualized accommodations, involving students in goal setting where appropriate, and being able to recognize and seize the moment when teachable moments occur. </p> 
                        </div>
                    </div>



                </div>

            </div>
        </div>
    </div>
</asp:Content>



<asp:Content ID="footer" ContentPlaceHolderID="ContentPlaceHolderFooter" runat="server">
</asp:Content>