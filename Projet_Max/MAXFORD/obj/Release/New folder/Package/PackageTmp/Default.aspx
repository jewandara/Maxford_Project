<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD._Default" %>


<asp:Content runat="server" ID="Content2" ContentPlaceHolderID="HeadContent">
  <link href="Content/Slide/engine1/style.css" rel="stylesheet" />
  <script src="Content/Slide/engine1/jquery.js"></script>
</asp:Content>



<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="maxContentPlaceHolderSlideBody">


	<div id="wowslider-container1">
	<div class="ws_images">
        <ul>
		    <li><img src="Content/Slide/data1/images/2.jpg" alt="" title="" id="wows1_0"/>
                <div class="carousel-control">
                    <p style="background-color: rgba(128,0,0,0.5);">

                        <b>Welcome To Maxford</b>
                        <br /><i>Click the play button to play the video</i>
                        <br /><br />
                        <img src="Content/Slide/data1/images/1.jpg" style="width:350px; padding:25px;"/>
                        <br /><i>Click the play button to play the sasaf as</i>
                    </p>
                    <a href="#"><p2>READ MORE</p2></a>
                </div>
		    </li>


		    <li><img src="Content/Slide/data1/images/3.jpg" alt="" title="" id="wows1_1"/>
                <div class="carousel-control">
                    <p style="background-color: rgba(0,0,0,0.5);">
                        <b style="color:#fff;">Welcome To Maxford</b>
                        <br /><i style="color:#fff;">Click the play button to play the video</i>
                        <br />
                        <a href="Content/maxford.mp4">
                        <video controls="controls" width="350" poster="Content/Default.png" data-setup="{}" style="padding:25px;">
                            <source src="Content/maxford.mp4" type='video/mp4'>
                        </video>
                        </a>
                    </p>
                    <a href="Content/maxford.mp4"><p2>PLAY VIDEO</p2></a>
                </div>
		    </li>



		    <li><img src="Content/Slide/data1/images/img_0230.jpg" alt="" title="" id="wows1_2"/>
                <div class="carousel-control">
                    <p style="background-color: rgba(0,128,128,0.5);">
                        <b style="color:#fff;">Welcome To Maxford</b>
                        <br /><i style="color:#fff;">Click the play button to play the video</i>
                        <br /><br />
                        <img src="Content/Slide/data1/images/1.jpg" style="width:350px; padding:25px;"/>
                        <br /><i>Click the play button to play the sasaf as</i>
                        </p>
                    <a href="#"><p2>READ MORE</p2></a>
                </div>
		    </li>
		    <li><img src="Content/Slide/data1/images/img_0802.jpg" alt="" title="" id="wows1_3"/></li>
	    </ul>
	</div>
	<div class="ws_bullets">
        <div>
		    <a href="#" title="2"><span>1</span></a>
		    <a href="#" title="3"><span>2</span></a>
		    <a href="#" title=""><span>3</span></a>
		    <a href="#" title=""><span>4</span></a>
	    </div>
	</div>
	<div class="ws_shadow"></div>
	</div>


	<script type="text/javascript" src="Content/Slide/engine1/wowslider.js"></script>
	<script type="text/javascript" src="Content/Slide/engine1/script.js"></script>

</asp:Content>






