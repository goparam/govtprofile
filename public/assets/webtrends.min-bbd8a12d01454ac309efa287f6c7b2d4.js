var l=void 0;!function(e,t,n,i){function r(e){return e&&(e.forEach||(e.forEach=function(e,t){for(var n=t||window,i=0,r=this.length;r>i;++i)e.call(n,this[i],i,this)}),e.filter||(e.filter=function(e,t){for(var n=t||window,i=[],r=0,s=this.length;s>r;++r)e.call(n,this[r],r,this)&&i.push(this[r]);return i}),e.indexOf||(e.indexOf=function(e){for(var t=0;t<this.length;++t)if(this[t]===e)return t;return-1})),e}if(!e.Ab){var o={b:{},plugins:{},hb:0,d:{},addEventListener:e.addEventListener?function(e,t,n){e.addEventListener&&e.addEventListener(t,n,!1)}:function(e,t,n){e.attachEvent&&e.attachEvent("on"+t,n,!1)},f:{},version:"10.2.1",n:{},ob:!1,q:25,Y:function(){i.search&&(o.n=o.ra(i.search)),e.webtrendsAsyncInit&&!e.webtrendsAsyncInit.hasRun&&(e.webtrendsAsyncInit(),e.webtrendsAsyncInit.hasRun=!0),o.addEventListener(e,"load",function(){o.ob=!0})},e:function(e){return"[object Function]"===Object.prototype.toString.call(e)},rb:function(e){var t,n=[];for(t in e)e.hasOwnProperty(t)&&""!=e[t]&&e[t]!=l&&"function"!=typeof e[t]&&n.push({k:t,v:e[t]});return n},extend:function(e,t,n){for(key in t)(n||"undefined"==typeof e[key])&&(e[key]=t[key]);return e},find:function(e){return o.Aa||(o.Aa=o.mb()),o.Aa(e)},mb:function(){var i=/MSIE (\d+)/.exec(n.userAgent),i=i?i[1]:99;if(t.querySelectorAll&&t.body&&i>8){var r=t.body;return function(e){return r.querySelectorAll(e)}}return e.qb?e.qb.find:e.Fa?e.Fa:e.Bb&&YAHOO.Da&&YAHOO.Da.Ea?YAHOO.Da.Ea.Jb:"qwery"in e?qwery:(e.Cb&&YUI().Mb("node",function(e){return e.all}),t.querySelectorAll?(r=t.body)?function(e){return r.querySelectorAll(e)}:function(){return[]}:function(){return[]})},ra:function(e){var e=e.split(/[&?]/g),t={};try{for(var n=0,i=e.length;i>n;++n){var r=e[n].match(/^([^=]+)(?:=([\s\S]*))?/);if(r&&r[1]){var s=decodeURIComponent(r[1]);t[s]?(t[s]=[t[s]],t[s].push(decodeURIComponent(r[2]))):t[s]=decodeURIComponent(r[2])}}}catch(o){this.D.push(o),this.r(o)}return t},ua:function(e,n){arguments.length<2&&(n=!0),s=t.createElement("script"),s.type="text/javascript",s.async=n,s.src=e,s2=t.getElementsByTagName("script")[0],s2.parentNode.insertBefore(s,s2)},S:function(e,t){for(var n=e.target||e.srcElement;n&&n.tagName&&n.tagName.toLowerCase()!=t.toLowerCase();)n=n.parentElement||n.parentNode;return n},ea:function(e){return"function"==typeof encodeURIComponent?encodeURIComponent(e):escape(e)},wa:function(e){for(var t in o.b)o.b[t].ga(e);return!1},N:function(e,t,n){return t||(t="collect"),n?o.O("transform."+t,e,n):o.O("transform."+t,e),this},O:function(e,n,i){function s(t,n){o.f[e][t.j]||(o.f[e][t.j]=r([])),o.f[e][t.j].push(n)}if(e&&n&&""!=e&&o.e(n))if("wtmouseup"!==e||o.xa||(o.addEventListener(t,"mouseup",function(t){t||(t=window.event),o.Sa(e,{event:t})}),o.xa=!0),o.f[e]||(o.f[e]={}),i)s(i,n);else for(dcsid in o.b)s(o.b[dcsid],n)},Sa:function(e,t){for(dcsid in o.b)o.fireEvent(e,o.b[dcsid],t)},Ga:function(e,t,n,i){return"function"==typeof t?t.onetime?(n.push(t),!0):(t(e,i),!1):void 0},fireEvent:function(e,t,n){var i=r([]);if(o.f[e]&&o.f[e][t.j]){if(e=o.f[e][t.j],!e.length)return;for(var s=e.length-1;s>=0;s--)o.Ga(t,e[s],i,n)&&e.pop()}i.forEach(function(e){e(t,n)})},Z:function(e,t){var n=!1;for(dcsid in o.b){var i=o.b[dcsid];e in i.plugins&&(n=!0,i.Z(e,t))}n||t({Ib:!0})},z:function(){for(dcsid in o.b)o.b[dcsid].z()}},a=o.fireEvent,c=o.O;o.a=function(){return this.oa=e.aa?/dcs(uri)|(ref)|(aut)|(met)|(sta)|(sip)|(pro)|(byt)|(dat)|(p3p)|(cfg)|(redirect)|(cip)/i:"",this.za={},this.plugins=this.plugins={},this.c=this.WT={},this.g=this.DCS={},this.o=this.DCSext={},this.j=this.dcssID="dcsobj_"+o.hb++,this.images=this.images=[],this.D=this.errors=[],this.da={},this.images=[],this.G=[],this.Eb=[],this.h=[],this.K=[],this.M="",this.T=!1,this.m=0,this.W=this.qa="",this.xa=!1,this},o.a.prototype={Y:function(t){function n(e,n){return t.hasOwnProperty(e)?t[e]:n}return this.Fb=t,this.r=n("errorlogger",function(){}),this.gb=this.dcsid=t.dcsid,this.I=this.queue=n("queue",[]),this.domain=this.domain=n("domain","statse.webtrendslive.com"),this.yb=this.timezone=n("timezone",-8),this.pa=n("fpcdom",""),this.enabled=this.enabled=n("enabled",!0),this.X=this.i18n=n("i18n",!0),this.za=e.aa?this.X?{"%25":/\%/g,"%26":/\&/g,"%23":/\#/g}:{"%09":/\t/g,"%20":/ /g,"%23":/\#/g,"%26":/\&/g,"%2B":/\+/g,"%3F":/\?/g,"%5C":/\\/g,"%22":/\"/g,"%7F":/\x7F/g,"%A0":/\xA0/g}:"",this.V=this.fpc=n("fpc","WT_FPC"),this.la=n("disablecookie",!1),t.metanames&&(this.va=r(t.metanames.toLowerCase().split(","))),this.$=this.vtid=n("vtid",l),this.ya=n("paidsearchparams","gclid"),this.wb=this.splitvalue=n("splitvalue",""),o.q=t.dcsdelay||o.q,this.ib=this.delayAll=n("delayAll",!1),this.H=this.preserve=n("preserve",!0),this.G=r(n("navigationtag","div,table").toLowerCase().split(",")),this.h=n("onsitedoms",""),o.e(this.h.test)||(this.h=r(this.h.toLowerCase().split(",")),this.h.forEach(function(e,t,n){n[t]=e.replace(/^\s*/,"").replace(/\s*$/,"")})),this.K=r(n("downloadtypes","xls,doc,pdf,txt,csv,zip,docx,xlsx,rar,gzip").toLowerCase().split(",")),this.K.forEach(function(e,t,n){n[t]=e.replace(/^\s*/,"").replace(/\s*$/,"")}),n("adimpressions",!1)&&(this.M=n("adsparam","WT.ac")),this.w=this.cookieExp=n("cookieexpires",63113851500),0!=this.w?(this.w=this.w<63113851500?this.w:63113851500,this.da=new Date(this.getTime()+this.w),this.T=!1):this.T=!0,r(n("pageEvents",[])).forEach(function(e){this.Db=t[e.toLowerCase()]=!0}),n("offsite",!1)&&this.Oa(),n("download",!1)&&this.Ma(),n("anchor",!1)&&this.La(),n("javascript",!1)&&this.Na(),n("rightclick",!1)&&this.Pa(),n("privateFlag",!1)||(o.b[this.j]=this),this.plugins=t.plugins||{},this.Ha(),o.d[this.domain]||(o.d[this.domain]=""),n("privateFlag",!1)||this.$a(this.j),this.P(),this},Ha:function(){for(var t in this.plugins){var n=this.plugins[t];if(!o.plugins[t]){o.plugins[t]=n;var i=n.src;o.e(i)?e.setTimeout(function(e){return function(){e()}}(i),1):o.ua(i,!1)}if(!n.async){var r=this;n.loaded=!1,this.m++,n.timeout&&e.setTimeout(function(e){return function(){e.loaded||(e.xb=!0,r.m--,r.P())}}(n),n.timeout)}}},ab:function(e){"undefined"!=typeof e&&(!o.d[this.domain]&&e.gTempWtId&&(o.d[this.domain]=e.gTempWtId),this.W=e.gTempWtId,!o.d[this.domain]&&e.gWtId&&(o.d[this.domain]=e.gWtId),this.qa=e.gWtAccountRollup),this.m--,this.P()},$a:function(e){return-1!=t.cookie.indexOf(this.V+"=")||-1!=t.cookie.indexOf("WTLOPTOUT=")||this.la?!0:(this.enabled&&(o.ua("//"+this.domain+"/"+this.gb+"/wtid.js?callback=Webtrends.dcss."+e+".dcsGetIdCallback",!0),this.m++),!1)},Z:function(e,t){var n=this.plugins[e];n&&(o.e(t)&&(this.pb()?t(this,n):c("onready",function(e,t,n){function i(){e(t,n)}return i.onetime=!0,i}(t,this,n),this)),n.loaded=!0,!n.async&&!n.xb&&this.m--),this.P()},pb:function(){return this.m<=0},P:function(){this.m<=0&&this.vb()},vb:function(){this.Ia||(a("onready",this),this.nb(),this.ub(),this.Ia=!0)},nb:function(){for(var e=0;e<this.I.length;e++)this.ma(this.I[e]);this.I=[]},ub:function(){var e=this;this.I.push=function(t){e.ma(t)}},N:function(e,t){o.N(e,t,this)},p:function(e,t){var n=this,e=e.toLowerCase(),i=o.extend({domEvent:"click",callback:l,argsa:[],args:{},delayTime:l,transform:l,filter:l,finish:l},t,!0);return c("wtmouseup",function(t,r){n.Qa(n,e,o.extend(r,i,!0))},n),this},Ba:function(e,t,n,i){t.element=n,("form"===i||"input"===i||"button"===i)&&(t.domEvent="submit"),e.ba(t)},Qa:function(e,t,n){var i=o.find;if(i&&n.event){var r=o.S(n.event,"A"),s=r.tagName?r.tagName.toLowerCase():"";if("a"===t&&"a"===s)return this.Ba(e,n,r,s);if((t=i(t))&&r&&t&&t.length)for(i=0;i<t.length;i++)if(t[i]===r){this.Ba(e,n,r,s);break}}},U:function(e,n){var i=r(t.cookie.split("; ")).filter(function(t){return-1!=t.indexOf(e+"=")})[0];return!i||i.length<e.length+1?!1:(r(i.split(e+"=")[1].split(":")).forEach(function(e){e=e.split("="),n[e[0]]=e[1]}),!0)},eb:function(e,n,i){var s=[],n=o.rb(n);r(n).forEach(function(e){s.push(e.k+"="+e.v)}),s=s.sort().join(":"),t.cookie=e+"="+s+i},bb:function(e,t,n,i){var r={};return this.U(e,r)?t==r.id&&n==r.lv&&i==r.ss?0:3:2},Za:function(){var e={};return this.U(this.V,e),e},Ya:function(){if(-1==t.cookie.indexOf("WTLOPTOUT=")){var e=this.c,n=this.V,i=new Date,r=6e4*i.getTimezoneOffset()+36e5*this.yb;i.setTime(i.getTime()+r);var s=new Date(i.getTime());e.co_f=e.vtid=e.vtvs=e.vt_f=e.vt_f_a=e.vt_f_s=e.vt_f_d=e.vt_f_tlh=e.vt_f_tlv="";var a={};if(this.U(n,a)){var l=a.id,c=parseInt(a.lv),u=parseInt(a.ss);if(null==l||"null"==l||isNaN(c)||isNaN(u))return;e.co_f=l,l=new Date(c),e.vt_f_tlh=Math.floor((l.getTime()-r)/1e3),s.setTime(u),(i.getTime()>l.getTime()+18e5||i.getTime()>s.getTime()+288e5)&&(e.vt_f_tlv=Math.floor((s.getTime()-r)/1e3),s.setTime(i.getTime()),e.vt_f_s="1"),(i.getDate()!=l.getDate()||i.getMonth()!=l.getMonth()||i.getFullYear()!=l.getFullYear())&&(e.vt_f_d="1")}else{if(this.W.length)e.co_f=o.d[this.domain].length?o.d[this.domain]:this.W,e.vt_f="1";else if(o.d[this.domain].length)e.co_f=o.d[this.domain];else{for(e.co_f="2",u=i.getTime().toString(),l=2;l<=32-u.length;l++)e.co_f+=Math.floor(16*Math.random()).toString(16);e.co_f+=u,e.vt_f="1"}0==this.qa.length&&(e.vt_f_a="1"),e.vt_f_s=e.vt_f_d="1",e.vt_f_tlh=e.vt_f_tlv="0"}e.co_f=escape(e.co_f),e.vtid="undefined"==typeof this.$?e.co_f:this.$||"",e.vtvs=(s.getTime()-r).toString(),r=(this.T?"":"; expires="+this.da.toGMTString())+"; path=/"+(""!=this.pa?"; domain="+this.pa:""),i=i.getTime().toString(),s=s.getTime().toString(),a.id=e.co_f,a.lv=i,a.ss=s,this.eb(n,a,r),n=this.bb(n,e.co_f,i,s),0!=n&&(e.co_f=e.vtvs=e.vt_f_s=e.vt_f_d=e.vt_f_tlh=e.vt_f_tlv="","undefined"==typeof this.$&&(e.vtid=""),e.vt_f=e.vt_f_a=n)}},zb:function(){try{var e;return arguments&&arguments.length>1?e={argsa:Array.prototype.slice.call(arguments)}:1===arguments.length&&(e=arguments[0]),"undefined"==typeof e&&(e={element:l,event:l,Ra:[]}),"undefined"==typeof e.argsa&&(e.argsa=[]),this.na("collect",e),this}catch(t){this.D.push(t),this.r(t)}},ga:function(e){e&&e.length>1&&(e={argsa:Array.prototype.slice.call(arguments)}),this.ba(e)},ba:function(e){try{if("undefined"!=typeof e){if(this.na("multitrack",e),e.delayTime){var t=Number(e.delayTime);this.Ca(isNaN(t)?o.q:t)}else this.ib&&this.Ca(o.q);return!1}}catch(n){this.D.push(n),this.r(n)}},Ua:function(){this.g={},this.c={},this.o={},0==arguments.length%2&&this.A(arguments)},A:function(e){if(e)for(var t=0,n=e.length;n>t;t+=2)0==e[t].indexOf("WT.")?this.c[e[t].substring(3)]=e[t+1]:0==e[t].indexOf("DCS.")?this.g[e[t].substring(4)]=e[t+1]:0==e[t].indexOf("DCSext.")&&(this.o[e[t].substring(7)]=e[t+1])},ia:function(e){var t,n;if(this.H){this.u=[];for(var i=0,r=e.length;r>i;i+=2)n=e[i],0==n.indexOf("WT.")?(t=n.substring(3),this.u.push(n,this.c[t]||"")):0==n.indexOf("DCS.")?(t=n.substring(4),this.u.push(n,this.g[t]||"")):0==n.indexOf("DCSext.")&&(t=n.substring(7),this.u.push(n,this.o[t]||""))}},ha:function(){this.H&&(this.A(this.u),this.u=[])},fb:function(){var r=new Date,s=this,a=this.c,l=this.g;if(a.tz=parseInt(-1*(r.getTimezoneOffset()/60))||"0",a.bh=r.getHours()||"0",a.ul="Netscape"==n.appName?n.language:n.Nb,"object"==typeof screen&&(a.cd="Netscape"==n.appName?screen.pixelDepth:screen.colorDepth,a.sr=screen.width+"x"+screen.height),"boolean"==typeof n.javaEnabled()&&(a.jo=n.javaEnabled()?"Yes":"No"),t.title&&(a.ti=e.aa?t.title.replace(RegExp("^"+i.protocol+"//"+i.hostname+"\\s-\\s"),""):t.title),a.js="Yes",a.jv=function(){var e=navigator.userAgent.toLowerCase(),t=parseInt(navigator.appVersion),n=-1!=e.indexOf("mac"),i=-1!=e.indexOf("firefox"),r=-1!=e.indexOf("firefox/0."),s=-1!=e.indexOf("firefox/1.0"),o=-1!=e.indexOf("firefox/1.5"),a=-1!=e.indexOf("firefox/2.0"),l=!i&&-1!=e.indexOf("mozilla")&&-1==e.indexOf("compatible"),c=-1!=e.indexOf("msie")&&-1==e.indexOf("opera"),u=c&&4==t&&-1!=e.indexOf("msie 4"),c=c&&!u,h=-1!=e.indexOf("opera 5")||-1!=e.indexOf("opera/5"),d=-1!=e.indexOf("opera 6")||-1!=e.indexOf("opera/6"),e=-1!=e.indexOf("opera")&&!h&&!d,p="1.1";return i&&!r&&!s&!o&!a?p="1.8":a?p="1.7":o?p="1.6":r||s||l&&t>=5||e?p="1.5":n&&c||d?p="1.4":c||l&&4==t||h?p="1.3":u&&(p="1.2"),p}(),a.ct="unknown",t.body&&t.body.addBehavior)try{t.body.addBehavior("#default#clientCaps"),a.ct=t.body.Gb||"unknown",t.body.addBehavior("#default#homePage"),a.hp=t.body.Hb(location.href)?"1":"0"}catch(c){s.r(c)}if(a.bs=t.all?t.body?t.body.offsetWidth+"x"+t.body.offsetHeight:"unknown":e.innerWidth+"x"+e.innerHeight,a.fv=function(){var t;if(e.ActiveXObject)for(t=15;t>0;t--)try{return new ActiveXObject("ShockwaveFlash.ShockwaveFlash."+t),t+".0"}catch(i){s.r(i)}else if(n.plugins&&n.plugins.length)for(t=0;t<n.plugins.length;t++)if(-1!=n.plugins[t].name.indexOf("Shockwave Flash"))return n.plugins[t].description.split(" ")[2];return"Not enabled"}(),a.slv=function(){var e="Not enabled";try{-1!=n.userAgent.indexOf("MSIE")?new ActiveXObject("AgControl.AgControl")&&(e="Unknown"):n.plugins["Silverlight Plug-In"]&&(e="Unknown")}catch(t){s.r(t)}if("Not enabled"!=e){var i,r,o;if("object"==typeof Silverlight&&"function"==typeof Silverlight.ta){for(i=9;i>0&&(r=i,!Silverlight.ta(r+".0"))&&e!=r;i--);for(i=9;i>=0;i--){if(o=r+"."+i,Silverlight.ta(o)){e=o;break}if(e==o)break}}}return e}(),this.X&&(a.le="string"==typeof t.defaultCharset?t.defaultCharset:"string"==typeof t.characterSet?t.characterSet:"unknown"),a.tv=o.version,a.sp=this.wb,a.dl="0",o.n&&o.n.kb&&(a.fb_ref=o.n.kb),o.n&&o.n.lb&&(a.fb_source=o.n.lb),a.ssl=0==i.protocol.indexOf("https:")?"1":"0",l.dcsdat=r.getTime(),l.dcssip=i.hostname,l.dcsuri=i.pathname,a.es=l.dcssip+l.dcsuri,i.search&&(l.dcsqry=i.search),l.dcsqry)for(var r=l.dcsqry.toLowerCase(),u=this.ya.length?this.ya.toLowerCase().split(","):[],h=0;h<u.length;h++)if(-1!=r.indexOf(u[h]+"=")){a.srch="1";break}""==t.referrer||"-"==t.referrer||"Microsoft Internet Explorer"==n.appName&&parseInt(n.appVersion)<4||(l.dcsref=t.referrer),this.la&&(l.dcscfg="1")},Xa:function(e,t){if(""!=t){if(null===e||e===l)return"";var n,e=e.toString();for(n in t)t[n]instanceof RegExp&&(e=e.replace(t[n],n));return e}return escape(e)},Q:function(e,t){if(this.X&&""!=this.oa&&!this.oa.test(e))if("dcsqry"==e){for(var n="",i=t.substring(1).split("&"),r=0;r<i.length;r++){var s=i[r],a=s.indexOf("=");if(-1!=a){var l=s.substring(0,a),s=s.substring(a+1);0!=r&&(n+="&"),n+=l+"="+o.ea(s)}}t=t.substring(0,1)+n}else t=o.ea(t);return"&"+e+"="+this.Xa(t,this.za)},Va:function(n,i){if(t.images){var r=new Image;if(this.images.push(r),2===arguments.length&&i&&o.e(i.callback)){var s=!1,a=i.callback,l=this;r.onload=function(){return s?void 0:(s=!0,a(l,i),!0)},e.setTimeout(function(){return s?void 0:(s=!0,a(l,i),!0)},o.q)}r.src=n}},cb:function(){var e;if(t.documentElement?e=t.getElementsByTagName("meta"):t.all&&(e=t.all.Lb("meta")),"undefined"!=typeof e)for(var n=e.length,i=0;n>i;i++){var r=e.item(i).name,s=e.item(i).content;e.item(i),r.length>0&&(r=r.toLowerCase(),0==r.toUpperCase().indexOf("WT.")?this.c[r.substring(3)]=s:0==r.toUpperCase().indexOf("DCSEXT.")?this.o[r.substring(7)]=s:0==r.toUpperCase().indexOf("DCS.")?this.g[r.substring(4)]=s:this.va&&-1!=this.va.indexOf(r)&&(this.o["meta_"+r]=s))}},ja:function(e){if(-1==t.cookie.indexOf("WTLOPTOUT=")){var r=this.c,s=this.g,o=this.o,a=this.i18n,c="http"+(0==i.protocol.indexOf("https:")?"s":"")+"://"+this.domain+(""==this.dcsid?"":"/"+this.dcsid)+"/dcs.gif?";a&&(r.dep="");for(var u in s)""!=s[u]&&s[u]!=l&&"function"!=typeof s[u]&&(c+=this.Q(u,s[u]));for(u in r)""!=r[u]&&r[u]!=l&&"function"!=typeof r[u]&&(c+=this.Q("WT."+u,r[u]));for(u in o)""!=o[u]&&o[u]!=l&&"function"!=typeof o[u]&&(a&&(r.dep=0==r.dep.length?u:r.dep+";"+u),c+=this.Q(u,o[u]));a&&r.dep.length>0&&(c+=this.Q("WT.dep",r.dep)),c.length>2048&&n.userAgent.indexOf("MSIE")>=0&&(c=c.substring(0,2040)+"&WT.tu=1"),this.Va(c,e),this.c.ad=""}},sb:function(){this.fb(),this.cb(),this.M&&this.M.length>0&&this.Ta(),this.tb=!0},getTime:function(){return(new Date).getTime()},jb:0,Ca:function(e){for(var t=this.getTime();this.getTime()-t<e;)this.jb++},na:function(e,t){e||(e="collect"),this.I.push({action:e,message:t})},ma:function(e){if(this.enabled){var t="action_"+e.action,n=e.message;if(this.tb||this.sb(),n.event&&!n.element&&(n.element=o.S(n.event,"A")),!o.e(n.filter)||!n.filter(this,n)){if(n.args){n.argsa=n.argsa||[];for(var i in n.args)n.argsa.push(i,n.args[i])}n.element&&n.element.getAttribute&&n.element.getAttribute("data-wtmt")&&(n.argsa=n.argsa.concat(n.element.getAttribute("data-wtmt").split(","))),a("transform."+e.action,this,n),a("transform.all",this,n),n.transform&&o.e(n.transform)&&n.transform(this,n),this.Ya(),o.e(this[t])&&this[t](n),a("finish."+e.action,this,n),a("finish.all",this,n),n.finish&&o.e(n.finish)&&n.finish(this,n)}}},Ka:function(e){var t=e&&e.argsa&&0==e.argsa.length%2;t&&(this.ia(e.argsa),this.A(e.argsa)),this.g.dcsdat=this.getTime(),this.ja(e),t&&this.ha()},Ja:function(e){e&&e.argsa&&0==e.argsa.length%2&&this.A(e.argsa),this.ja(e)},Wa:function(e){if(0===arguments.length&&this.images&&this.images.length>0&&(e=this.images.length-1),0>e||e===l)return"No requests";var t=this.images[e].src,n=t.indexOf("?"),i=t.substring(0,n).split("/"),s="<h3>url info</h3><b>Protocol</b>: <code>"+i[0]+"<br></code>";return s+="<b>Domain:</b> <code>"+i[2]+"<br></code>",s+="<b>Path:</b> <code>/"+i[3]+"/"+i[4]+"</code>",s+="<h3>dcs image Params:</h3><code>"+t.substring(n+1).replace(/\&/g,"<br>")+"</code>",s+="<br><h3>Cookies</h3><br><code>"+document.cookie.replace(/\;/g,"<br>")+"</code><br>",s+="<b>Image Count: </b><code>"+e+1+"<br></code>",this.D.length>0&&(s+="<br><b>Errors: </b><br>",r(this.D).forEach(function(e){s+=e.stack?"<pre>"+e.stack+"</pre><br>":"<pre>"+e+"</pre><br>"})),s},z:function(e){var t=!1;return e&&e.Kb&&(t=!0),e=this.Wa(),t?e:(this.J&&!this.J.closed&&this.J.close(),this.J=window.open("","dcsDebug","width=500,height=650,scrollbars=yes,resizable=yes"),this.J.document.write(e),this.J.focus(),void 0)},F:function(t){var n={};return n.C=t.hostname?t.hostname.split(":")[0]:"",n.l=t.pathname?0!=t.pathname.indexOf("/")?"/"+t.pathname:t.pathname:"/",n.i=t.search?t.search.substring(t.search.indexOf("?")+1,t.search.length):"",n.B=e.location,n},fa:function(e,t){if(e.length>0){if(e=e.toLowerCase(),e==window.location.hostname.toLowerCase())return!0;if(o.e(t.test))return t.test(e);if(t.length>0)for(var n=t.length,i=0;n>i;i++)if(e==t[i])return!0}return!1},ka:function(e,t){for(var n=e.toLowerCase().substring(e.lastIndexOf(".")+1,e.length),i=t.length,r=0;i>r;r++)if(n==t[r])return!0;return!1},R:function(e,t){var n,i,r="",s="",a=t.length;for(n=0;a>n&&(i=t[n],!(i.length&&(s=o.S(e,i),r=s.getAttribute&&s.getAttribute("id")?s.getAttribute("id"):"",s=s.className||"",r.length||s.length)));n++);return r.length?r:s},sa:function(e,n,i){var r,s=t.all?n.innerText:n.text,e=o.S(e,"IMG");return e&&e.alt?r=e.alt:s?r=s:n.innerHTML&&(r=n.innerHTML),r?r:i},t:function(e){this.H||(this.ca=this.H=!0,this.ia(e.argsa),this.A(e.argsa))},s:function(e){if(this.ca){var t=this;e.finish=function(){t.ha(),t.H=!1},this.ca=!1}},L:function(e){var t=!1;return e||(e=window.event),e.which?t=3==e.which:e.button&&(t=2==e.button),t},Oa:function(){this.p("a",{filter:function(e,t){var n=t.element||{},i=t.event||{};return!n.hostname||e.fa(n.hostname,e.h)||e.L(i)?!0:!1},transform:function(e,t){var n=t.element||{};e.t(t),n=e.F(n),t.argsa.push("DCS.dcssip",n.C,"DCS.dcsuri",n.l,"DCS.dcsqry",n.i,"DCS.dcsref",n.B,"WT.ti","Offsite:"+n.C+n.l+(n.i.length?"?"+n.i:""),"WT.dl","24"),e.s(t)}})},La:function(){this.p("a",{filter:function(e,t){var n=t.element||{},i=t.event||{};return e.fa(n.hostname,e.h)&&n.hash&&""!=n.hash&&"#"!=n.hash&&!e.L(i)?!1:!0},transform:function(e,t){var n=t.event||{},i=t.element||{};e.t(t),i=e.F(i),t.argsa.push("DCS.dcssip",i.C,"DCS.dcsuri",escape(i.l+t.element.hash),"DCS.dcsqry",i.i,"DCS.dcsref",i.B,"WT.ti",escape("Anchor:"+t.element.hash),"WT.nv",e.R(n,e.G),"WT.dl","21"),e.s(t)}})},Ma:function(){this.p("a",{filter:function(e,t){var n=t.event||{};return e.ka((t.element||{}).pathname,e.K)&&!e.L(n)?!1:!0},transform:function(e,t){var n=t.event||{},i=t.element||{};e.t(t);var r=e.F(i);t.argsa.push("DCS.dcssip",r.C,"DCS.dcsuri",r.l,"DCS.dcsqry",r.i,"DCS.dcsref",r.B,"WT.ti","Download:"+e.sa(n,i,r.l),"WT.nv",e.R(n,e.G),"WT.dl","20"),e.s(t)}})},Pa:function(){this.p("a",{filter:function(e,t){var n=t.event||{};return e.ka((t.element||{}).pathname,e.K)&&e.L(n)?!1:!0},transform:function(e,t){var n=t.event||{},i=t.element||{};e.t(t);var r=e.F(i);t.argsa.push("DCS.dcssip",r.C,"DCS.dcsuri",r.l,"DCS.dcsqry",r.i,"DCS.dcsref",r.B,"WT.ti","RightClick:"+e.sa(n,i,r.l),"WT.nv",e.R(n,e.G),"WT.dl","25"),e.s(t)}})},Na:function(){this.p("a",{filter:function(e,t){var n=t.element||{};return n.href&&n.protocol&&"javascript:"==n.protocol.toLowerCase()?!1:!0},transform:function(t,n){var i=n.event||{},r=n.element||{};t.t(n);var s=t.F(r);n.argsa.push("DCS.dcssip",e.location.hostname,"DCS.dcsuri",r.href,"DCS.dcsqry",s.i,"DCS.dcsref",s.B,"WT.ti","JavaScript:"+(r.innerHTML?r.innerHTML:""),"WT.dl","22","WT.nv",t.R(i,t.G)),t.s(n)}})},Ta:function(){if(t.links){var e,n=this.M+"=",i=n.length,n=RegExp(n,"i"),r=t.links.length,s=end=-1,o=urlp=value="",o=t.URL+"",s=o.search(n);-1!=s&&(end=o.indexOf("&",s),urlp=o.substring(s,-1!=end?end:o.length),e=RegExp(urlp+"(&|#)","i"));for(var a=0;r>a;a++)t.links[a].href&&(o=t.links[a].href+"",urlp.length>0&&(o=o.replace(e,"$1")),s=o.search(n),-1!=s)&&(s+=i,end=o.indexOf("&",s),value=o.substring(s,-1!=end?end:o.length),this.c.ad=this.c.ad?this.c.ad+";"+value:value)}}},o.a.prototype.action_multitrack=o.a.prototype.Ka,o.a.prototype.action_collect=o.a.prototype.Ja,e.dcsMultiTrack=function(){for(var e=[],t=0;t<arguments.length;t++)e[t]=arguments[t];o.wa({Ra:e})},e.Webtrends=o,e.WebTrends=o,e.WT=e.Webtrends,e.dcsDebug=o.z,o.multiTrack=o.wa,o.dcs=o.a,o.dcss=o.b,o.addTransform=o.N,o.bindEvent=o.O,o.getQryParams=o.ra,o.dcsdelay=o.q,o.find=o.find,o.registerPlugin=o.Z,o.dcsDebug=o.z,o.a.prototype.init=o.a.prototype.Y,o.a.prototype.dcsMultiTrack=o.a.prototype.ga,o.a.prototype.track=o.a.prototype.zb,o.a.prototype.addSelector=o.a.prototype.p,o.a.prototype.dcsGetIdCallback=o.a.prototype.ab,o.a.prototype.dcsDebug=o.a.prototype.z,o.a.prototype.dcsCleanUp=o.a.prototype.Ua,o.a.prototype.dcsGetFPC=o.a.prototype.Za,o.a.prototype.addTransform=o.a.prototype.N,o.Y()}}(window,window.document,window.navigator,window.location);