<%@ Page Title="Maxford Higher Educational Institution" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD._Default" %>

<asp:Content runat="server" ID="Content2" ContentPlaceHolderID="HeadContent">
    <link href="Content/Slide/engine1/style.css" rel="stylesheet" />
    <script src="Content/Slide/engine1/jquery.js"></script>
    <link href="SLIDE/Css/screen.css" rel="stylesheet" />
    <script src="Store/Videos/v1/swfobject.js"></script>
    <script type="text/javascript">
        swfobject.registerObject("csSWF", "9.0.115", "expressInstall.swf");
    </script>
    <style type="text/css">
        #noUpdate
        {
            margin: 0 auto;
            font-family:Arial, Helvetica, sans-serif;
            font-size: x-small;
            color: #cccccc;
            text-align: left;
            width: 210px; 
            height: 200px;	
            padding: 40px;
        }
    </style>
</asp:Content>


<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="maxContentPlaceHolderSlideBody">
    <div style="position: relative;" class="carousel" id="hp_carousel" onmouseover="bigImg(this);" onmouseout="normalImg(this);">
        <div id="slide-carousel-controls" class="carousel-controls"><a href="#" class="pause"></a></div>
        <div style="z-index: 2; position: absolute; top: 0px; left: -792.5px; opacity: 0; display: none;" class="slide-wrap carousel-item">
            <div class="slide-caption  comp-d">
                <h2><a><asp:Label ID="SH1" runat="server" Text="Label"></asp:Label></a></h2>
                <div class="slide-callout">
                    <p><a><asp:Label ID="ST1" runat="server" Text="Label"></asp:Label></a></p>	
                    <p class="more"><asp:Label ID="SL1" runat="server" Text="Label"></asp:Label></p>
                </div>
            </div>
            <div class="carousel-image">
                <a href="#"><asp:Label ID="SI1" runat="server" Text="Label"></asp:Label></a>
            </div>
        </div>
        <div style="display: block; z-index: 3; opacity: 1; position: relative; top: 0px; left: 0px;" class="slide-wrap carousel-item">
            <div class="slide-caption  comp-c">
                <h2><a><asp:Label ID="SH2" runat="server" Text="Label"></asp:Label></a></h2>
                <div class="slide-callout">
                    <p><a><asp:Label ID="ST2" runat="server" Text="Label"></asp:Label></a></p>	
                    <p class="more"><asp:Label ID="SL2" runat="server" Text="Label"></asp:Label></p>
                </div>
            </div>	
            <div class="carousel-image">
                <a href="#"><asp:Label ID="SI2" runat="server" Text="Label"></asp:Label></a>
            </div>
        </div>
        <div style="display: none; z-index: 1; opacity: 0; position: absolute; top: 0px; left: -792.5px;" class="slide-wrap carousel-item">
            <div class="slide-caption  comp-a">
                <h2><a><asp:Label ID="SH3" runat="server" Text="Label"></asp:Label></a></h2>
                <div class="slide-callout">
                    <p><a><asp:Label ID="ST3" runat="server" Text="Label"></asp:Label></a></p>	
                    <p class="more"><asp:Label ID="SL3" runat="server" Text="Label"></asp:Label></p>
                </div>
            </div>
            <div class="carousel-image">
                <a href="#"><asp:Label ID="SI3" runat="server" Text="Label"></asp:Label></a>
            </div>
        </div>
        <div style="display: none; z-index: 1; opacity: 0; position: absolute; top: 0px; left: -792.5px;" class="slide-wrap carousel-item">
            <div class="slide-caption  comp-e">
                <h2><a><asp:Label ID="SH4" runat="server" Text="Label"></asp:Label></a></h2>
                <div class="slide-callout">
                    <p><a><asp:Label ID="ST4" runat="server" Text="Label"></asp:Label></a></p>	
                    <p class="more"><asp:Label ID="SL4" runat="server" Text="Label"></asp:Label></p>
                </div>
            </div>
            <div class="carousel-image">
                <a href="#"><asp:Label ID="SI4" runat="server" Text="Label"></asp:Label></a>
            </div>
        </div>
        <div style="display: none; z-index: 1; opacity: 0; position: absolute; top: 0px; left: -792.5px;" class="slide-wrap carousel-item">
            <div class="slide-caption  comp-g">
                <h2><a><asp:Label ID="SH5" runat="server" Text="Label"></asp:Label></a></h2>
                <div class="slide-callout">
                    <p><a><asp:Label ID="ST5" runat="server" Text="Label"></asp:Label></a></p>	
                    <p class="more"><asp:Label ID="SL5" runat="server" Text="Label"></asp:Label></p>
                </div>
            </div>
            <div class="carousel-image">
                <a href="#"><asp:Label ID="SI5" runat="server" Text="Label"></asp:Label></a>
            </div>
        </div>
        <div style="display: none; z-index: 1; opacity: 0; position: absolute; top: 0px; left: -792.5px;" class="slide-wrap carousel-item">
            <div class="slide-caption  comp-f">
                <h2><a><asp:Label ID="SH6" runat="server" Text="Label"></asp:Label></a></h2>
                <div class="slide-callout">
                    <p><a><asp:Label ID="ST6" runat="server" Text="Label"></asp:Label></a></p>	
                    <p class="more"><asp:Label ID="SL6" runat="server" Text="Label"></asp:Label></p>
                </div>
            </div>
            <div class="carousel-image">
                <a href="#"><asp:Label ID="SI6" runat="server" Text="Label"></asp:Label></a>
            </div>
        </div>
        <script>
            function bigImg(x) {
                document.getElementById("slide-carousel-controls").style.visibility = "visible";
            }
            function normalImg(x) {
                document.getElementById("slide-carousel-controls").style.visibility = "hidden";
            }
        </script>
    </div>
	<script type="text/javascript" src="SLIDE/Jscript/jquery.js"></script>
    <script type="text/javascript" src="SLIDE/Jscript/checkuseragent.js"></script>
	<script type="text/javascript" src="SLIDE/Jscript/jquery_002.js"></script>
    <script type="text/javascript" src="SLIDE/Jscript/functions.js"></script>
