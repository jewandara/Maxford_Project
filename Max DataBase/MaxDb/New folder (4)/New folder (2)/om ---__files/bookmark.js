var bsite_name=window.location.hostname;
var site_name="//"+bsite_name;

if(window['bkmrk_frameidd'] !=undefined)
  var bkmrk_iframeidd=bkmrk_frameidd;
else
  var bkmrk_iframeidd="cmnbkmrk";


document.write("<iframe id='"+bkmrk_iframeidd+"' scrolling='no' height='"+iframeheight+"' class='bkmrkclass' width ='"+iframewidth+"' frameborder='0'  src='about:blank' style='"+iframestyle+"' allowTransparency='true'></iframe>");
var myiframe = document.getElementById(bkmrk_iframeidd).contentWindow.document; 
var stylecode= '<link href='+site_name+'/commoncode/bookmarks/css.css media="screen" rel="stylesheet" type="text/css">';
if(bkmrksize=="large")
{
    var height=38;
    var width=34;
    var imgsrc=site_name+'/commoncode/bookmarks/large.png';

   var sbtncode="<style>.facebook_button{background: url("+imgsrc+") no-repeat top left; float:left;background-position: 0 0; border:none;} .twitter_button{background: url("+imgsrc+") no-repeat top left;  float:left; margin-left:"+bkmrkpadding+"px; background-position: -234px 0; border:none;}.stumble_button{background: url("+imgsrc+") no-repeat top left; float:left; margin-left:"+bkmrkpadding+"px; background-position: -195px 0;border:none; } .redit_button{background: url("+imgsrc+") no-repeat top left; float:left; margin-left:"+bkmrkpadding+"px; background-position: -156px 0; border:none;} .gplus_button{background: url("+imgsrc+") no-repeat top left; float:left; margin-left:"+bkmrkpadding+"px; background-position: -39px 0;border:none; } .link_button{background: url("+imgsrc+") no-repeat top left; float:left; margin-left:"+bkmrkpadding+"px;background-position: -78px 0; border:none; } .pin_button{background: url("+imgsrc+") no-repeat top left; float:left; margin-left:"+bkmrkpadding+"px; background-position: -117px 0; border:none;} button{height:"+height+"px;width:"+width+"px; }		</style>";
}
else if(bkmrksize=="small")
{
    var height=25;
    var width=22;
    var imgsrc=site_name+'/commoncode/bookmarks/small.png';

   var sbtncode="<style>.facebook_button{background: url("+imgsrc+") no-repeat top left; float:left;background-position: 0 0; border:none;} .twitter_button{background: url("+imgsrc+") no-repeat top left;  float:left; margin-left:"+bkmrkpadding+"px; background-position: -162px 0; border:none;}.stumble_button{background: url("+imgsrc+") no-repeat top left; float:left; margin-left:"+bkmrkpadding+"px; background-position: -135px 0;border:none; } .redit_button{background: url("+imgsrc+") no-repeat top left; float:left; margin-left:"+bkmrkpadding+"px; background-position: -108px 0; border:none;} .gplus_button{background: url("+imgsrc+") no-repeat top left; float:left; margin-left:"+bkmrkpadding+"px; background-position: -27px 0;border:none; } .link_button{background: url("+imgsrc+") no-repeat top left; float:left; margin-left:"+bkmrkpadding+"px;background-position: -54px 0; border:none; } .pin_button{background: url("+imgsrc+") no-repeat top left; float:left; margin-left:"+bkmrkpadding+"px; background-position: -81px 0; border:none;} button{height:"+height+"px;width:"+width+"px; }		</style>";
}
else
{
var height=30;
    var width=27;
    var imgsrc=site_name+'/commoncode/bookmarks/medium.png';

   var sbtncode="<style>.facebook_button{background: url("+imgsrc+") no-repeat top left; float:left;background-position: 0 0; border:none;} .twitter_button{background: url("+imgsrc+") no-repeat top left;  float:left; margin-left:"+bkmrkpadding+"px; background-position: -192px 0; border:none;}.stumble_button{background: url("+imgsrc+") no-repeat top left; float:left; margin-left:"+bkmrkpadding+"px; background-position: -160px 0;border:none; } .redit_button{background: url("+imgsrc+") no-repeat top left; float:left; margin-left:"+bkmrkpadding+"px; background-position: -128px 0; border:none;} .gplus_button{background: url("+imgsrc+") no-repeat top left; float:left; margin-left:"+bkmrkpadding+"px; background-position: -32px 0;border:none; } .link_button{background: url("+imgsrc+") no-repeat top left; float:left; margin-left:"+bkmrkpadding+"px;background-position: -64px 0; border:none; } .pin_button{background: url("+imgsrc+") no-repeat top left; float:left; margin-left:"+bkmrkpadding+"px; background-position: -96px 0; border:none;} button{height:"+height+"px;width:"+width+"px; }		</style>";
    
}
var facebook=bkmrkname.indexOf("f");
var twitter=bkmrkname.indexOf("t");
var gplus=bkmrkname.indexOf("g");
var pin=bkmrkname.indexOf("p");
var link=bkmrkname.indexOf("l");
var stumble=bkmrkname.indexOf("s");
var redit=bkmrkname.indexOf("r");
var bk_htmlcode="";
if(facebook!=-1)
  bk_htmlcode=bk_htmlcode+"<button type='button' title='Facebook' class='facebook_button' onClick=\"gotobkmrk('f')\" ></button>";