<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">

    <div class="maxford-body-main">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h2 style="color:#1b3027">Maxford Higher Educational Institute</h2>
            </hgroup>
            <p>
                
                A class that teaches students about the English language. During the early years, English is a very useful, important, and most of all fun class.
                 By middle school, however, English class becomes a redundant class where students are taught the exact same things (basic grammar and punctuation,
                 paragraph structuring, etc) over and over again. By high school, the fun and useful 
                class has been completely replaced by an idiotic course where too much emphasis is placed on over-analysis and essay writing
                 (where the teacher usually tells the students to write a five page essay that could be easily done in three), and less emphasis on creativity. 
                High school English is the period where many idiots get the impression that Shakespeare is the only playwright to exist in EVER and that no significant literature has been published since the late Victorian era.

            </p>
            <p class="more" class="wa-arrowLink wa-arrowLink-blue"><a href="#">Read More…</a></p>
        </div>
    </section>

    <section class="featured">
        <div class="content-wrapper">
            <div style="margin-top:-40px;">


            <div class="wa-content">
                <h1>Maxford, Watch this videos</h1>
            </div>

            <div class="wa-content wa-content-4up">
                <div class="wa-spacer wa-spacer-2down">
                    <video width="100%" poster="/Content/Default.png" controls>
                        <source src="Content/maxford.mp4" type='video/mp4' />
                        <img src="Content/Default.png" title="Your browser does not support the <video> tag">
                    </video>
                </div>
                <div class="wa-spacer wa-spacer-2down">
                    <video width="100%" poster="/Content/Default.png" controls>
                        <source src="Content/maxford.mp4" type='video/mp4' />
                    </video>
                </div>
            </div>
            <div class="wa-content wa-content-4up">
                <div class="wa-spacer wa-spacer-2down">
                    <h2>About Maxford</h2>
                    <p>                A class that teaches students about the English language. During the early years, English is a very useful, important, and most of all fun class.
                 By middle school, however, English class becomes a redundant class where students are taught the exact same things (basic grammar and punctuation,
                 paragraph structuring, etc) over and over again.</p>
                    <p><a href="#" class="wa-arrowLink wa-arrowLink-blue">Find More . . .</a></p>
                </div>
                <div class="wa-spacer wa-spacer-2down">
                    <h2>About Maxford</h2>
                    <p>                A class that teaches students about the English language. During the early years, English is a very useful, important, and most of all fun class.
                 By middle school, however, English class becomes a redundant class where students are taught the exact same things (basic grammar and punctuation,
                 paragraph structuring, etc) over and over again.</p>
                    <p><a href="#" class="wa-arrowLink wa-arrowLink-blue">Find More . . .</a></p>
                </div>
            </div>


            <div class="wa-content wa-content-4up">
                <div class="wa-spacer wa-spacer-2down">
                    <img src="Content/maxford.png" />
                </div>
                <div class="wa-spacer wa-spacer-2down">
                    <img src="Content/gift.png" />
                </div>
            </div>

            <div class="wa-content wa-content-4up">
                <div class="wa-spacer wa-spacer-2down">
                    <h2>Maxford Upcomming Events</h2>
                    <p>                A class that teaches students about the English language. During the early years, English is a very useful, important, and most of all fun class.
                 By middle school, however, English class becomes a redundant class where students are taught the exact same things (basic grammar and punctuation,
                 paragraph structuring, etc) over and over again.</p>
                    <p><a href="#" class="wa-arrowLink wa-arrowLink-blue" >Find More . . . </a></p>
                </div>
                <div class="wa-spacer wa-spacer-2down">
                    <h2>Maxford Upcomming Events</h2>
                    <p>                A class that teaches students about the English language. During the early years, English is a very useful, important, and most of all fun class.
                 By middle school, however, English class becomes a redundant class where students are taught the exact same things (basic grammar and punctuation,
                 paragraph structuring, etc) over and over again.</p>
                    <p><a href="#" class="wa-arrowLink wa-arrowLink-blue" >Find More . . .</a></p>
                </div>
            </div>

            <div class="wa-content wa-content-4up">
                <div class="wa-spacer wa-spacer-2down">
                    <h2>Maxford Classes</h2>
                    <p>                A class that teaches students about the English language. During the early years, English is a very useful, important, and most of all fun class.
                 By middle school, however, English class becomes a redundant class where students are taught the exact same things (basic grammar and punctuation,
                 paragraph structuring, etc) over and over again.</p>
                    <p><a href="#" class="wa-arrowLink wa-arrowLink-blue" >Find More . . . </a></p>
                </div>
                <div class="wa-spacer wa-spacer-2down">
                    <h2>Maxford Subjects</h2>
                    <p>                A class that teaches students about the English language. During the early years, English is a very useful, important, and most of all fun class.
                 By middle school, however, English class becomes a redundant class where students are taught the exact same things (basic grammar and punctuation,
                 paragraph structuring, etc) over and over again.</p>
                    <p><a href="#" class="wa-arrowLink wa-arrowLink-blue" >Find More . . . </a></p>
                </div>
            </div>

                <br /><hr />

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
    </div>
</asp:Content>






<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <link href="Content/footerStyle.css" rel="stylesheet" />
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
                    <img src="Content/icon.png"  class="middle-bot-footer-logo"/>
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
