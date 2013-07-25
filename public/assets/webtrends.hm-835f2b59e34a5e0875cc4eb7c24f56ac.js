/*
Copyright (c) 2012 Webtrends, Inc.
Heatmap Plugin v10.2.10
An example of including the plugin with your tag.
<script type="text/javascript">
// async loader function, called by webtrends.js after load
window.webtrendsAsyncInit=function(){
var dcs=new Webtrends.dcs().init({
dcsid:"YOUR_WEBTRENDS_DCSID_HERE"
,timezone:YOUR_TIMEZONE_HERE
,plugins:{
hm:{src:"webtrends.hm.js"}
}
}).track();
};
(function(){
var s=document.createElement("script"); s.async=true; s.src="webtrends.js";
var s2=document.getElementsByTagName("script")[0]; s2.parentNode.insertBefore(s,s2);
}());
</script>
The track() function will return 'true' when it tracks data, 'false' otherwise.
*/
!function(t,n){if(t.Webtrends){var i={plugMap:{},getKeys:function(e,t){for(var n in e)e.hasOwnProperty(n)&&t.push(n);return t},AtoO:function(e){for(var t={},n=0;n<e.length;++n)t[e[n]]=!0;return t},getURLKeepParms:function(e){if(e.hmurlparams&&e.hmurlparams.length>0){var n=e.hmurlparams.split(",");urlParams=i.AtoO(n);for(var r=[],o=Webtrends.getQryParams(t.location.search),s=i.getKeys(o,[]).sort(),a=0;a<s.length;++a)urlParams[s[a]]&&(r.push(s[a]),r.push(o[s[a]]));return r.join(",")}return""},hm_clickEvent:function(r,o){var s=i.plugMap[r.dcssID];if(s){e=o.event||t.event;var a=0,l=0;"number"==typeof t.innerWidth?(a=t.innerWidth,l=t.innerHeight):n.documentElement&&(n.documentElement.clientWidth||n.documentElement.clientHeight)?(a=n.documentElement.clientWidth,l=n.documentElement.clientHeight):n.body&&(n.body.clientWidth||n.body.clientHeight)&&(a=n.body.clientWidth,l=n.body.clientHeight);var c=0,u=0;if("number"==typeof t.pageYOffset?(u=t.pageYOffset,c=t.pageXOffset):n.body&&(n.body.scrollLeft||n.body.scrollTop)?(u=n.body.scrollTop,c=n.body.scrollLeft):n.documentElement&&(n.documentElement.scrollLeft||n.documentElement.scrollTop)&&(u=n.documentElement.scrollTop,c=n.documentElement.scrollLeft),!(e.clientX>a||e.clientX<0||e.clientY>l||e.clientY<0||"NaN"==e.clientX||"NaN"==c||"NaN"==a||"Nan"==l)){var h=e.clientX+c,d=e.clientY+u;s.mTrackOptions.args||(s.mTrackOptions.args={}),s.mTrackOptions.args["WT.dl"]="125",s.mTrackOptions.args["WT.hm_x"]=h,s.mTrackOptions.args["WT.hm_y"]=d,s.mTrackOptions.args["WT.hm_w"]=a,s.mTrackOptions.args["WT.hm_h"]=l,s.mTrackOptions.args["WT.hm_tv"]="10.2.10",s.urlKeepParams&&(s.mTrackOptions.args["WT.hm_url"]=s.urlKeepParams),s.dcsMultiTrack(s.mTrackOptions)}}},hm_loader:function(e,t){if(!t.filter||!t.filter()){var n=new Webtrends.dcs,r={dcsid:t.dcsid?t.dcsid:e.dcsid,domain:t.domain?t.domain:"hm.webtrends.com",timezone:e.timezone,i18n:e.i18n,vtid:e.vtid,enabled:e.enabled,privateFlag:!0};if(e.FPCConfig){var o={},s={};o.enabled=e.FPCConfig.enabled,o.name=e.FPCConfig.name,o.domain=e.FPCConfig.domain,o.expires=e.FPCConfig.expiry,s.enabled=e.enabled,s.cfgType=e.cfgType,r.FPCConfig=o,r.TPCConfig=s}else r.fpc=e.fpc,r.fpcdom=e.fpcdom,r.cookieexpires=e.cookieExp;n.init(r);var a=i.getURLKeepParms(t);n.urlKeepParams=a,Webtrends.addTransform(function(e,t){t.argsa||(t.argsa=[]),t.argsa.push("WT.hm_url",a)},"collect",e),i.plugMap[e.dcssID]=n,Webtrends.bindEvent("wtmouseup",i.hm_clickEvent,e),n.mTrackOptions=t.mTrackOptions?t.mTrackOptions:{}}}};t.WebtrendsHeatMap=i,Webtrends.registerPlugin("hm",i.hm_loader)}}(window,window.document);