if(twitter!=-1)
   bk_htmlcode=bk_htmlcode+"<button type='button' title='Twitter' class='twitter_button' onClick=\"gotobkmrk('t')\" ></button>";
if(gplus!=-1)
   bk_htmlcode=bk_htmlcode+"<button type='button' title='g+' class='gplus_button' onClick=\"gotobkmrk('g')\" ></button>";
   
if(link!=-1)
   bk_htmlcode=bk_htmlcode+"<button type='button'  title='Linked Inn' class='link_button' onClick=\"gotobkmrk('l')\" ></button>";
   
 if(pin!=-1)
   bk_htmlcode=bk_htmlcode+"<button type='button'  title='Pinit' class='pin_button' onClick=\"gotobkmrk('p')\" ></button>";
   
   if(stumble!=-1)
   bk_htmlcode=bk_htmlcode+"<button type='button'  title='Stumble Upon' class='stumble_button' onClick=\"gotobkmrk('s')\" ></button>";

if(redit!=-1)
   bk_htmlcode=bk_htmlcode+"<button type='button'  title='redit' class='redit_button' onClick=\"gotobkmrk('r')\" ></button>";
   
   
var java_script_code='<script type="text/javascript">function gotobkmrk(bkname)	{      var bkmrkurl=encodeURIComponent(window.parent.bkmrkurl);          var bkmrktitle=encodeURIComponent(window.parent.bkmrktitle);bkmrktitle=bkmrktitle.replace("amp%3B","");          if(bkname=="p")             var bkmrkmedia=window.parent.bkmrkmedia; 	  var golinkk=""; 	  if(bkname=="f") 	    golinkk="https://www.facebook.com/sharer.php?u="+bkmrkurl+"&t="+bkmrktitle; 	  else if(bkname=="t")             golinkk="http://twitter.com/home?status="+bkmrkurl+" "+bkmrktitle; 	  else if(bkname=="g")             golinkk="https://plus.google.com/share?url="+bkmrkurl+"&feature=share"; 	  else if(bkname=="l")             golinkk="http://www.linkedin.com/shareArticle?url="+bkmrkurl+"&feature=share&title="+bkmrktitle+"&summary="+bkmrktitle; 	  else if(bkname=="p")             golinkk="http://pinterest.com/pin/create/button/?url="+bkmrkurl+"&media="+bkmrkmedia+"&description="+bkmrktitle; 	  else if(bkname=="s")             golinkk="http://www.stumbleupon.com/badge/?url="+bkmrkurl+"&title="+bkmrktitle; 	  else if(bkname=="r")             golinkk="http://reddit.com/submit?resubmit=true&url="+bkmrkurl+"&title="+bkmrktitle; 	 	 window.open(golinkk,\'mywindow\',\'width=800,height=500,left=0,top=0,screenX=0,screenY=100\'); 	     	     	     	}	   	   <\/script>'   
    
var ifrm_write_code=stylecode+"\n<body style='background:transparent'>"+sbtncode+"\n"+java_script_code+"\n"+bk_htmlcode+"\n</body>";

myiframe.open();
myiframe.write(ifrm_write_code); 
myiframe.close(); 
