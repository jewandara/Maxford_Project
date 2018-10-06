<%@ Page Title="" Language="C#" MasterPageFile="~/maxSite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
     Maxford Higher Educational Institute 
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Max_Data/Max_CSS/mainStyle.css" rel="stylesheet" type="text/css" />
    <link href="Max_Data/Max_CSS/slideStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="slide" runat="server">
<!-- SLIDES -->
<div style="position: relative;" class="carousel" id="hp_carousel" onmouseover="bigImg(this);" onmouseout="normalImg(this);">
<div id="slide-carousel-controls" class="carousel-controls">
<a href="#" class="previous"></a>
<a href="#" class="pause"></a>
<a href="#" class="next"></a>
</div>


<div style="z-index: 2; position: absolute; top: 0px; left: -792.5px; opacity: 0; display: none;" class="slide-wrap carousel-item">

    <div class="slide-caption  comp-d">
        <h2><a href="#">Giant leap against diabetes</a></h2>
        <div class="slide-callout">
            <p><a href="#">Ability to produce embryonic stem cells will allow researchers to push faster toward cure</a></p>	
            <p class="more"><a href="#">Read More…</a></p>
        </div>
    </div>

    <div class="carousel-image">
    <a href="#">
        <a style="opacity: 0.2;" class="prev-image" href="#">
            <img class="" src="Max_Data/Max_LocalResources/Max_SlideShow/maxford_slide_001.jpg" alt="" title="Maxford’s Mexican connections" height="348" width="522">
        </a>
        <img class="main-image" src="Max_Data/Max_LocalResources/Max_SlideShow/maxford_slide_002.jpg" alt="" title="" height="348" width="522">
        <a style="opacity: 0.2;" class="next-image" href="#">
            <img class="" src="Max_Data/Max_LocalResources/Max_SlideShow/maxford_slide_003.jpg" alt="" title="Q&amp;A with departing Dean Ellwood" height="348" width="522">
        </a>
    </a>
    </div>

</div>

<div style="display: block; z-index: 3; opacity: 1; position: relative; top: 0px; left: 0px;" class="slide-wrap carousel-item">
<div class="slide-caption  comp-c">
<h2><a href="#">Q&amp;A with departing Dean Ellwood</a></h2>	
<div class="slide-callout">
<p>
<a href="#">He relates how Kennedy School changed during his tenure, and where it’s going now</a></p>		
<p class="more">
<a href="#">Read More…</a></p>
</div>
</div>	
<div class="carousel-image">
<a href="#">
<a style="opacity: 0.2;" class="prev-image" href="#">
<img class="" src="Max_Data/Max_LocalResources/Max_SlideShow/maxford_slide_002.jpg" alt="" title="" height="348" width="522"></a>
<img class="main-image" src="Max_Data/Max_LocalResources/Max_SlideShow/maxford_slide_003.jpg" alt="Q&amp;A with departing Dean Ellwood" title="Q&amp;A with departing Dean Ellwood" height="348" width="522">
<a style="opacity: 0.2;" class="next-image" href="#">
<img class="" src="Max_Data/Max_LocalResources/Max_SlideShow/maxford_slide_004.jpg" alt="A wellspring of hope" title="A wellspring of hope" height="348" width="522"></a></a>
</div>
</div>

<div style="display: none; z-index: 1; opacity: 0; position: absolute; top: 0px; left: -792.5px;" class="slide-wrap carousel-item">
<div class="slide-caption  comp-a">
<h2><a href="#">A wellspring of hope</a></h2>
<div class="slide-callout">
<p><a href="#">Maxford students help restore clean water to Dominican mountain town</a></p>
<p class="more">
<a href="#">Read More…</a></p>
</div>
</div>
<div class="carousel-image">
<a href="#">
<a style="opacity: 0.2;" class="prev-image" href="#">
<img class="" src="Max_Data/Max_LocalResources/Max_SlideShow/maxford_slide_003.jpg" alt="Q&amp;A with departing Dean Ellwood" title="Q&amp;A with departing Dean Ellwood" height="348" width="522"></a>
<img class="main-image" src="Max_Data/Max_LocalResources/Max_SlideShow/maxford_slide_004.jpg" alt="A wellspring of hope" title="A wellspring of hope" height="348" width="522">
<a style="opacity: 0.2;" class="next-image" href="#">
<img class="" src="Max_Data/Max_LocalResources/Max_SlideShow/maxford_slide_005.jpg" alt="A healthy move" title="A healthy move" height="348" width="522"></a></a>
</div>
</div>

