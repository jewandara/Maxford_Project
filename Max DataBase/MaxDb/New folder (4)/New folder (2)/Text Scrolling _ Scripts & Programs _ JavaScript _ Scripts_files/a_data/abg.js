(function(){var g,h=this,aa=function(a,c){var b=a.split("."),d=h;b[0]in d||!d.execScript||d.execScript("var "+b[0]);for(var e;b.length&&(e=b.shift());)b.length||void 0===c?d=d[e]?d[e]:d[e]={}:d[e]=c},ba=function(a){a.T=function(){return a.zb?a.zb:a.zb=new a}},k=function(a){var c=typeof a;if("object"==c)if(a){if(a instanceof Array)return"array";if(a instanceof Object)return c;var b=Object.prototype.toString.call(a);if("[object Window]"==b)return"object";if("[object Array]"==b||"number"==typeof a.length&&"undefined"!=
typeof a.splice&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("splice"))return"array";if("[object Function]"==b||"undefined"!=typeof a.call&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("call"))return"function"}else return"null";else if("function"==c&&"undefined"==typeof a.call)return"object";return c},da=function(a,c,b){return a.call.apply(a.bind,arguments)},ea=function(a,c,b){if(!a)throw Error();if(2<arguments.length){var d=Array.prototype.slice.call(arguments,
2);return function(){var b=Array.prototype.slice.call(arguments);Array.prototype.unshift.apply(b,d);return a.apply(c,b)}}return function(){return a.apply(c,arguments)}},p=function(a,c,b){p=Function.prototype.bind&&-1!=Function.prototype.bind.toString().indexOf("native code")?da:ea;return p.apply(null,arguments)},fa=Date.now||function(){return+new Date},s=function(a){var c=q;function b(){}b.prototype=c.prototype;a.dc=c.prototype;a.prototype=new b;a.prototype.constructor=a;a.cc=function(a,b,f){return c.prototype[b].apply(a,
Array.prototype.slice.call(arguments,2))}};var ja=String.prototype.trim?function(a){return a.trim()}:function(a){return a.replace(/^[\s\xa0]+|[\s\xa0]+$/g,"")},sa=function(a){if(!ka.test(a))return a;-1!=a.indexOf("&")&&(a=a.replace(la,"&amp;"));-1!=a.indexOf("<")&&(a=a.replace(ma,"&lt;"));-1!=a.indexOf(">")&&(a=a.replace(na,"&gt;"));-1!=a.indexOf('"')&&(a=a.replace(oa,"&quot;"));-1!=a.indexOf("'")&&(a=a.replace(pa,"&#39;"));-1!=a.indexOf("\x00")&&(a=a.replace(qa,"&#0;"));return a},la=/&/g,ma=/</g,na=/>/g,oa=/"/g,pa=/'/g,qa=/\x00/g,ka=/[\x00&<>"']/,
ta=function(a,c){return a<c?-1:a>c?1:0},ua=function(a){return String(a).replace(/\-([a-z])/g,function(a,b){return b.toUpperCase()})},va=function(a){var c="\\s";return a.replace(new RegExp("(^"+(c?"|["+c+"]+":"")+")([a-z])","g"),function(a,c,e){return c+e.toUpperCase()})};var t=function(a,c,b,d){b=p(d,b);a.addEventListener?a.addEventListener(c,b,!1):a.attachEvent&&a.attachEvent("on"+c,b)};var v=function(a){var c=arguments.length;if(1==c&&"array"==k(arguments[0]))return v.apply(null,arguments[0]);for(var b={},d=0;d<c;d++)b[arguments[d]]=!0;return b};var wa=function(){this.u={}};ba(wa);var xa=function(a,c){var b=wa.T();return void 0!==b.u[a]?"true"===b.u[a]||!0===b.u[a]:c};var w;i:{var ya=h.navigator;if(ya){var Ba=ya.userAgent;if(Ba){w=Ba;break i}}w=""}var x=function(a){return-1!=w.indexOf(a)};var Ca=x("Opera")||x("OPR"),y=x("Trident")||x("MSIE"),A=x("Gecko")&&-1==w.toLowerCase().indexOf("webkit")&&!(x("Trident")||x("MSIE")),Da=-1!=w.toLowerCase().indexOf("webkit"),Ea=function(){var a=h.document;return a?a.documentMode:void 0},Fa=function(){var a="",c;if(Ca&&h.opera)return a=h.opera.version,"function"==k(a)?a():a;A?c=/rv\:([^\);]+)(\)|;)/:y?c=/\b(?:MSIE|rv)[: ]([^\);]+)(\)|;)/:Da&&(c=/WebKit\/(\S+)/);c&&(a=(a=c.exec(w))?a[1]:"");return y&&(c=Ea(),c>parseFloat(a))?String(c):a}(),Ga={},Ha=
function(a){if(!Ga[a]){for(var c=0,b=ja(String(Fa)).split("."),d=ja(String(a)).split("."),e=Math.max(b.length,d.length),f=0;0==c&&f<e;f++){var n=b[f]||"",E=d[f]||"",za=RegExp("(\\d*)(\\D*)","g"),Aa=RegExp("(\\d*)(\\D*)","g");do{var F=za.exec(n)||["","",""],G=Aa.exec(E)||["","",""];if(0==F[0].length&&0==G[0].length)break;c=ta(0==F[1].length?0:parseInt(F[1],10),0==G[1].length?0:parseInt(G[1],10))||ta(0==F[2].length,0==G[2].length)||ta(F[2],G[2])}while(0==c)}Ga[a]=0<=c}},Ia=h.document,Ja=Ia&&y?Ea()||
("CSS1Compat"==Ia.compatMode?parseInt(Fa,10):5):void 0;var Ka;if(!(Ka=!A&&!y)){var La;if(La=y)La=y&&9<=Ja;Ka=La}Ka||A&&Ha("1.9.1");y&&Ha("9");var B=function(a){var c=document;return"string"==typeof a?c.getElementById(a):a};y&&Ha(8);v("area base br col command embed hr img input keygen link meta param source track wbr".split(" "));var Na=function(){this.Zb="";this.Yb=Ma},Ma={};var C=function(){this.Ia="";this.Xb=Oa};C.prototype.wb=function(){return 1};var Oa={};var D=function(){this.Ia="";this.Wb=Pa;this.$b=null};D.prototype.wb=function(){return this.$b};v("action","cite","data","formaction","href","manifest","poster","src");v("link","script","style");var Pa={};var H={},Qa={},Ra={},Sa={},Ta={},q=function(){throw Error("Do not instantiate directly");};q.prototype.J=null;q.prototype.toString=function(){return this.content};var I=function(a,c,b){a.innerHTML=Ua(c(b||Va,void 0,void 0))},Ua=function(a){var c=typeof a;if(("object"!=c||null==a)&&"function"!=c)return String(a);if(a instanceof q){if(a.o===H)return a.content;if(a.o===Ta)return sa(a.content)}return"zSoyz"},Va={};var Wa=function(a){if(null!=a)switch(a.J){case 1:return 1;case -1:return-1;case 0:return 0}return null},J=function(){q.call(this)};s(J);J.prototype.o=H;var K=function(a){return null!=a&&a.o===H?a:a instanceof D?Xa(a instanceof D&&a.constructor===D&&a.Wb===Pa?a.Ia:"type_error:SafeHtml",a.wb()):Xa(sa(String(String(a))),Wa(a))},Ya=function(){q.call(this)};s(Ya);Ya.prototype.o=Qa;Ya.prototype.J=1;var Za=function(){q.call(this)};s(Za);Za.prototype.o=Ra;Za.prototype.J=1;var $a=function(){q.call(this)};
s($a);$a.prototype.o={};$a.prototype.J=1;var ab=function(){q.call(this)};s(ab);ab.prototype.o=Sa;ab.prototype.J=1;var Xa=function(a){function c(a){this.content=a}c.prototype=a.prototype;return function(a,d){var e=new c(String(a));void 0!==d&&(e.J=d);return e}}(J);(function(a){function c(a){this.content=a}c.prototype=a.prototype;return function(a,d){var e=String(a);if(!e)return"";e=new c(e);void 0!==d&&(e.J=d);return e}})(J);
var L=function(a){null!=a&&a.o===H?(a=String(a.content).replace(bb,"").replace(cb,"&lt;"),a=String(a).replace(db,eb)):a=sa(String(a));return a},ib=function(a){if(null==a)return" null ";if(null!=a&&a.o===Qa)return a.content;switch(typeof a){case "boolean":case "number":return" "+a+" ";default:return"'"+String(String(a)).replace(fb,gb)+"'"}},nb=function(a){null!=a&&a.o===Ra?a=String(a).replace(jb,kb):a instanceof C?(a=a instanceof C&&a.constructor===C&&a.Xb===Oa?a.Ia:"type_error:SafeUrl",a=String(a).replace(jb,
kb)):(a=String(a),a=lb.test(a)?a.replace(jb,kb):"#zSoyz");return a},M=function(a){null!=a&&a.o===Sa?a=a.content:null==a?a="":a instanceof Na?a=a instanceof Na&&a.constructor===Na&&a.Yb===Ma?a.Zb:"type_error:SafeStyle":(a=String(a),a=ob.test(a)?a:"zSoyz");return a},pb={"\x00":"&#0;","\t":"&#9;","\n":"&#10;","\x0B":"&#11;","\f":"&#12;","\r":"&#13;"," ":"&#32;",'"':"&quot;","&":"&amp;","'":"&#39;","-":"&#45;","/":"&#47;","<":"&lt;","=":"&#61;",">":"&gt;","`":"&#96;","\u0085":"&#133;","\u00a0":"&#160;",
"\u2028":"&#8232;","\u2029":"&#8233;"},eb=function(a){return pb[a]},qb={"\x00":"\\x00","\b":"\\x08","\t":"\\t","\n":"\\n","\x0B":"\\x0b","\f":"\\f","\r":"\\r",'"':"\\x22",$:"\\x24","&":"\\x26","'":"\\x27","(":"\\x28",")":"\\x29","*":"\\x2a","+":"\\x2b",",":"\\x2c","-":"\\x2d",".":"\\x2e","/":"\\/",":":"\\x3a","<":"\\x3c","=":"\\x3d",">":"\\x3e","?":"\\x3f","[":"\\x5b","\\":"\\\\","]":"\\x5d","^":"\\x5e","{":"\\x7b","|":"\\x7c","}":"\\x7d","\u0085":"\\x85","\u2028":"\\u2028","\u2029":"\\u2029"},gb=
function(a){return qb[a]},rb={"\x00":"%00","\u0001":"%01","\u0002":"%02","\u0003":"%03","\u0004":"%04","\u0005":"%05","\u0006":"%06","\u0007":"%07","\b":"%08","\t":"%09","\n":"%0A","\x0B":"%0B","\f":"%0C","\r":"%0D","\u000e":"%0E","\u000f":"%0F","\u0010":"%10","\u0011":"%11","\u0012":"%12","\u0013":"%13","\u0014":"%14","\u0015":"%15","\u0016":"%16","\u0017":"%17","\u0018":"%18","\u0019":"%19","\u001a":"%1A","\u001b":"%1B","\u001c":"%1C","\u001d":"%1D","\u001e":"%1E","\u001f":"%1F"," ":"%20",'"':"%22",
"'":"%27","(":"%28",")":"%29","<":"%3C",">":"%3E","\\":"%5C","{":"%7B","}":"%7D","\u007f":"%7F","\u0085":"%C2%85","\u00a0":"%C2%A0","\u2028":"%E2%80%A8","\u2029":"%E2%80%A9","\uff01":"%EF%BC%81","\uff03":"%EF%BC%83","\uff04":"%EF%BC%84","\uff06":"%EF%BC%86","\uff07":"%EF%BC%87","\uff08":"%EF%BC%88","\uff09":"%EF%BC%89","\uff0a":"%EF%BC%8A","\uff0b":"%EF%BC%8B","\uff0c":"%EF%BC%8C","\uff0f":"%EF%BC%8F","\uff1a":"%EF%BC%9A","\uff1b":"%EF%BC%9B","\uff1d":"%EF%BC%9D","\uff1f":"%EF%BC%9F","\uff20":"%EF%BC%A0",
"\uff3b":"%EF%BC%BB","\uff3d":"%EF%BC%BD"},kb=function(a){return rb[a]},db=/[\x00\x22\x27\x3c\x3e]/g,fb=/[\x00\x08-\x0d\x22\x26\x27\/\x3c-\x3e\\\x85\u2028\u2029]/g,jb=/[\x00- \x22\x27-\x29\x3c\x3e\\\x7b\x7d\x7f\x85\xa0\u2028\u2029\uff01\uff03\uff04\uff06-\uff0c\uff0f\uff1a\uff1b\uff1d\uff1f\uff20\uff3b\uff3d]/g,ob=/^(?!-*(?:expression|(?:moz-)?binding))(?:[.#]?-?(?:[_a-z0-9-]+)(?:-[_a-z0-9-]+)*-?|-?(?:[0-9]+(?:\.[0-9]*)?|\.[0-9]+)(?:[a-z]{1,2}|%)?|!important|)$/i,lb=/^(?![^#?]*\/(?:\.|%2E){2}(?:[\/?#]|$))(?:(?:https?|mailto):|[^&:\/?#]*(?:[\/?#]|$))/i,
bb=/<(?:!|\/?([a-zA-Z][a-zA-Z0-9:\-]*))(?:[^>'"]|"[^"]*"|'[^']*')*>/g,cb=/</g;var sb=function(a){a=a||{};var c=""+(a.V?"#333":"#f1f2f2"),b=""+(a.V?"#333":"#fff"),d=""+(a.V?"#fff":"#333"),e=""+(a.V?"#ccc":"#999"),f=2<a.m/a.n,n=2<a.n/a.m,E=(60<a.n?"12":"11")+"px";return a=""+('<div id="info_container"><ul><li><div id="back_section" class="back_border" onclick="handleClick(\'backClick\', event)"></div></li><li><div id="info_content"></div></li></ul></div><div id="border_overlay"></div><style>#info_container * {box-sizing:border-box; -moz-box-sizing:border-box; -webkit-box-sizing:border-box;}#info_container > ul {list-style-type:none; margin:0; padding:0;}'+
(n?"":"#info_container > ul > li {float:left;}")+(f?".inline {float:left;}":"")+".back_border {"+(n?"border-bottom:1px solid #ccc;":"border-right:1px solid #ccc;")+"}.opt_border {"+(f?"border-left:1px solid #ccc;border-right:1px solid #ccc;":"border-bottom:1px solid #ccc;border-top:1px solid #ccc;")+"}.opt_border_last {"+(n?"border-bottom:1px solid #ccc;":"")+"}.mn_opt {color:"+M("#39c")+"; display:table;"+(f?"height:"+M(a.n)+"px;":"width:"+(n?M(a.m):M(a.m-30))+"px;")+(60>=a.n?"line-height:11px;":
"")+"padding:0 5px;}.cell {display:table-cell; position:relative; width:inherit;}.conf {color:"+M(e)+";"+(n?"padding:5px 10px;":"padding-left:20px;")+(n?"":"vertical-align:middle;")+"}.header {color:"+M(d)+"; margin:5px 0;}.fb_opt{color:"+M("#39c")+"; padding:5px 0; position:relative;"+(f?"":"width:"+(n?M(a.m):M(a.m-30))+"px;")+"}.opt_tappable{position:absolute; margin:"+(f?"0 "+M("5px")+";":M("5px")+" 0;")+"bottom:0; left:0; right:0; top:0;}.center{text-align:center;}.middle{vertical-align:middle;}.athird{"+
(f?"width":"height")+":"+(n?"15%":"33%")+";}#survey_page {display:table-cell;"+(f?"vertical-align:middle;":"")+"}#info_card {font:bold "+M(E)+" Roboto; height:"+M(a.n)+"px;"+M(a.Cb)+":"+M(-a.m)+"px; position:absolute;"+M(a.Db)+":"+M(-a.n)+"px; width:"+M(a.m)+"px; z-index:9100;}#back_section{background-color:"+M(c)+"; opacity:1.0; width:"+(n?M(a.m):"30")+"px; height:"+(n?"30":M(a.n))+"px; display:table-cell; vertical-align:middle; text-align:center;}#info_container {display:-webkit-box; height:"+M(a.n)+
"px; -webkit-box-orient:vertical; -webkit-box-pack:center; width:"+M(a.m)+"px;}#info_content {background-color:"+M(b)+"; display:table; height:"+(n?M(a.n-30):M(a.n))+"px; opacity:0.97; position:relative; width:"+(n?M(a.m):M(a.m-30))+"px;}#border_overlay {border:1px solid #ccc; bottom:0; left:0; pointer-events:none; position:absolute; right:0; top:0;}</style>")},tb=function(a){a=a||{};return""+(a.Vb?'<img id="back_img" src="'+L(nb(a.G.fb))+'" />':"")},ub=function(a){a=a||{};return'<div class="inline center athird mn_opt"><div class="cell middle"><img src="'+
L(nb(a.Qb))+'" /><div class="fb_opt_txt">'+K(a.Rb)+'</div><div class="opt_tappable" onclick="handleClick(\'attributionClick\', event)"></div></div></div><div class="inline center athird mn_opt opt_border"><div class="cell middle"><img src="'+L(nb(a.G.cb))+'" /><div class="fb_opt_txt">'+K(a.G.eb)+'</div><div class="opt_tappable" onclick="handleClick(\'pubMuteClick\', event)"></div></div></div><div class="inline center athird mn_opt opt_border_last"><div class="cell middle"><img src="'+L(nb(a.G.ab))+
'" /><div class="fb_opt_txt">'+K(a.G.bb)+'</div><div class="opt_tappable" onclick="handleClick(\'adMuteClick\', event)"></div></div></div>'},vb=function(a){a=a||{};var c='<div id="survey_page"><div class="header center">'+K(a.Tb)+"</div>";a=a.Ub;for(var b=a.length,d=0;d<b;d++){var e='<div class="inline athird center fb_opt '+(0!=d?"opt_border":"")+(d==b-1?"_last":"")+'"><div style="display:table;width:100%;height:100%"><div class="cell middle">',f;f=a[d].text();f=K(f);c+=e+f+'</div></div><div class="opt_tappable" onclick="handleClick(\'surveyOptionClick\', event, '+
L(ib(d))+')"></div></div>'}return c+"</div>"},wb=function(a){a=a||{};return'<div class="cell conf"><div class="header">'+K(a.pb)+(a.qb?' <a id="undo_link" class="fb_opt" onclick="handleClick(\'undoClick\', event)">'+K(a.rb)+"</a>":"")+"</div>"+K(a.text)+"</div>"};var N=function(a,c,b){if("string"==typeof c)(c=yb(a,c))&&(a.style[c]=b);else for(var d in c){b=a;var e=c[d],f=yb(b,d);f&&(b.style[f]=e)}},yb=function(a,c){var b=ua(c);if(void 0===a.style[b]){var d=(Da?"Webkit":A?"Moz":y?"ms":Ca?"O":null)+va(b);if(void 0!==a.style[d])return d}return b};var zb=function(){this.Ja={};var a=p(this.bc,this);aa("handleClick",a)};ba(zb);zb.prototype.w=function(a,c){this.Ja[c]=a};zb.prototype.bc=function(a,c,b){"function"==k(this.Ja[a])&&this.Ja[a].apply(this,Array.prototype.slice.call(arguments,1))};var Ab=function(){this.va=[];var a=p(this.Ga,this);aa("onLoad",a)};ba(Ab);Ab.prototype.w=function(a){this.va.push(a)};Ab.prototype.Ga=function(){for(var a=0;a<this.va.length;a+=1)"function"==k(this.va[a])&&this.va[a]()};var Bb=["","moz","ms","O","webkit"];var Cb=function(){this.tb=[];this.ub=[];this.h()};Cb.prototype.j=function(a){this.h();this.g(a)};Cb.prototype.h=function(){this.tb.length=0;this.ub.length=0};Cb.prototype.g=function(a){for(var c in a){var b=a[c],d=c.toLowerCase();if("ad_text"==d)for(var e=0;e<b.length;++e)this.tb.push(b[e]);if("line_rtl"==d)for(e=0;e<b.length;++e)this.ub.push(b[e])}};var Db=function(){this.h()};g=Db.prototype;g.height=function(){return this.C};g.width=function(){return this.D};g.j=function(a){this.h();this.g(a)};
g.h=function(){this.M="";this.D=this.C=0};g.g=function(a){for(var c in a){var b=a[c],d=c.toLowerCase();"image_url"==d&&(this.M=b);"height"==d&&(this.C=b);"width"==d&&(this.D=b)}};var Eb=function(){this.jb=[];this.qa=null;this.h()};g=Eb.prototype;g.name=function(){return this.F};g.wa=function(){return this.A};g.j=function(a){this.h();this.g(a)};g.h=function(){this.A=this.F="";this.jb.length=0;this.qa=null};
g.g=function(a){for(var c in a){var b=a[c],d=c.toLowerCase();"name"==d&&(this.F=b);"icon_url"==d&&(this.A=b);if("user_reviews"==d)for(var e=0;e<b.length;++e)this.jb.push(b[e]);"screenshot_data"==d&&(null===this.qa&&(this.qa=new Fb),this.qa.g(b))}};var Gb=function(){this.h()};g=Gb.prototype;g.name=function(){return this.F};g.wa=function(){return this.A};g.j=function(a){this.h();this.g(a)};g.h=function(){this.A=this.F=""};
g.g=function(a){for(var c in a){var b=a[c],d=c.toLowerCase();"name"==d&&(this.F=b);"icon_url"==d&&(this.A=b)}};var Hb=function(){this.lb=[];this.h()};Hb.prototype.j=function(a){this.h();this.g(a)};Hb.prototype.h=function(){this.lb.length=0};Hb.prototype.g=function(a){for(var c in a){var b=a[c];if("product"==c.toLowerCase())for(var d=0;d<b.length;++d){var e=new Gb;this.lb.push(e);e.g(b[d])}}};var Ib=function(){this.Q=[];this.h()};Ib.prototype.j=function(a){this.h();this.g(a)};
Ib.prototype.h=function(){this.Q.length=0};Ib.prototype.g=function(a){for(var c in a){var b=a[c];if("artists"==c.toLowerCase())for(var d=0;d<b.length;++d)this.Q.push(b[d])}};var Jb=function(){this.Q=[];this.kb=[];this.h()};Jb.prototype.j=function(a){this.h();this.g(a)};Jb.prototype.h=function(){this.Q.length=0;this.kb.length=0};
Jb.prototype.g=function(a){for(var c in a){var b=a[c],d=c.toLowerCase();if("artists"==d)for(var e=0;e<b.length;++e)this.Q.push(b[e]);if("songs"==d)for(e=0;e<b.length;++e)d=new Ib,this.kb.push(d),d.g(b[e])}};var Kb=function(){this.M=[];this.sb=[];this.h()};Kb.prototype.j=function(a){this.h();this.g(a)};Kb.prototype.h=function(){this.M.length=0;this.sb.length=0};
Kb.prototype.g=function(a){for(var c in a){var b=a[c],d=c.toLowerCase();if("image_url"==d)for(var e=0;e<b.length;++e)this.M.push(b[e]);if("duration"==d)for(e=0;e<b.length;++e)this.sb.push(b[e])}};var Lb=function(){this.h()};Lb.prototype.j=function(a){this.h();this.g(a)};Lb.prototype.h=function(){};Lb.prototype.g=function(a){for(var c in a);};var Mb=function(){this.h()};Mb.prototype.j=function(a){this.h();this.g(a)};Mb.prototype.h=function(){};Mb.prototype.g=function(a){for(var c in a);};
var O=function(){this.ra=null;this.h()};O.prototype.text=function(){return this.B};O.prototype.j=function(a){this.h();this.g(a)};O.prototype.h=function(){this.B=this.M="";this.ra=null};O.prototype.g=function(a){for(var c in a){var b=a[c],d=c.toLowerCase();"image_url"==d&&(this.M=b);"text"==d&&(this.B=b);"action_urls"==d&&(null===this.ra&&(this.ra=new Mb),this.ra.g(b))}};var P=function(){this.gb=[];this.ba=this.da=this.aa=this.fa=this.Z=this.ja=this.ea=null;this.h()};P.prototype.Ra=function(){return this.P};
P.prototype.j=function(a){this.h();this.g(a)};P.prototype.h=function(){this.P="";this.gb.length=0;this.ba=this.da=this.aa=this.fa=this.Z=this.ja=this.ea=null};
P.prototype.g=function(a){for(var c in a){var b=a[c],d=c.toLowerCase();"destination_url"==d&&(this.P=b);if("buttons"==d)for(var e=0;e<b.length;++e){var f=new O;this.gb.push(f);f.g(b[e])}"image_creative"==d&&(null===this.ea&&(this.ea=new Db),this.ea.g(b));"text_creative"==d&&(null===this.ja&&(this.ja=new Cb),this.ja.g(b));"app_creative"==d&&(null===this.Z&&(this.Z=new Eb),this.Z.g(b));"music_creative"==d&&(null===this.fa&&(this.fa=new Jb),this.fa.g(b));"crossfade_creative"==d&&(null===this.aa&&(this.aa=
new Kb),this.aa.g(b));"iap_creative"==d&&(null===this.da&&(this.da=new Hb),this.da.g(b));"html5_template_creative"==d&&(null===this.ba&&(this.ba=new Lb),this.ba.g(b))}};P.CREATIVE_TYPE_UNKNOWN=0;P.CREATIVE_TYPE_TEXT=1;P.CREATIVE_TYPE_IMAGE=2;P.CREATIVE_TYPE_CROSSFADE_BANNER=3;P.CREATIVE_TYPE_PRODUCT=4;P.CREATIVE_TYPE_APP=5;P.CREATIVE_TYPE_MUSIC=6;P.CREATIVE_TYPE_IN_APP_PURCHASE=7;P.CREATIVE_TYPE_HTML5_TEMPLATE=8;var Q=function(){this.ib=[];this.sa=null;this.u=[];this.h()};Q.prototype.height=function(){return this.C};
Q.prototype.width=function(){return this.D};var S=function(a){null===a.sa&&(a.sa=new R);return a.sa};Q.prototype.j=function(a){this.h();this.g(a)};Q.prototype.h=function(){this.D=this.C=this.ib.length=0;this.sa=null;this.u.length=0};
Q.prototype.g=function(a){for(var c in a){var b=a[c],d=c.toLowerCase();if("creatives"==d)for(var e=0;e<b.length;++e){var f=new P;this.ib.push(f);f.g(b[e])}"height"==d&&(this.C=b);"width"==d&&(this.D=b);"attribution"==d&&S(this).g(b);if("flags"==d)for(e=0;e<b.length;++e)d=new Nb,this.u.push(d),d.g(b[e])}};Q.CREATIVE_TYPE_UNKNOWN=0;Q.CREATIVE_TYPE_TEXT=1;Q.CREATIVE_TYPE_IMAGE=2;Q.CREATIVE_TYPE_CROSSFADE_BANNER=3;Q.CREATIVE_TYPE_PRODUCT=4;Q.CREATIVE_TYPE_APP=5;var T=function(){this.h()};
T.prototype.label=function(){return this.xb};T.prototype.j=function(a){this.h();this.g(a)};T.prototype.h=function(){this.Ha=this.xb="";this.vb=!0};T.prototype.g=function(a){for(var c in a){var b=a[c],d=c.toLowerCase();"label"==d&&(this.xb=b);"label_instance"==d&&(this.Ha=b);"include_close_button_token"==d&&(this.vb=b)}};var U=function(){this.ua=null;this.h()};U.prototype.text=function(){return this.B};var Ob=function(a){null===a.ua&&(a.ua=new T);return a.ua};U.prototype.j=function(a){this.h();this.g(a)};
U.prototype.h=function(){this.B="";this.ua=null};U.prototype.g=function(a){for(var c in a){var b=a[c],d=c.toLowerCase();"text"==d&&(this.B=b);"conversion"==d&&Ob(this).g(b)}};
var Pb=function(){this.pa=this.oa=this.na=this.ma=this.la=null;this.Y=[];this.h()},Qb=function(a){null===a.la&&(a.la=new T);return a.la},Rb=function(a){null===a.ma&&(a.ma=new T);return a.ma},Sb=function(a){null===a.na&&(a.na=new T);return a.na},Tb=function(a){null===a.oa&&(a.oa=new T);return a.oa},Ub=function(a){null===a.pa&&(a.pa=new T);return a.pa};Pb.prototype.j=function(a){this.h();this.g(a)};
Pb.prototype.h=function(){this.Xa=this.Da=this.Ya=this.cb=this.eb=this.ab=this.bb="";this.pa=this.oa=this.na=this.ma=this.la=null;this.Wa="";this.Y.length=0;this.Za=this.Ca=this.Va=this.Ua=this.Ta=this.Sa=this.fb="";this.$a=!1};
Pb.prototype.g=function(a){for(var c in a){var b=a[c],d=c.toLowerCase();"mute_text"==d&&(this.bb=b);"mute_icon_url"==d&&(this.ab=b);"pub_feedback_text"==d&&(this.eb=b);"pub_feedback_icon_url"==d&&(this.cb=b);"conversion_url"==d&&(this.Ya=b);"encoded_cookie"==d&&(this.Da=b);"close_button_token"==d&&(this.Xa=b);"interaction_conversion"==d&&Qb(this).g(b);"mute_conversion"==d&&Rb(this).g(b);"mute_undo_conversion"==d&&Sb(this).g(b);"pub_feedback_conversion"==d&&Tb(this).g(b);"pub_feedback_undo_conversion"==
d&&Ub(this).g(b);"survey_header"==d&&(this.Wa=b);if("survey_options"==d)for(var e=0;e<b.length;++e){var f=new U;this.Y.push(f);f.g(b[e])}"back_icon_url"==d&&(this.fb=b);"mute_confirmation_header"==d&&(this.Sa=b);"mute_confirmation_text"==d&&(this.Ta=b);"pub_feedback_confirmation_header"==d&&(this.Ua=b);"pub_feedback_confirmation_text"==d&&(this.Va=b);"undo_text"==d&&(this.Ca=b);"close_message"==d&&(this.Za=b,this.$a=!0)}};var R=function(){this.ta=null;this.h()};R.prototype.Ra=function(){return this.P};
R.prototype.wa=function(){return this.A};R.prototype.text=function(){return this.B};var Vb=function(a){null===a.ta&&(a.ta=new Pb);return a.ta};R.prototype.j=function(a){this.h();this.g(a)};R.prototype.h=function(){this.B=this.A=this.P="";this.ta=null};R.prototype.g=function(a){for(var c in a){var b=a[c],d=c.toLowerCase();"destination_url"==d&&(this.P=b);"icon_url"==d&&(this.A=b);"text"==d&&(this.B=b);"user_feedback_data"==d&&Vb(this).g(b)}};R.BOTTOM_LEFT=0;R.TOP_LEFT=1;R.TOP_RIGHT=2;
R.BOTTOM_RIGHT=3;var Nb=function(){this.h()};g=Nb.prototype;g.name=function(){return this.F};g.value=function(){return this.yb};g.j=function(a){this.h();this.g(a)};g.h=function(){this.yb=this.F=""};g.g=function(a){for(var c in a){var b=a[c],d=c.toLowerCase();"name"==d&&(this.F=b);"value"==d&&(this.yb=b)}};var Fb=function(){this.nb=[];this.h()};Fb.prototype.j=function(a){this.h();this.g(a)};Fb.prototype.h=function(){this.nb.length=0};
Fb.prototype.g=function(a){for(var c in a){var b=a[c];if("screenshots"==c.toLowerCase())for(var d=0;d<b.length;++d){var e=new Wb;this.nb.push(e);e.g(b[d])}}};var Wb=function(){this.h()};g=Wb.prototype;g.width=function(){return this.D};g.height=function(){return this.C};g.j=function(a){this.h();this.g(a)};g.h=function(){this.C=this.D=0};g.g=function(a){for(var c in a){var b=a[c],d=c.toLowerCase();"width"==d&&(this.D=b);"height"==d&&(this.C=b)}};var V=function(a,c,b,d,e,f,n,E){this.Ka=a;this.La=c;this.R=b;this.S=d;this.Gb=e;this.Hb=f;this.Jb=n;this.ob=!1;this.i=E;this.L=0;this.ka=xa("conf_hide_backbutton")||!1;this.Ea=xa("conf_show_undo")||!1;this.Ib=2E3;this.Fa=null;a=zb.T();a.w(p(this.Mb,this),"backClick");a.w(p(this.Lb,this),"attributionClick");a.w(p(this.Kb,this),"adMuteClick");a.w(p(this.Nb,this),"pubMuteClick");a.w(p(this.Ob,this),"surveyOptionClick");this.Ea&&a.w(p(this.Pb,this),"undoClick");Ab.T().w(p(this.Ga,this))};
V.prototype.Ga=function(){for(var a=B("info_card"),c=this.R+" linear 0.2s,"+this.S+" linear 0.2s",b=0;b<Bb.length;b++)N(a,Bb[b]?Bb[b]+"transition"[0].toUpperCase()+"ransition":"transition",c)};V.prototype.collapse=function(){var a=B("info_card");N(a,this.R,-1*this.La+"px");N(a,this.S,-1*this.Ka+"px")};V.prototype.expand=function(){Xb(this);var a=B("info_card");N(a,this.R,"0px");N(a,this.S,"0px");this.ob||(W(this,Qb(this.i)),this.ob=!0)};
var Xb=function(a){I(B("info_content"),ub,{Qb:a.Gb,Rb:a.Hb,G:a.i});a.L=1;Yb(a,!0)},Zb=function(a){I(B("info_content"),vb,{Tb:a.i.Wa,Ub:a.i.Y});a.L=2},Yb=function(a,c){I(B("back_section"),tb,{G:a.i,Vb:c})},W=function(a,c){var b=a.i.Ya+"&label="+c.label();""!==c.Ha&&(b+="&label_instance="+c.Ha);c.vb&&(b+="&cbt="+a.i.Xa);0<a.i.Da.length&&(b+="&cid="+a.i.Da);(new Image).src=b},$b=function(a){a.i.$a&&(a.Fa=window.setTimeout(p(function(){try{this.Fa=null,window.top.postMessage(this.i.Za,"*")}catch(a){}},
a),a.Ib))};g=V.prototype;g.Mb=function(){window.clearTimeout(this.Fa);switch(this.L){case 1:this.collapse();break;case 2:Xb(this);W(this,Sb(this.i));break;case 3:this.ka||Zb(this);break;case 4:this.ka||(Xb(this),W(this,Ub(this.i)))}};g.Pb=function(){switch(this.L){case 3:this.collapse();W(this,Sb(this.i));break;case 4:this.collapse(),W(this,Ub(this.i))}};g.Lb=function(){window.open(this.Jb)};g.Kb=function(){Zb(this);W(this,Rb(this.i))};
g.Ob=function(a,c){I(B("info_content"),wb,{pb:this.i.Sa,text:this.i.Ta,rb:this.i.Ca,qb:this.Ea});this.L=3;this.ka&&Yb(this,!1);W(this,Ob(this.i.Y[c]));$b(this)};g.Nb=function(){I(B("info_content"),wb,{pb:this.i.Ua,text:this.i.Va,rb:this.i.Ca,qb:this.Ea});this.L=4;this.ka&&Yb(this,!1);W(this,Tb(this.i));$b(this)};var Z=function(a,c,b,d,e,f,n,E,za,Aa,F,G,ic,jc,kc,m,l,u,lc,z,ra,xb,r){this.l=a;this.q=c;this.v=b;this.p=d;this.k=e;this.Ma=f;this.N=n;this.Ab=E;this.Bb=za;this.Oa=Aa;this.xa=F;this.U=G;this.ya=ic;this.O=jc;this.za=kc;i:for(a=this.q,c="A",b=a.childNodes,d=0;d<b.length;d++)if(e=b.item(d),"undefined"!=typeof e.tagName&&e.tagName.toUpperCase()==c){a=e;break i}this.I=a;this.W="left"==l;this.H=this.s=null;this.Qa=!0===z;this.Pa=!0===ra;this.X=null;if(xb){z=new Q;z.j(r);if(r.flags&&(ra=wa.T(),r=r.flags))for(ra.u=
{},a=0;a<r.length;a++)ra.u[r[a].name]=r[a].value;l=this.X=new V(z.height(),z.width(),l,this.Pa?"bottom":"top",S(z).wa(),S(z).text(),S(z).Ra(),Vb(S(z)));I(B("info_card"),sb,{n:l.Ka,m:l.La,Cb:l.R,Db:l.S,V:xa("uses_octagon_sdk",!1),G:l.i});Xb(l)}l="undefined"!=typeof SVGElement&&"undefined"!=typeof document.createElementNS;"img"==u&&(l=!1);l?"adchoices"==m?(this.v.appendChild(X(ac(this),bc("0px"))),m=this.k-this.p+"px",this.s=Y(this.xa,5,this.za,this.U),this.I.appendChild(X(cc(this,this.k,this.N),bc(m),
this.s))):"adsbygoogle"==m?(m=ac(this),u=dc("0px"),this.v.appendChild(X(m,u)),this.W?(r=0,m=this.p+2,u=this.k-this.O-5):(l=0,m=5,u=this.k-this.O-2-l-this.p,r=this.k-this.p-l),l=cc(this,this.k,this.N),this.s=Y(this.xa,m,this.za,this.U),""!=this.ya&&(this.H=Y(this.ya,u,this.za,this.O)),m=dc(r+"px"),null!=this.I&&(m=this.H?X(l,this.s,this.H,m):X(l,this.s,m),this.I.appendChild(m))):"germany"==m?(this.v.appendChild(X(ac(this),bc("0px"))),this.W?(u=this.p+2,l=3,r=0):(u=this.k-45-this.p,l=this.k-88-3,r=
this.k-this.p-0),m=cc(this,this.k,this.N),this.s=Y(this.xa,u,0,this.U),this.H=Y(this.ya,l,14,this.O),u=bc(r+"px"),null!=this.I&&(m=X(m,this.s,this.H,u),this.I.appendChild(m))):ec(this):ec(this);this.K=null;this.Na=0;xb?t(this.l,"click",this,p(this.X.expand,this.X)):lc?this.Ba():(t(this.l,"mouseover",this,this.Ba),t(this.l,"mouseout",this,this.Fb),t(this.l,"mouseup",this,this.Aa),t(this.l,"touchstart",this,this.Ba),t(this.l,"touchend",this,this.Aa),t(this.l,"touchcancel",this,this.Aa),t(this.I,"click",
this,this.Eb))},X=function(a){var c=document.createElementNS("http://www.w3.org/2000/svg","svg");c.setAttribute("width","100%");c.setAttribute("height","100%");for(var b=0;b<arguments.length;b++)c.appendChild(arguments[b]);return c},ac=function(a){var c=document.createElementNS("http://www.w3.org/2000/svg","rect");if(a.Qa)return c;c.setAttribute("width","100%");c.setAttribute("height","100%");c.setAttribute("fill","lightgray");return c},cc=function(a,c,b){var d=document.createElementNS("http://www.w3.org/2000/svg",
"path");if(a.Qa)return d;d.setAttribute("fill","lightgray");var e="M";a.Pa?(e+="0,"+b+"L"+c+","+b,e=a.W?e+("L"+c+",4s0,-4,-4,-4L0,0"):e+("L"+c+",0L4,0s-4,0,-4,4")):(e+="0,0L"+c+",0",e=a.W?e+("L"+c+","+(b-4)+"s0,4,-4,4L0,"+b):e+("L"+c+","+b+"L4,"+b+"s-4,0,-4,-4"));d.setAttribute("d",e+"z");return d},Y=function(a,c,b,d){b=11+b;var e=document.createElementNS("http://www.w3.org/2000/svg","svg"),f=document.createElementNS("http://www.w3.org/2000/svg","text");a=document.createTextNode(a);e.setAttribute("overflow",
"visible");e.setAttribute("x",c+"px");e.setAttribute("y",b+"px");e.setAttribute("width",d+"px");f.setAttribute("fill","black");f.setAttribute("font-family","Arial");f.setAttribute("font-size","100px");e.appendChild(f);f.appendChild(a);return e},fc=function(a,c){var b=a.childNodes.item(0),d=b.getComputedTextLength();0!=d&&b.setAttribute("transform","scale("+c/d+")")},bc=function(a){var c=document.createElementNS("http://www.w3.org/2000/svg","svg"),b=document.createElementNS("http://www.w3.org/2000/svg",
"circle"),d=document.createElementNS("http://www.w3.org/2000/svg","path");c.appendChild(b);c.appendChild(d);c.setAttribute("fill","#00aecd");c.setAttribute("x",a);c.setAttribute("y","0.5px");b.setAttribute("cx","6.711px");b.setAttribute("cy","6.04px");b.setAttribute("r","0.483");d.setAttribute("d","M2.696,3.234c0-0.555,0.131-0.989,0.537-1.201c0.359-0.188,0.769-0.136,1.25,0.141l7.438,4.219c0.485,0.28,0.743,0.546,0.734,1c-0.009,0.456-0.271,0.771-0.766,1.032L7.78,10.519c-0.594,0.297-0.798,0.289-1.031,0.188C6.39,10.55,6.296,10.237,6.296,9.378l0.016-1.672c0-0.828,0.844-0.906,0.844,0l0.016,1.719C7.155,9.94,7.499,9.769,7.499,9.769L11.53,7.69c0.359-0.219,0.25-0.406,0.141-0.516c-0.024-0.024-0.188-0.12-0.25-0.156L4.233,2.987c-0.797-0.531-0.656,0.25-0.656,0.25s-0.016,7.182-0.016,7.625c0,0.797,0.094,0.672,1.062,0.156c0.95-0.506,1.156,0.422,0.516,0.75c0,0-0.869,0.473-1.297,0.641c-0.797,0.312-1.109-0.234-1.141-0.641C2.674,11.401,2.696,3.234,2.696,3.234z");
return c},ec=function(a){var c=gc(a.Ab,a.Oa,a.p,a.Ma);a.v.appendChild(c);c=gc(a.Bb,a.Oa,a.k,a.N);a.I.appendChild(c);c.width=a.k},gc=function(a,c,b,d){var e=document.createElement("img");e.src=a;e.alt=c;e.setAttribute("border","0");e.width=b;e.height=d;return e};
Z.prototype.Ba=function(){window.clearTimeout(this.K);this.K=null;this.q&&"block"==this.q.style.display||(this.Na=fa(),this.k&&(this.l.style.width=this.k+"px",this.l.style.height=this.N+"px"),this.v&&this.q&&(this.v.style.display="none",this.q.style.display="block"),this.s&&fc(this.s,this.U),this.H&&fc(this.H,this.O))};Z.prototype.Fb=function(){hc(this,500)};Z.prototype.Aa=function(){hc(this,4E3)};var hc=function(a,c){window.clearTimeout(a.K);a.K=window.setTimeout(p(a.ac,a),c)};
Z.prototype.ac=function(){window.clearTimeout(this.K);this.K=null;this.Sb&&(this.l.style.left=this.Sb+"px");this.p&&(this.l.style.width=this.p+"px",this.l.style.height=this.Ma+"px");this.v&&this.q&&(this.v.style.display="block",this.q.style.display="none")};Z.prototype.Eb=function(a){this.q&&"block"==this.q.style.display&&500>fa()-this.Na&&(a.preventDefault?a.preventDefault():a.returnValue=!1)};
var dc=function(a){var c=document.createElementNS("http://www.w3.org/2000/svg","svg"),b=document.createElementNS("http://www.w3.org/2000/svg","circle"),d=document.createElementNS("http://www.w3.org/2000/svg","circle"),e=document.createElementNS("http://www.w3.org/2000/svg","line");c.setAttribute("stroke","#00aecd");c.setAttribute("fill","#00aecd");c.setAttribute("x",a);c.setAttribute("y","0px");b.setAttribute("cx","7.5px");b.setAttribute("cy","7.5px");b.setAttribute("r","5.5px");b.setAttribute("fill",
"none");b.setAttribute("stroke-width","1.1px");d.setAttribute("cx","7.5px");d.setAttribute("cy","4.75px");d.setAttribute("r","1px");d.setAttribute("stroke","none");e.setAttribute("x1","7.5px");e.setAttribute("x2","7.5px");e.setAttribute("y1","6.5px");e.setAttribute("y2","11px");e.setAttribute("fill","none");e.setAttribute("stroke-width","1.75px");c.appendChild(b);c.appendChild(d);c.appendChild(e);return c};aa("abg",Z);
if("undefined"!=typeof window.abgp){var $=window.abgp;new Z($.el,$.ael,$.iel,$.hw,$.sw,$.hh,$.sh,$.himg,$.simg,$.alt,$.t,$.tw,$.t2,$.t2w,$.tbo,$.att,$.halign,$.ff,$.fe,$.fnb,$.iba,$.uic,$.icd)};})();
