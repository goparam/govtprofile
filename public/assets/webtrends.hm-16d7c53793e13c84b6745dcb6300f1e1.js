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
(function(t,n){if(!t.Webtrends)return;var r={plugMap:{},getKeys:function(e,t){for(var n in e)e.hasOwnProperty(n)&&t.push(n);return t},AtoO:function(e){var t={};for(var n=0;n<e.length;++n)t[e[n]]=!0;return t},getURLKeepParms:function(e){if(e.hmurlparams&&e.hmurlparams.length>0){var n=e.hmurlparams.split(",");urlParams=r.AtoO(n);var i=[],s=Webtrends.getQryParams(t.location.search),o=r.getKeys(s,[]).sort();for(var u=0;u<o.length;++u)urlParams[o[u]]&&(i.push(o[u]),i.push(s[o[u]]));return i.join(",")}return""},hm_clickEvent:function(i,s){var o=r.plugMap[i.dcssID];if(!o)return;e=s.event||t.event;var u=0,a=0;typeof t.innerWidth=="number"?(u=t.innerWidth,a=t.innerHeight):n.documentElement&&(n.documentElement.clientWidth||n.documentElement.clientHeight)?(u=n.documentElement.clientWidth,a=n.documentElement.clientHeight):n.body&&(n.body.clientWidth||n.body.clientHeight)&&(u=n.body.clientWidth,a=n.body.clientHeight);var f=0,l=0;typeof t.pageYOffset=="number"?(l=t.pageYOffset,f=t.pageXOffset):n.body&&(n.body.scrollLeft||n.body.scrollTop)?(l=n.body.scrollTop,f=n.body.scrollLeft):n.documentElement&&(n.documentElement.scrollLeft||n.documentElement.scrollTop)&&(l=n.documentElement.scrollTop,f=n.documentElement.scrollLeft);if(e.clientX>u||e.clientX<0||e.clientY>a||e.clientY<0||e.clientX=="NaN"||f=="NaN"||u=="NaN"||a=="Nan")return;var c=e.clientX+f,h=e.clientY+l;o.mTrackOptions.args||(o.mTrackOptions.args={}),o.mTrackOptions.args["WT.dl"]="125",o.mTrackOptions.args["WT.hm_x"]=c,o.mTrackOptions.args["WT.hm_y"]=h,o.mTrackOptions.args["WT.hm_w"]=u,o.mTrackOptions.args["WT.hm_h"]=a,o.mTrackOptions.args["WT.hm_tv"]="10.2.10",o.urlKeepParams&&(o.mTrackOptions.args["WT.hm_url"]=o.urlKeepParams),o.dcsMultiTrack(o.mTrackOptions)},hm_loader:function(e,t){if(t.filter&&t.filter())return;var n=new Webtrends.dcs,i={dcsid:t.dcsid?t.dcsid:e.dcsid,domain:t.domain?t.domain:"hm.webtrends.com",timezone:e.timezone,i18n:e.i18n,vtid:e.vtid,enabled:e.enabled,privateFlag:!0};if(e.FPCConfig){var s={},o={};s.enabled=e.FPCConfig.enabled,s.name=e.FPCConfig.name,s.domain=e.FPCConfig.domain,s.expires=e.FPCConfig.expiry,o.enabled=e.enabled,o.cfgType=e.cfgType,i.FPCConfig=s,i.TPCConfig=o}else i.fpc=e.fpc,i.fpcdom=e.fpcdom,i.cookieexpires=e.cookieExp;n.init(i);var u=r.getURLKeepParms(t);n.urlKeepParams=u,Webtrends.addTransform(function(e,t){t.argsa||(t.argsa=[]),t.argsa.push("WT.hm_url",u)},"collect",e),r.plugMap[e.dcssID]=n,Webtrends.bindEvent("wtmouseup",r.hm_clickEvent,e),t.mTrackOptions?n.mTrackOptions=t.mTrackOptions:n.mTrackOptions={}}};t.WebtrendsHeatMap=r,Webtrends.registerPlugin("hm",r.hm_loader)})(window,window.document);