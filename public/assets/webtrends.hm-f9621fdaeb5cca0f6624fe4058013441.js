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
!function(t,n){if(t.Webtrends){var i={plugMap:{},getKeys:function(e,t){for(var n in e)e.hasOwnProperty(n)&&t.push(n);return t},AtoO:function(e){for(var t={},n=0;n<e.length;++n)t[e[n]]=!0;return t},getURLKeepParms:function(e){if(e.hmurlparams&&e.hmurlparams.length>0){var n=e.hmurlparams.split(",");urlParams=i.AtoO(n);for(var s=[],r=Webtrends.getQryParams(t.location.search),o=i.getKeys(r,[]).sort(),a=0;a<o.length;++a)urlParams[o[a]]&&(s.push(o[a]),s.push(r[o[a]]));return s.join(",")}return""},hm_clickEvent:function(s,r){var o=i.plugMap[s.dcssID];if(o){e=r.event||t.event;var a=0,l=0;"number"==typeof t.innerWidth?(a=t.innerWidth,l=t.innerHeight):n.documentElement&&(n.documentElement.clientWidth||n.documentElement.clientHeight)?(a=n.documentElement.clientWidth,l=n.documentElement.clientHeight):n.body&&(n.body.clientWidth||n.body.clientHeight)&&(a=n.body.clientWidth,l=n.body.clientHeight);var u=0,c=0;if("number"==typeof t.pageYOffset?(c=t.pageYOffset,u=t.pageXOffset):n.body&&(n.body.scrollLeft||n.body.scrollTop)?(c=n.body.scrollTop,u=n.body.scrollLeft):n.documentElement&&(n.documentElement.scrollLeft||n.documentElement.scrollTop)&&(c=n.documentElement.scrollTop,u=n.documentElement.scrollLeft),!(e.clientX>a||e.clientX<0||e.clientY>l||e.clientY<0||"NaN"==e.clientX||"NaN"==u||"NaN"==a||"Nan"==l)){var d=e.clientX+u,h=e.clientY+c;o.mTrackOptions.args||(o.mTrackOptions.args={}),o.mTrackOptions.args["WT.dl"]="125",o.mTrackOptions.args["WT.hm_x"]=d,o.mTrackOptions.args["WT.hm_y"]=h,o.mTrackOptions.args["WT.hm_w"]=a,o.mTrackOptions.args["WT.hm_h"]=l,o.mTrackOptions.args["WT.hm_tv"]="10.2.10",o.urlKeepParams&&(o.mTrackOptions.args["WT.hm_url"]=o.urlKeepParams),o.dcsMultiTrack(o.mTrackOptions)}}},hm_loader:function(e,t){if(!t.filter||!t.filter()){var n=new Webtrends.dcs,s={dcsid:t.dcsid?t.dcsid:e.dcsid,domain:t.domain?t.domain:"hm.webtrends.com",timezone:e.timezone,i18n:e.i18n,vtid:e.vtid,enabled:e.enabled,privateFlag:!0};if(e.FPCConfig){var r={},o={};r.enabled=e.FPCConfig.enabled,r.name=e.FPCConfig.name,r.domain=e.FPCConfig.domain,r.expires=e.FPCConfig.expiry,o.enabled=e.enabled,o.cfgType=e.cfgType,s.FPCConfig=r,s.TPCConfig=o}else s.fpc=e.fpc,s.fpcdom=e.fpcdom,s.cookieexpires=e.cookieExp;n.init(s);var a=i.getURLKeepParms(t);n.urlKeepParams=a,Webtrends.addTransform(function(e,t){t.argsa||(t.argsa=[]),t.argsa.push("WT.hm_url",a)},"collect",e),i.plugMap[e.dcssID]=n,Webtrends.bindEvent("wtmouseup",i.hm_clickEvent,e),n.mTrackOptions=t.mTrackOptions?t.mTrackOptions:{}}}};t.WebtrendsHeatMap=i,Webtrends.registerPlugin("hm",i.hm_loader)}}(window,window.document);