<%--	
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
--%>
</asp:Content>


<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <div class="maxford-body-main">
        <section class="featured">
            <div class="content-wrapper">
                <asp:Label ID="LabelHeader" runat="server" Text="Label"></asp:Label>
            </div>
        </section>
        <section class="featured">
            <div class="content-wrapper">
                <div style="margin-top:-40px;">

                    <div class="wa-content"><h1><asp:Label ID="EventTitle" runat="server" Text=""></asp:Label></h1></div>
                      
                    <div class="wa-content wa-content-4up">
                        <div class="wa-spacer wa-spacer-2down">
                           <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="Object1">
                                <param name="movie" value="Store/Videos/v2/Intro_controller.swf" />
                                <param name="quality" value="best" />
                                <param name="bgcolor" value="#1a1a1a" />
                                <param name="allowfullscreen" value="true" />
                                <param name="scale" value="showall" />
                                <param name="allowscriptaccess" value="always" />
                                <param name="flashvars" value="autostart=false&thumb=Store/Videos/v2/FirstFrame.png&thumbscale=45&color=0x000000,0x000000" />
                                <object type="application/x-shockwave-flash" data="Store/Videos/v2/Intro_controller.swf" width="470" height="278" >
                                    <param name="quality" value="best" />
                                    <param name="bgcolor" value="#1a1a1a" />
                                    <param name="allowfullscreen" value="true" />
                                    <param name="scale" value="showall" />
                                    <param name="allowscriptaccess" value="always" />
                                    <param name="flashvars" value="autostart=false&thumb=Store/Videos/v2/FirstFrame.png&thumbscale=45&color=0x000000,0x000000" />
                                </object>
                            </object>
                        </div>
                        <div class="wa-spacer wa-spacer-2down">
                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"  id="csSWF">
                                <param name="movie" value="Store/Videos/v1/DebateTeam_controller.swf" />
                                <param name="quality" value="best" />
                                <param name="bgcolor" value="#1a1a1a" />
                                <param name="allowfullscreen" value="true" />
                                <param name="scale" value="showall" />
                                <param name="allowscriptaccess" value="always" />
                                <param name="flashvars" value="autostart=false&thumb=Store/Videos/v1/FirstFrame.png&thumbscale=45&color=0x000000,0x000000" />
                                <object type="application/x-shockwave-flash" data="Store/Videos/v1/DebateTeam_controller.swf" width="470" height="278" >
                                    <param name="quality" value="best" />
                                    <param name="bgcolor" value="#1a1a1a" />
                                    <param name="allowfullscreen" value="true" />
                                    <param name="scale" value="showall" />
                                    <param name="allowscriptaccess" value="always" />
                                    <param name="flashvars" value="autostart=false&thumb=Store/Videos/v1/FirstFrame.png&thumbscale=45&color=0x000000,0x000000" />
                                </object>
                            </object>
                        </div>
                    </div>

                    <asp:Label ID="EventBody" runat="server" Text=""></asp:Label><br /><br />

                    <div class="wa-content wa-content-4up">
                        <div class="wa-spacer wa-spacer-2down">
                            <h2>Maxford Classes</h2>
                            <p> A class that teaches students about the English language. During the early years, English is a very useful, important, and most of all fun class.
                         By middle school, however, English class becomes a redundant class where students are taught the exact same things (basic grammar and punctuation,
                         paragraph structuring, etc) over and over again.</p>
                            <p><a href="#" class="wa-arrowLink wa-arrowLink-blue" >Find More . . . </a></p>
                        </div>
                        <div class="wa-spacer wa-spacer-2down">
                            <h2>Maxford Subjects</h2>
                            <p>A class that teaches students about the English language. During the early years, English is a very useful, important, and most of all fun class.
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
                   <h3><asp:Label ID="FooterTitle" runat="server" Text="Label"></asp:Label></h3>
                    <ol class="round"><asp:Label ID="FooterBody" runat="server" Text="Label"></asp:Label></ol>
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
