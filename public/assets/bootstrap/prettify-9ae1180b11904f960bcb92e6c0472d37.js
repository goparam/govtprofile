var q=null;window.PR_SHOULD_USE_CONTINUATION=!0,function(){function e(e){function t(e){var t=e.charCodeAt(0);if(92!==t)return t;var n=e.charAt(1);return(t=h[n])?t:n>="0"&&"7">=n?parseInt(e.substring(1),8):"u"===n||"x"===n?parseInt(e.substring(2),16):e.charCodeAt(1)}function n(e){return 32>e?(16>e?"\\x0":"\\x")+e.toString(16):(e=String.fromCharCode(e),("\\"===e||"-"===e||"["===e||"]"===e)&&(e="\\"+e),e)}function i(e){for(var i=e.substring(1,e.length-1).match(/\\u[\dA-Fa-f]{4}|\\x[\dA-Fa-f]{2}|\\[0-3][0-7]{0,2}|\\[0-7]{1,2}|\\[\S\s]|[^\\]/g),e=[],o=[],s="^"===i[0],r=s?1:0,a=i.length;a>r;++r){var l=i[r];if(/\\[bdsw]/i.test(l))e.push(l);else{var u,l=t(l);a>r+2&&"-"===i[r+1]?(u=t(i[r+2]),r+=2):u=l,o.push([l,u]),65>u||l>122||(65>u||l>90||o.push([32|Math.max(65,l),32|Math.min(u,90)]),97>u||l>122||o.push([-33&Math.max(97,l),-33&Math.min(u,122)]))}}for(o.sort(function(e,t){return e[0]-t[0]||t[1]-e[1]}),i=[],l=[0/0,0/0],r=0;r<o.length;++r)a=o[r],a[0]<=l[1]+1?l[1]=Math.max(l[1],a[1]):i.push(l=a);for(o=["["],s&&o.push("^"),o.push.apply(o,e),r=0;r<i.length;++r)a=i[r],o.push(n(a[0])),a[1]>a[0]&&(a[1]+1>a[0]&&o.push("-"),o.push(n(a[1])));return o.push("]"),o.join("")}function o(e){for(var t=e.source.match(/\[(?:[^\\\]]|\\[\S\s])*]|\\u[\dA-Fa-f]{4}|\\x[\dA-Fa-f]{2}|\\\d+|\\[^\dux]|\(\?[!:=]|[()^]|[^()[\\^]+/g),n=t.length,o=[],a=0,l=0;n>a;++a){var u=t[a];"("===u?++l:"\\"===u.charAt(0)&&(u=+u.substring(1))&&l>=u&&(o[u]=-1)}for(a=1;a<o.length;++a)-1===o[a]&&(o[a]=++s);for(l=a=0;n>a;++a)u=t[a],"("===u?(++l,void 0===o[l]&&(t[a]="(?:")):"\\"===u.charAt(0)&&(u=+u.substring(1))&&l>=u&&(t[a]="\\"+o[l]);for(l=a=0;n>a;++a)"^"===t[a]&&"^"!==t[a+1]&&(t[a]="");if(e.ignoreCase&&r)for(a=0;n>a;++a)u=t[a],e=u.charAt(0),u.length>=2&&"["===e?t[a]=i(u):"\\"!==e&&(t[a]=u.replace(/[A-Za-z]/g,function(e){return e=e.charCodeAt(0),"["+String.fromCharCode(-33&e,32|e)+"]"}));return t.join("")}for(var s=0,r=!1,a=!1,l=0,u=e.length;u>l;++l){var c=e[l];if(c.ignoreCase)a=!0;else if(/[a-z]/i.test(c.source.replace(/\\u[\da-f]{4}|\\x[\da-f]{2}|\\[^UXux]/gi,""))){r=!0,a=!1;break}}for(var h={b:8,t:9,n:10,v:11,f:12,r:13},d=[],l=0,u=e.length;u>l;++l){if(c=e[l],c.global||c.multiline)throw Error(""+c);d.push("(?:"+o(c)+")")}return RegExp(d.join("|"),a?"gi":"g")}function t(e){function t(e){switch(e.nodeType){case 1:if(i.test(e.className))break;for(var n=e.firstChild;n;n=n.nextSibling)t(n);n=e.nodeName,("BR"===n||"LI"===n)&&(o[a]="\n",r[a<<1]=s++,r[1|a++<<1]=e);break;case 3:case 4:n=e.nodeValue,n.length&&(n=l?n.replace(/\r\n?/g,"\n"):n.replace(/[\t\n\r ]+/g," "),o[a]=n,r[a<<1]=s,s+=n.length,r[1|a++<<1]=e)}}var n,i=/(?:^|\s)nocode(?:\s|$)/,o=[],s=0,r=[],a=0;e.currentStyle?n=e.currentStyle.whiteSpace:window.getComputedStyle&&(n=document.defaultView.getComputedStyle(e,q).getPropertyValue("white-space"));var l=n&&"pre"===n.substring(0,3);return t(e),{a:o.join("").replace(/\n$/,""),c:r}}function n(e,t,n,i){t&&(e={a:t,d:e},n(e),i.push.apply(i,e.e))}function i(t,i){function o(e){for(var t=e.d,u=[t,"pln"],c=0,h=e.a.match(s)||[],d={},p=0,f=h.length;f>p;++p){var m,g=h[p],v=d[g],y=void 0;if("string"==typeof v)m=!1;else{var b=r[g.charAt(0)];if(b)y=g.match(b[1]),v=b[0];else{for(m=0;l>m;++m)if(b=i[m],y=g.match(b[1])){v=b[0];break}y||(v="pln")}!(m=v.length>=5&&"lang-"===v.substring(0,5))||y&&"string"==typeof y[1]||(m=!1,v="src"),m||(d[g]=v)}if(b=c,c+=g.length,m){m=y[1];var w=g.indexOf(m),x=w+m.length;y[2]&&(x=g.length-y[2].length,w=x-m.length),v=v.substring(5),n(t+b,g.substring(0,w),o,u),n(t+b+w,m,a(v,m),u),n(t+b+x,g.substring(x),o,u)}else u.push(t+b,v)}e.e=u}var s,r={};!function(){for(var n=t.concat(i),o=[],a={},l=0,u=n.length;u>l;++l){var c=n[l],h=c[3];if(h)for(var d=h.length;--d>=0;)r[h.charAt(d)]=c;c=c[1],h=""+c,a.hasOwnProperty(h)||(o.push(c),a[h]=q)}o.push(/[\S\s]/),s=e(o)}();var l=i.length;return o}function o(e){var t=[],n=[];e.tripleQuotedStrings?t.push(["str",/^(?:'''(?:[^'\\]|\\[\S\s]|''?(?=[^']))*(?:'''|$)|"""(?:[^"\\]|\\[\S\s]|""?(?=[^"]))*(?:"""|$)|'(?:[^'\\]|\\[\S\s])*(?:'|$)|"(?:[^"\\]|\\[\S\s])*(?:"|$))/,q,"'\""]):e.multiLineStrings?t.push(["str",/^(?:'(?:[^'\\]|\\[\S\s])*(?:'|$)|"(?:[^"\\]|\\[\S\s])*(?:"|$)|`(?:[^\\`]|\\[\S\s])*(?:`|$))/,q,"'\"`"]):t.push(["str",/^(?:'(?:[^\n\r'\\]|\\.)*(?:'|$)|"(?:[^\n\r"\\]|\\.)*(?:"|$))/,q,"\"'"]),e.verbatimStrings&&n.push(["str",/^@"(?:[^"]|"")*(?:"|$)/,q]);var o=e.hashComments;return o&&(e.cStyleComments?(o>1?t.push(["com",/^#(?:##(?:[^#]|#(?!##))*(?:###|$)|.*)/,q,"#"]):t.push(["com",/^#(?:(?:define|elif|else|endif|error|ifdef|include|ifndef|line|pragma|undef|warning)\b|[^\n\r]*)/,q,"#"]),n.push(["str",/^<(?:(?:(?:\.\.\/)*|\/?)(?:[\w-]+(?:\/[\w-]+)+)?[\w-]+\.h|[a-z]\w*)>/,q])):t.push(["com",/^#[^\n\r]*/,q,"#"])),e.cStyleComments&&(n.push(["com",/^\/\/[^\n\r]*/,q]),n.push(["com",/^\/\*[\S\s]*?(?:\*\/|$)/,q])),e.regexLiterals&&n.push(["lang-regex",/^(?:^^\.?|[!+-]|!=|!==|#|%|%=|&|&&|&&=|&=|\(|\*|\*=|\+=|,|-=|->|\/|\/=|:|::|;|<|<<|<<=|<=|=|==|===|>|>=|>>|>>=|>>>|>>>=|[?@[^]|\^=|\^\^|\^\^=|{|\||\|=|\|\||\|\|=|~|break|case|continue|delete|do|else|finally|instanceof|return|throw|try|typeof)\s*(\/(?=[^*/])(?:[^/[\\]|\\[\S\s]|\[(?:[^\\\]]|\\[\S\s])*(?:]|$))+\/)/]),(o=e.types)&&n.push(["typ",o]),e=(""+e.keywords).replace(/^ | $/g,""),e.length&&n.push(["kwd",RegExp("^(?:"+e.replace(/[\s,]+/g,"|")+")\\b"),q]),t.push(["pln",/^\s+/,q," \r\n	 "]),n.push(["lit",/^@[$_a-z][\w$@]*/i,q],["typ",/^(?:[@_]?[A-Z]+[a-z][\w$@]*|\w+_t\b)/,q],["pln",/^[$_a-z][\w$@]*/i,q],["lit",/^(?:0x[\da-f]+|(?:\d(?:_\d+)*\d*(?:\.\d*)?|\.\d\+)(?:e[+-]?\d+)?)[a-z]*/i,q,"0123456789"],["pln",/^\\[\S\s]?/,q],["pun",/^.[^\s\w"-$'./@\\`]*/,q]),i(t,n)}function s(e,t){function n(e){switch(e.nodeType){case 1:if(s.test(e.className))break;if("BR"===e.nodeName)i(e),e.parentNode&&e.parentNode.removeChild(e);else for(e=e.firstChild;e;e=e.nextSibling)n(e);break;case 3:case 4:if(l){var t=e.nodeValue,o=t.match(r);if(o){var u=t.substring(0,o.index);e.nodeValue=u,(t=t.substring(o.index+o[0].length))&&e.parentNode.insertBefore(a.createTextNode(t),e.nextSibling),i(e),u||e.parentNode.removeChild(e)}}}}function i(e){function t(e,n){var i=n?e.cloneNode(!1):e,o=e.parentNode;if(o){var o=t(o,1),s=e.nextSibling;o.appendChild(i);for(var r=s;r;r=s)s=r.nextSibling,o.appendChild(r)}return i}for(;!e.nextSibling;)if(e=e.parentNode,!e)return;for(var n,e=t(e.nextSibling,0);(n=e.parentNode)&&1===n.nodeType;)e=n;u.push(e)}var o,s=/(?:^|\s)nocode(?:\s|$)/,r=/\r\n?|\n/,a=e.ownerDocument;e.currentStyle?o=e.currentStyle.whiteSpace:window.getComputedStyle&&(o=a.defaultView.getComputedStyle(e,q).getPropertyValue("white-space"));var l=o&&"pre"===o.substring(0,3);for(o=a.createElement("LI");e.firstChild;)o.appendChild(e.firstChild);for(var u=[o],c=0;c<u.length;++c)n(u[c]);t===(0|t)&&u[0].setAttribute("value",t);var h=a.createElement("OL");h.className="linenums";for(var d=Math.max(0,0|t-1)||0,c=0,p=u.length;p>c;++c)o=u[c],o.className="L"+(c+d)%10,o.firstChild||o.appendChild(a.createTextNode(" ")),h.appendChild(o);e.appendChild(h)}function r(e,t){for(var n=t.length;--n>=0;){var i=t[n];b.hasOwnProperty(i)?window.console&&console.warn("cannot override language handler %s",i):b[i]=e}}function a(e,t){return e&&b.hasOwnProperty(e)||(e=/^\s*</.test(t)?"default-markup":"default-code"),b[e]}function l(e){var n=e.g;try{var i=t(e.h),o=i.a;e.a=o,e.c=i.c,e.d=0,a(n,o)(e);var s=/\bMSIE\b/.test(navigator.userAgent),n=/\n/g,r=e.a,l=r.length,i=0,u=e.c,c=u.length,o=0,h=e.e,d=h.length,e=0;h[d]=l;var p,f;for(f=p=0;d>f;)h[f]!==h[f+2]?(h[p++]=h[f++],h[p++]=h[f++]):f+=2;for(d=p,f=p=0;d>f;){for(var m=h[f],g=h[f+1],v=f+2;d>=v+2&&h[v+1]===g;)v+=2;h[p++]=m,h[p++]=g,f=v}for(h.length=p;c>o;){var y,b=u[o+2]||l,w=h[e+2]||l,v=Math.min(b,w),x=u[o+1];if(1!==x.nodeType&&(y=r.substring(i,v))){s&&(y=y.replace(n,"\r")),x.nodeValue=y;var _=x.ownerDocument,C=_.createElement("SPAN");C.className=h[e+1];var k=x.parentNode;k.replaceChild(C,x),C.appendChild(x),b>i&&(u[o+1]=x=_.createTextNode(r.substring(v,b)),k.insertBefore(x,C.nextSibling))}i=v,i>=b&&(o+=2),i>=w&&(e+=2)}}catch(T){"console"in window&&console.log(T&&T.stack?T.stack:T)}}var u=["break,continue,do,else,for,if,return,while"],c=[[u,"auto,case,char,const,default,double,enum,extern,float,goto,int,long,register,short,signed,sizeof,static,struct,switch,typedef,union,unsigned,void,volatile"],"catch,class,delete,false,import,new,operator,private,protected,public,this,throw,true,try,typeof"],h=[c,"alignof,align_union,asm,axiom,bool,concept,concept_map,const_cast,constexpr,decltype,dynamic_cast,explicit,export,friend,inline,late_check,mutable,namespace,nullptr,reinterpret_cast,static_assert,static_cast,template,typeid,typename,using,virtual,where"],d=[c,"abstract,boolean,byte,extends,final,finally,implements,import,instanceof,null,native,package,strictfp,super,synchronized,throws,transient"],p=[d,"as,base,by,checked,decimal,delegate,descending,dynamic,event,fixed,foreach,from,group,implicit,in,interface,internal,into,is,lock,object,out,override,orderby,params,partial,readonly,ref,sbyte,sealed,stackalloc,string,select,uint,ulong,unchecked,unsafe,ushort,var"],c=[c,"debugger,eval,export,function,get,null,set,undefined,var,with,Infinity,NaN"],f=[u,"and,as,assert,class,def,del,elif,except,exec,finally,from,global,import,in,is,lambda,nonlocal,not,or,pass,print,raise,try,with,yield,False,True,None"],m=[u,"alias,and,begin,case,class,def,defined,elsif,end,ensure,false,in,module,next,nil,not,or,redo,rescue,retry,self,super,then,true,undef,unless,until,when,yield,BEGIN,END"],u=[u,"case,done,elif,esac,eval,fi,function,in,local,set,then,until"],g=/^(DIR|FILE|vector|(de|priority_)?queue|list|stack|(const_)?iterator|(multi)?(set|map)|bitset|u?(int|float)\d*)/,v=/\S/,y=o({keywords:[h,p,c,"caller,delete,die,do,dump,elsif,eval,exit,foreach,for,goto,if,import,last,local,my,next,no,our,print,package,redo,require,sub,undef,unless,until,use,wantarray,while,BEGIN,END"+f,m,u],hashComments:!0,cStyleComments:!0,multiLineStrings:!0,regexLiterals:!0}),b={};r(y,["default-code"]),r(i([],[["pln",/^[^<?]+/],["dec",/^<!\w[^>]*(?:>|$)/],["com",/^<\!--[\S\s]*?(?:--\>|$)/],["lang-",/^<\?([\S\s]+?)(?:\?>|$)/],["lang-",/^<%([\S\s]+?)(?:%>|$)/],["pun",/^(?:<[%?]|[%?]>)/],["lang-",/^<xmp\b[^>]*>([\S\s]+?)<\/xmp\b[^>]*>/i],["lang-js",/^<script\b[^>]*>([\S\s]*?)(<\/script\b[^>]*>)/i],["lang-css",/^<style\b[^>]*>([\S\s]*?)(<\/style\b[^>]*>)/i],["lang-in.tag",/^(<\/?[a-z][^<>]*>)/i]]),["default-markup","htm","html","mxml","xhtml","xml","xsl"]),r(i([["pln",/^\s+/,q," 	\r\n"],["atv",/^(?:"[^"]*"?|'[^']*'?)/,q,"\"'"]],[["tag",/^^<\/?[a-z](?:[\w-.:]*\w)?|\/?>$/i],["atn",/^(?!style[\s=]|on)[a-z](?:[\w:-]*\w)?/i],["lang-uq.val",/^=\s*([^\s"'>]*(?:[^\s"'/>]|\/(?=\s)))/],["pun",/^[/<->]+/],["lang-js",/^on\w+\s*=\s*"([^"]+)"/i],["lang-js",/^on\w+\s*=\s*'([^']+)'/i],["lang-js",/^on\w+\s*=\s*([^\s"'>]+)/i],["lang-css",/^style\s*=\s*"([^"]+)"/i],["lang-css",/^style\s*=\s*'([^']+)'/i],["lang-css",/^style\s*=\s*([^\s"'>]+)/i]]),["in.tag"]),r(i([],[["atv",/^[\S\s]+/]]),["uq.val"]),r(o({keywords:h,hashComments:!0,cStyleComments:!0,types:g}),["c","cc","cpp","cxx","cyc","m"]),r(o({keywords:"null,true,false"}),["json"]),r(o({keywords:p,hashComments:!0,cStyleComments:!0,verbatimStrings:!0,types:g}),["cs"]),r(o({keywords:d,cStyleComments:!0}),["java"]),r(o({keywords:u,hashComments:!0,multiLineStrings:!0}),["bsh","csh","sh"]),r(o({keywords:f,hashComments:!0,multiLineStrings:!0,tripleQuotedStrings:!0}),["cv","py"]),r(o({keywords:"caller,delete,die,do,dump,elsif,eval,exit,foreach,for,goto,if,import,last,local,my,next,no,our,print,package,redo,require,sub,undef,unless,until,use,wantarray,while,BEGIN,END",hashComments:!0,multiLineStrings:!0,regexLiterals:!0}),["perl","pl","pm"]),r(o({keywords:m,hashComments:!0,multiLineStrings:!0,regexLiterals:!0}),["rb"]),r(o({keywords:c,cStyleComments:!0,regexLiterals:!0}),["js"]),r(o({keywords:"all,and,by,catch,class,else,extends,false,finally,for,if,in,is,isnt,loop,new,no,not,null,of,off,on,or,return,super,then,true,try,unless,until,when,while,yes",hashComments:3,cStyleComments:!0,multilineStrings:!0,tripleQuotedStrings:!0,regexLiterals:!0}),["coffee"]),r(i([],[["str",/^[\S\s]+/]]),["regex"]),window.prettyPrintOne=function(e,t,n){var i=document.createElement("PRE");return i.innerHTML=e,n&&s(i,n),l({g:t,i:n,h:i}),i.innerHTML},window.prettyPrint=function(e){function t(){for(var n=window.PR_SHOULD_USE_CONTINUATION?u.now()+250:1/0;h<i.length&&u.now()<n;h++){var o=i[h],r=o.className;if(r.indexOf("prettyprint")>=0){var a,p,r=r.match(d);if(p=!r){p=o;for(var f=void 0,m=p.firstChild;m;m=m.nextSibling)var g=m.nodeType,f=1===g?f?p:m:3===g?v.test(m.nodeValue)?p:f:f;p=(a=f===p?void 0:f)&&"CODE"===a.tagName}for(p&&(r=a.className.match(d)),r&&(r=r[1]),p=!1,f=o.parentNode;f;f=f.parentNode)if(("pre"===f.tagName||"code"===f.tagName||"xmp"===f.tagName)&&f.className&&f.className.indexOf("prettyprint")>=0){p=!0;break}p||((p=(p=o.className.match(/\blinenums\b(?::(\d+))?/))?p[1]&&p[1].length?+p[1]:!0:!1)&&s(o,p),c={g:r,h:o,i:p},l(c))}}h<i.length?setTimeout(t,250):e&&e()}for(var n=[document.getElementsByTagName("pre"),document.getElementsByTagName("code"),document.getElementsByTagName("xmp")],i=[],o=0;o<n.length;++o)for(var r=0,a=n[o].length;a>r;++r)i.push(n[o][r]);var n=q,u=Date;u.now||(u={now:function(){return+new Date}});var c,h=0,d=/\blang(?:uage)?-([\w.]+)(?!\S)/;t()},window.PR={createSimpleLexer:i,registerLangHandler:r,sourceDecorator:o,PR_ATTRIB_NAME:"atn",PR_ATTRIB_VALUE:"atv",PR_COMMENT:"com",PR_DECLARATION:"dec",PR_KEYWORD:"kwd",PR_LITERAL:"lit",PR_NOCODE:"nocode",PR_PLAIN:"pln",PR_PUNCTUATION:"pun",PR_SOURCE:"src",PR_STRING:"str",PR_TAG:"tag",PR_TYPE:"typ"}}();