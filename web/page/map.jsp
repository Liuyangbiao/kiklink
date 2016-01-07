<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<!DOCTYPE html>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<style type="text/css">
body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;}
#l-map{height:100%;width:78%;float:left;border-right:2px solid #bcbcbc;}
#r-result{height:100%;width:20%;float:left;}
</style>
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${ctx}/kindeditornew/themes/default/default.css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=IjFqmaTMCOn1GkK6I1x4Go2P"></script>

<title>地图显示</title>
</head>
<body>
<div style="height:30px;">
<input id="sousuoid" type="text" style="width:300px;height:20px;border:1px solid #000;" />
&nbsp;<span style="height:20px;border:0px solid #000;cursor:pointer;" onclick="sousuo();">搜索</span>
</div>
<div id="allmap"></div>
</body>
</html>
<script type="text/javascript">

// 百度地图API功能

var map = new BMap.Map("allmap");

<c:choose>
<c:when test="${param.x eq null}">
map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);
var myGeo = new BMap.Geocoder(); 

map.addEventListener("click", function(e){
 //alert(e.point.lng + ", " + e.point.lat);   
	myGeo.getLocation(new BMap.Point(e.point.lng, e.point.lat), function(result){    
 		if (result){    
   			//alert(result.address);    
 			if (confirm("您要使用地址：" + result.address + "吗？")) {
 				parent.useaddress(result.address, e.point.lng, e.point.lat);
 				parent.jQuery.fancybox.close();
 			}
 		}    
	});
});

$(document).ready(function() {
	//alert(1);
	setTimeout("map.setZoom(11);",1000);
});

</c:when>

<c:otherwise>

map.centerAndZoom(new BMap.Point(${param.x}-0.0002,${param.y}+0.0001), 13);
var marker1 = new BMap.Marker(new BMap.Point(${param.x},${param.y}));  // 创建标注
map.addOverlay(marker1);              // 将标注添加到地图中
var infoWindow1 = new BMap.InfoWindow("店铺地址");
marker1.addEventListener("click", function(){this.openInfoWindow(infoWindow1);});
//setTimeout("map.setZoom(12);",1000);

$(document).ready(function() {
	//alert(1);
	setTimeout("map.setZoom(11);",1000);
});
</c:otherwise>
</c:choose>
map.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件
map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL}));  //右上角，仅包含平移和缩放按钮
map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT, type: BMAP_NAVIGATION_CONTROL_PAN}));  //左下角，仅包含平移按钮
map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_BOTTOM_RIGHT, type: BMAP_NAVIGATION_CONTROL_ZOOM}));  //右下角，仅包含缩放按钮


function sousuo() {
	var v = $('#sousuoid').val();
	if (v == null || v.length <= 0)
		return;
		
	var myKeys = v.split(" ");
	var local = new BMap.LocalSearch(map, {
  		renderOptions:{map: map, panel:"r-result"}
	});
	local.setPageCapacity(15);
	local.searchInBounds(myKeys, map.getBounds());
}



</script>
