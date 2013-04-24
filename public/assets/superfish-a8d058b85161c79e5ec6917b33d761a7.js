/*
 * Superfish v1.4.8 - jQuery menu widget
 * Copyright (c) 2008 Joel Birch
 *
 * Dual licensed under the MIT and GPL licenses:
 * 	http://www.opensource.org/licenses/mit-license.php
 * 	http://www.gnu.org/licenses/gpl.html
 *
 * CHANGELOG: http://users.tpg.com.au/j_birch/plugins/superfish/changelog.txt
 */
(function(e){e.fn.superfish=function(t){var n=e.fn.superfish,r=n.c,i=e(['<span class="',r.arrowClass,'"> &#187;</span>'].join("")),s=function(){var t=e(this),n=u(t);clearTimeout(n.sfTimer),t.showSuperfishUl().siblings().hideSuperfishUl()},o=function(){var t=e(this),r=u(t),i=n.op;clearTimeout(r.sfTimer),r.sfTimer=setTimeout(function(){i.retainPath=e.inArray(t[0],i.$path)>-1,t.hideSuperfishUl(),i.$path.length&&t.parents(["li.",i.hoverClass].join("")).length<1&&s.call(i.$path)},i.delay)},u=function(e){var t=e.parents(["ul.",r.menuClass,":first"].join(""))[0];return n.op=n.o[t.serial],t},a=function(e){e.addClass(r.anchorClass).append(i.clone())};return this.each(function(){var i=this.serial=n.o.length,u=e.extend({},n.defaults,t);u.$path=e("li."+u.pathClass,this).slice(0,u.pathLevels).each(function(){e(this).addClass([u.hoverClass,r.bcClass].join(" ")).filter("li:has(ul)").removeClass(u.pathClass)}),n.o[i]=n.op=u,e("li:has(ul)",this)[e.fn.hoverIntent&&!u.disableHI?"hoverIntent":"hover"](s,o).each(function(){u.autoArrows&&a(e(">a:first-child",this))}).not("."+r.bcClass).hideSuperfishUl();var f=e("a",this);f.each(function(e){var t=f.eq(e).parents("li");f.eq(e).focus(function(){s.call(t)}).blur(function(){o.call(t)})}),u.onInit.call(this)}).each(function(){var t=[r.menuClass];n.op.dropShadows&&!(e.browser.msie&&e.browser.version<7)&&t.push(r.shadowClass),e(this).addClass(t.join(" "))})};var t=e.fn.superfish;t.o=[],t.op={},t.IE7fix=function(){var n=t.op;e.browser.msie&&e.browser.version>6&&n.dropShadows&&n.animation.opacity!=undefined&&this.toggleClass(t.c.shadowClass+"-off")},t.c={bcClass:"sf-breadcrumb",menuClass:"sf-js-enabled",anchorClass:"sf-with-ul",arrowClass:"sf-sub-indicator",shadowClass:"sf-shadow"},t.defaults={hoverClass:"sfHover",pathClass:"overideThisToUse",pathLevels:1,delay:800,animation:{opacity:"show"},speed:"normal",autoArrows:!0,dropShadows:!0,disableHI:!1,onInit:function(){},onBeforeShow:function(){},onShow:function(){},onHide:function(){}},e.fn.extend({hideSuperfishUl:function(){var n=t.op,r=n.retainPath===!0?n.$path:"";n.retainPath=!1;var i=e(["li.",n.hoverClass].join(""),this).add(this).not(r).removeClass(n.hoverClass).find(">ul").hide().css("visibility","hidden");return n.onHide.call(i),this},showSuperfishUl:function(){var e=t.op,n=t.c.shadowClass+"-off",r=this.addClass(e.hoverClass).find(">ul:hidden").css("visibility","visible");return t.IE7fix.call(r),e.onBeforeShow.call(r),r.animate(e.animation,e.speed,function(){t.IE7fix.call(r),e.onShow.call(r)}),this}})})(jQuery);