<div style="display: none; z-index: 1; opacity: 0; position: absolute; top: 0px; left: -792.5px;" class="slide-wrap carousel-item">
<div class="slide-caption  comp-e">
<h2><a href="#">A healthy move</a></h2>
<div class="slide-callout">
<p><a href="#">Resident physicians’ training not compromised by shortened shifts</a></p>
<p class="more">
<a href="#">Read More…</a></p>
</div>
</div>
<div class="carousel-image">
<a href="#">
<a style="opacity: 0.2;" class="prev-image" href="#">
<img class="" src="Max_Data/Max_LocalResources/Max_SlideShow/maxford_slide_004.jpg" alt="A wellspring of hope" title="A wellspring of hope" height="348" width="522"></a>
<img class="main-image" src="Max_Data/Max_LocalResources/Max_SlideShow/maxford_slide_005.jpg" alt="A healthy move" title="A healthy move" height="348" width="522">
<a style="opacity: 0.2;" class="next-image" href="#">
<img class="" src="Max_Data/Max_LocalResources/Max_SlideShow/maxford_slide_006.jpg" alt="Java in the genes" title="Java in the genes" height="348" width="522"></a></a>
</div>
</div>

<div style="display: none; z-index: 1; opacity: 0; position: absolute; top: 0px; left: -792.5px;" class="slide-wrap carousel-item">
<div class="slide-caption  comp-g">
<h2><a href="#">Java in the genes</a></h2>
<div class="slide-callout">
<p><a href="#">Insight on effects of coffee consumption in consortium’s findings</a></p>
<p class="more">
<a href="#">Read More…</a></p>
</div>
</div>
<div class="carousel-image">
<a href="#">
<a style="opacity: 0.2;" class="prev-image" href="#">
<img class="" src="Max_Data/Max_LocalResources/Max_SlideShow/maxford_slide_005.jpg" alt="A healthy move" title="A healthy move" height="348" width="522"></a>
<img class="main-image" src="Max_Data/Max_LocalResources/Max_SlideShow/maxford_slide_006.jpg" alt="Java in the genes" title="Java in the genes" height="348" width="522">
<a style="opacity: 0.2;" class="next-image" href="#">
<img class="" src="Max_Data/Max_LocalResources/Max_SlideShow/maxford_slide_007.jpg" alt="Maxford’s Mexican connections" title="Maxford’s Mexican connections" height="348" width="522"></a></a>
</div>
</div>

<div style="display: none; z-index: 1; opacity: 0; position: absolute; top: 0px; left: -792.5px;" class="slide-wrap carousel-item">
<div class="slide-caption  comp-f">
<h2><a href="#">Maxford’s Mexican connections</a></h2>
<div class="slide-callout">
<p><a href="#">Intertwined programs, involved people make distance drop away</a></p>
<p class="more">
<a href="#">Read More…</a></p>
</div>
</div>
<div class="carousel-image">
<a href="#">
<a style="opacity: 0.2;" class="prev-image" href="#">
<img class="" src="Max_Data/Max_LocalResources/Max_SlideShow/maxford_slide_006.jpg" alt="Java in the genes" title="Java in the genes" height="348" width="522"></a>
<img class="main-image" src="Max_Data/Max_LocalResources/Max_SlideShow/maxford_slide_007.jpg" alt="Maxford’s Mexican connections" title="Maxford’s Mexican connections" height="348" width="522">
<a style="opacity: 0.2;" class="next-image" href="#">
<img class="" src="Max_Data/Max_LocalResources/Max_SlideShow/maxford_slide_008.jpg" alt="" title="" height="348" width="522"></a></a>
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
<br />
<br />

    <script src="Max_Data/Max_JavaScript/jquery.js" type="text/javascript"></script>
    <script src="Max_Data/Max_JavaScript/checkuseragent.js" type="text/javascript"></script>
    <script src="Max_Data/Max_JavaScript/jquery_002.js" type="text/javascript"></script>
    <script src="Max_Data/Max_JavaScript/functions.js" type="text/javascript"></script>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
<!-- MAIN PAGE BODY -->
<div class="primary">
<div class="event-wrap" id="skip" role="main">


<!-- PAGE TOP EVENT TABS -->
<div class="streamer">

<!-- PAGE EVENT SIDE TILE -->
<div class="heading">
<h2>Featured <strong>Events</strong></h2>
    <p class="more"><a href="#">More&nbsp;events</a></p>
</div>
<!-- PAGE EVENT SIDE TILE -->
<ul class="prime listing">
  <div class="view view-hedu-homepage-events view-id-hedu_homepage_events view-display-id-default view-dom-id-466bd28a9dddd06f6038eff078da7851">
    <div class="view-content">
    <li>
        <h3><a href="#">The Importants Of Learning English</a></h3>
        <p class="data">17,October 2014, 9:00pm</p>
    </li>
        <li><h3><a href="#">Maxford Higher Educational Institute</a></h3>
        <p class="data">17,October 2014, 9:00pm</p>
    </li>
    <li>
        <h3><a href="#">Annual Debates at Maxford Debate Society</a></h3>
        <p class="data">17,October 2014, 9:00pm</p>
    </li>
    <li>
        <h3><a href="#">Ashirwada Puujawa</a></h3>
        <p class="data">17,October 2014, 9:00pm</p>
    </li>
  </div>
</div>
</ul>

</div>



<!-- PAGE MIDDLE MENU -->
<div class="filter-wrap" id="filter-drop">

