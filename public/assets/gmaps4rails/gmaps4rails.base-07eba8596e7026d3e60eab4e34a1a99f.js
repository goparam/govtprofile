!function(){var e;e={},e.triggerOldOnload=function(){return"function"==typeof e.oldOnload?e.oldOnload():void 0},e.loadMaps=function(){var t,n,i,r,o;o=[];for(t in e)r=e[t],i=t.search(/load/),-1===i?(n="load_"+t,o.push(e[n]())):o.push(void 0);return o},window.Gmaps=e,this.Gmaps4Rails=function(){function e(){this.map=null,this.serviceObject=null,this.visibleInfoWindow=null,this.userLocation=null,this.geolocationSuccess=function(){return!1},this.geolocationFailure=function(){return!1},this.callback=function(){return!1},this.customClusterer=function(){return!1},this.infobox=function(){return!1},this.jsTemplate=!1,this.default_map_options={id:"map",draggable:!0,detect_location:!1,center_on_user:!1,center_latitude:0,center_longitude:0,zoom:7,maxZoom:null,minZoom:null,auto_adjust:!0,auto_zoom:!0,bounds:[],raw:{}},this.default_markers_conf={title:"",picture:"",width:22,length:32,draggable:!1,do_clustering:!1,randomize:!1,max_random_distance:100,list_container:null,offset:0,raw:{}},this.markers=[],this.boundsObject=null,this.polygons=[],this.polylines=[],this.circles=[],this.markerClusterer=null,this.markerImages=[],this.polylines_conf={strokeColor:"#FF0000",strokeOpacity:1,strokeWeight:2,clickable:!1,zIndex:null}}return e.prototype.initialize=function(){return this.serviceObject=this.createMap(),this.map=this.serviceObject,(this.map_options.detect_location===!0||this.map_options.center_on_user===!0)&&this.findUserLocation(this),this.resetSidebarContent()},e.prototype.findUserLocation=function(e){var t,n;return navigator.geolocation?(n=function(t){return e.userLocation=e.createLatLng(t.coords.latitude,t.coords.longitude),e.map_options.center_on_user===!0&&e.centerMapOnUser(),e.geolocationSuccess()},t=function(){return e.geolocationFailure(!0)},navigator.geolocation.getCurrentPosition(n,t)):e.geolocationFailure(!1)},e.prototype.create_direction=function(){var e,t,n;return e=new google.maps.DirectionsRenderer,t=new google.maps.DirectionsService,e.setMap(this.serviceObject),this.direction_conf.display_panel&&e.setPanel(document.getElementById(this.direction_conf.panel_id)),e.setOptions({suppressMarkers:!1,suppressInfoWindows:!1,suppressPolylines:!1}),n={origin:this.direction_conf.origin,destination:this.direction_conf.destination,waypoints:this.direction_conf.waypoints,optimizeWaypoints:this.direction_conf.optimizeWaypoints,unitSystem:google.maps.DirectionsUnitSystem[this.direction_conf.unitSystem],avoidHighways:this.direction_conf.avoidHighways,avoidTolls:this.direction_conf.avoidTolls,region:this.direction_conf.region,travelMode:google.maps.DirectionsTravelMode[this.direction_conf.travelMode],language:"en"},t.route(n,function(t,n){return n===google.maps.DirectionsStatus.OK?e.setDirections(t):void 0})},e.prototype.create_circles=function(){var e,t,n,i,r;for(i=this.circles,r=[],t=0,n=i.length;n>t;t++)e=i[t],r.push(this.create_circle(e));return r},e.prototype.create_circle=function(e){var t;return e===this.circles[0]&&(null!=e.strokeColor&&(this.circles_conf.strokeColor=e.strokeColor),null!=e.strokeOpacity&&(this.circles_conf.strokeOpacity=e.strokeOpacity),null!=e.strokeWeight&&(this.circles_conf.strokeWeight=e.strokeWeight),null!=e.fillColor&&(this.circles_conf.fillColor=e.fillColor),null!=e.fillOpacity&&(this.circles_conf.fillOpacity=e.fillOpacity)),null!=e.lat&&null!=e.lng?(t=new google.maps.Circle({center:this.createLatLng(e.lat,e.lng),strokeColor:e.strokeColor||this.circles_conf.strokeColor,strokeOpacity:e.strokeOpacity||this.circles_conf.strokeOpacity,strokeWeight:e.strokeWeight||this.circles_conf.strokeWeight,fillOpacity:e.fillOpacity||this.circles_conf.fillOpacity,fillColor:e.fillColor||this.circles_conf.fillColor,clickable:e.clickable||this.circles_conf.clickable,zIndex:e.zIndex||this.circles_conf.zIndex,radius:e.radius}),e.serviceObject=t,t.setMap(this.serviceObject)):void 0},e.prototype.clear_circles=function(){var e,t,n,i,r;for(i=this.circles,r=[],t=0,n=i.length;n>t;t++)e=i[t],r.push(this.clear_circle(e));return r},e.prototype.clear_circle=function(e){return e.serviceObject.setMap(null)},e.prototype.hide_circles=function(){var e,t,n,i,r;for(i=this.circles,r=[],t=0,n=i.length;n>t;t++)e=i[t],r.push(this.hide_circle(e));return r},e.prototype.hide_circle=function(e){return e.serviceObject.setMap(null)},e.prototype.show_circles=function(){var e,t,n,i,r;for(i=this.circles,r=[],t=0,n=i.length;n>t;t++)e=i[t],r.push(this.show_circle(this.circle));return r},e.prototype.show_circle=function(e){return e.serviceObject.setMap(this.serviceObject)},e.prototype.create_polygons=function(){var e,t,n,i,r;for(i=this.polygons,r=[],t=0,n=i.length;n>t;t++)e=i[t],r.push(this.create_polygon(e));return r},e.prototype.create_polygon=function(e){var t,n,i,r,o,s,a,l,c,u,h,d;for(a=[],h=0,d=e.length;d>h;h++)s=e[h],r=this.createLatLng(s.lat,s.lng),a.push(r),s===e[0]&&(l=s.strokeColor||this.polygons_conf.strokeColor,c=s.strokeOpacity||this.polygons_conf.strokeOpacity,u=s.strokeWeight||this.polygons_conf.strokeWeight,n=s.fillColor||this.polygons_conf.fillColor,i=s.fillOpacity||this.polygons_conf.fillOpacity,t=s.clickable||this.polygons_conf.clickable);return o=new google.maps.Polygon({paths:a,strokeColor:l,strokeOpacity:c,strokeWeight:u,fillColor:n,fillOpacity:i,clickable:t,map:this.serviceObject}),e.serviceObject=o},e.prototype.create_markers=function(){return this.createServiceMarkersFromMarkers(),this.clusterize()},e.prototype.createServiceMarkersFromMarkers=function(){var e,t,n,i,r,o,s,a;for(a=this.markers,i=o=0,s=a.length;s>o;i=++o)r=a[i],null==this.markers[i].serviceObject&&(e=this.markers[i].lat,n=this.markers[i].lng,this.markers_conf.randomize&&(t=this.randomize(e,n),e=t[0],n=t[1]),this.markers[i].serviceObject=this.createMarker({marker_picture:this.markers[i].picture?this.markers[i].picture:this.markers_conf.picture,marker_width:this.markers[i].width?this.markers[i].width:this.markers_conf.width,marker_height:this.markers[i].height?this.markers[i].height:this.markers_conf.length,marker_title:this.markers[i].title?this.markers[i].title:null,marker_anchor:this.markers[i].marker_anchor?this.markers[i].marker_anchor:null,shadow_anchor:this.markers[i].shadow_anchor?this.markers[i].shadow_anchor:null,shadow_picture:this.markers[i].shadow_picture?this.markers[i].shadow_picture:null,shadow_width:this.markers[i].shadow_width?this.markers[i].shadow_width:null,shadow_height:this.markers[i].shadow_height?this.markers[i].shadow_height:null,marker_draggable:this.markers[i].draggable?this.markers[i].draggable:this.markers_conf.draggable,rich_marker:this.markers[i].rich_marker?this.markers[i].rich_marker:null,zindex:this.markers[i].zindex?this.markers[i].zindex:null,Lat:e,Lng:n,index:i}),this.createInfoWindow(this.markers[i]),this.createSidebar(this.markers[i]));return this.markers_conf.offset=this.markers.length},e.prototype.createImageAnchorPosition=function(e){return null===e?null:this.createPoint(e[0],e[1])},e.prototype.replaceMarkers=function(e,t){return null==t&&(t=!0),this.clearMarkers(),this.markers=new Array,t&&(this.boundsObject=this.createLatLngBounds()),this.resetSidebarContent(),this.markers_conf.offset=0,this.addMarkers(e,t)},e.prototype.addMarkers=function(e,t){return null==t&&(t=!0),this.markers=this.markers.concat(e),this.create_markers(),t?this.adjustMapToBounds():void 0},e.prototype.createSidebar=function(e){var t,n,i,r,o;return this.markers_conf.list_container?(o=document.getElementById(this.markers_conf.list_container),r=document.createElement("li"),t=document.createElement("a"),t.href="javascript:void(0);",i=null!=e.sidebar?e.sidebar:"Marker",t.innerHTML=i,n=this,t.onclick=this.sidebar_element_handler(n,e.serviceObject,"click"),r.appendChild(t),o.appendChild(r)):void 0},e.prototype.sidebar_element_handler=function(e,t,n){return function(){return e.map.panTo(t.position),google.maps.event.trigger(t,n)}},e.prototype.resetSidebarContent=function(){var e;return null!==this.markers_conf.list_container?(e=document.getElementById(this.markers_conf.list_container),e.innerHTML=""):void 0},e.prototype.adjustMapToBounds=function(){return this.map_options.auto_adjust||null!==this.map_options.bounds?(this.boundsObject=this.createLatLngBounds(),this.map_options.auto_adjust&&(this.extendBoundsWithMarkers(),this.updateBoundsWithPolylines(),this.updateBoundsWithPolygons(),this.updateBoundsWithCircles()),this.extendMapBounds(),this.adaptMapToBounds()):void 0},e.prototype.replacePolylines=function(e){return this.destroy_polylines(),this.polylines=e,this.create_polylines(),this.adjustMapToBounds()},e.prototype.destroy_polylines=function(){var e,t,n,i;for(i=this.polylines,t=0,n=i.length;n>t;t++)e=i[t],e.serviceObject.setMap(null);return this.polylines=[]},e.prototype.create_polylines=function(){var e,t,n,i,r;for(i=this.polylines,r=[],t=0,n=i.length;n>t;t++)e=i[t],r.push(this.create_polyline(e));return r},e.prototype.exists=function(e){return""!==e&&"undefined"!=typeof e},e.prototype.randomize=function(e,t){var n,i,r,o;return r=this.markers_conf.max_random_distance*this.random(),o=this.markers_conf.max_random_distance*this.random(),n=parseFloat(e)+180/Math.PI*(o/6378137),i=parseFloat(t)+90/Math.PI*(r/6378137)/Math.cos(e),[n,i]},e.prototype.mergeObjectWithDefault=function(e,t){var n,i,r;n={};for(i in e)r=e[i],n[i]=r;for(i in t)r=t[i],null==n[i]&&(n[i]=r);return n},e.prototype.mergeWithDefault=function(e){var t,n;return t=this["default_"+e],n=this[e],this[e]=this.mergeObjectWithDefault(n,t),!0},e.prototype.random=function(){return 2*Math.random()-1},e}()}.call(this);