<div class="filter">
<strong class="filter-all"><span>LOGIN</span></strong>
</div>
<!-- 
<div class="filter">
<strong class="filter-all"><span>PAGE TWO</span></strong>
<ul>
<li class="filter-tab"><a href="#">Sub &amp; Page1</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page2</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page3</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page4</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page5</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page6</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page7</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page8</a></li>
</ul>
</div>
<div class="filter">
<strong class="filter-all"><span>PAGE TWO</span></strong>
<ul>
<li class="filter-tab"><a href="#">Sub &amp; Page1</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page2</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page3</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page4</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page5</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page6</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page7</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page8</a></li>
</ul>
</div>
<div class="filter">
<strong class="filter-all"><span>PAGE TWO</span></strong>
<ul>
<li class="filter-tab"><a href="#">Sub &amp; Page1</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page2</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page3</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page4</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page5</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page6</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page7</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page8</a></li>
</ul>
</div>
<div class="filter">
<strong class="filter-all"><span>PAGE TWO</span></strong>
<ul>
<li class="filter-tab"><a href="#">Sub &amp; Page1</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page2</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page3</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page4</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page5</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page6</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page7</a></li>
<li class="filter-tab"><a href="#">Sub &amp; Page8</a></li>
</ul>
</div>
-->



</div>



<!-- PAGE BOTTOM EVENT VIEW DETAILS TAB -->
<div class="expandable">
<div id="home_content">


<ul class="listing split-b">

<li class="first item-p1">
    <strong class="channel-more"><a href="#">Class Room Debates</a></strong>
    <h3><a href="#">Class Room Debates</a></h3>
    <img src="Max_Data/Max_LocalResources/Max_Event/class_room_debates.JPG" alt="class room events"/>
    <div  class="item-data-read-more">
        <p class="item-data-container">Class room debates</p>​
        <p><a href="#" class="more">Read&nbsp;More</a></p>
        <p class="item-data">17 October 2014</p>
    </div>
</li>

<li class="item-p2">
    <strong class="channel-more"><a href="#" >Our Little Footprints</a></strong>
    <div>
        <video controls>
            <source src="Max_Data/Max_Video/Maxford%20class%20mates.MP4" type="video/mp4"/>
        </video>
    </div>
    <h3><a href="#"><span class="title">Speach</span></a></h3>
    <div  class="item-data-read-more">
        <p class="item-data-container">About Maxford</p>​
        <p><a href="#" class="more">Read&nbsp;More</a></p>
        <p class="item-data">17 October 2014</p>
    </div>
</li>

<li class="item-p3">
    <strong class="channel-more"><a href="#" >Proposed Elevation of The Building</a></strong>
    <h3><a href="#" >Elevation Of The Building</a></h3>
    <p><img src="Max_Data/Max_LocalResources/Max_Event/buildding.jpg" alt="elevation of the building"></p>
    <div  class="item-data-read-more">
        <p class="item-data-container">Class room debates</p>​
        <p><a href="#" class="more">Read&nbsp;More</a></p>
        <p class="item-data">17 October 2014</p>
    </div>
</li>

</ul>

<ul class="listing split-b">

<li class="first item-p7">
    <strong class="channel-more"><a href="#">Our Opening</a></strong>
    <h3><a href="#">Opening Ceremony Of Maxford</a></h3>
    <p><img src="Max_Data/Max_LocalResources/Max_Event/opening.JPG" alt="Opening Ceremony Of Maxford"></p>
    <div  class="item-data-read-more">
        <p class="item-data-container">Opening Ceremony Of Maxford</p>​
        <p><a href="#" class="more">Read&nbsp;More</a></p>
        <p class="item-data">17 October 2014</p>
    </div>
</li>

<li class="item-p8">
    <strong class="channel-more"><a href="#" >Our Mission</a></strong>
    <div>
        <h3><a href="#">Maxford Mission</a></h3>
        <br />
        <p style="padding: 4px 8px; color:Black;" >Maxford Higher Educational Institute adheres to the purposes of providing reliable learning opportunities at the highest level of excellence for the students to explore their capabilities and interests in order to develop their full intellectual and human potential in a highly disciplined environment.</p>
        <p>Maxford Higher Educational Institute</p>
    </div>
    <div  class="item-data-read-more">
        <p class="item-data-container">Our Mission</p>​
        <p><a href="#" class="more">Read&nbsp;More</a></p>
        <p class="item-data">17 October 2014</p>
    </div>
</li>

<li class="item-p9">
    <strong class="channel-more"><a href="#">Maxford Debate</a></strong>
    <h3><a href="#" >Maxford Debate Society</a></h3>
    <p><img src="Max_Data/Max_LocalResources/Max_Debate/logo.jpg" alt="logo"></p>
    <div  class="item-data-read-more">
        <p class="item-data-container">Maxford Debate</p>​
        <p><a href="#" class="more">Read&nbsp;More</a></p>
        <p class="item-data">17 October 2014</p>
    </div>
</li>

</ul>


</div>
</div>




</div>
</div>
</asp:Content>


<asp:Content ID="Content5" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
