<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>地图搜索${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/help.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="${ctx}/scripts/jquery-easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${ctx}/scripts/jquery-easyui/themes/icon.css">
<script type="text/javascript" src="${ctx }/scripts/jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${ctx }/scripts/locale/easyui-lang-zh_CN.js"></script>

<script language="javascript" type="text/javascript" src="${ctx}/script/jquery.tips.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=IjFqmaTMCOn1GkK6I1x4Go2P"></script>

<script src="${ctx}/nouislider/js.js"></script>
<link href="${ctx}/nouislider/css.css" rel="stylesheet">
<!--[if lte IE 6]>
<script src="${ctx}/script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
<style type="text/css">
body{background:#f6f5f3;}
</style>
</head>

<body>
<div class="selectLayer">
  <ul></ul>
</div>
<%@ include file="/page/kailianheader.jsp" %>

<!--顶部end-->

<div class="h20"></div>
<div class="wal">
<!--wal-->
<div class="fl mapPart1">
          <h1>高级搜索</h1>
          <div id="mapdiv" class="imgDiv">
               <a href="javascript:;" style="left:40px; top:255px;"></a>
               <a href="javascript:;" style="left:110px; top:155px;"></a>
               <a href="javascript:;" style="left:180px; top:200px;"></a>
               <a href="javascript:;" style="left:210px; top:360px;"></a>
               <a href="javascript:;" style="left:320px; top:260px;"></a>
               <a href="javascript:;" style="left:420px; top:120px;"></a>
               <a href="javascript:;" style="left:370px; top:160px;"></a>
               <a href="javascript:;" style="left:400px; top:260px;"></a>
          </div>
</div>
<div class="fr mapPart2">
      <div class="msg">
         地域：
         <a href="#" onclick="map.centerAndZoom('北京',12);search2();">北京</a>
         <a href="#" onclick="map.centerAndZoom('上海',12);search2();">上海</a>
         <a href="#" onclick="map.centerAndZoom('广州',12);search2();">广州</a>
         <select onchange="map.centerAndZoom($(this).val(),12);search2();">
         	<option value="北京">切换地区</option>
         	<c:forEach var="v" items="${map.provinces}">
         		<option value="${v.name}">${v.name}</option>
         	</c:forEach>
         </select>
         <!-- 
         <a href="">[<span>切换地区</span>]</a>
          -->
      </div>
      <div class="box">
          <h2 class="tag">
             <ul>
               <li><a href="javascript:searchtype(20);">健身</a></li>
               <li><a href="javascript:searchtype(30);">运动</a></li>
               <li><a href="javascript:searchtype(50);">极限/户外</a></li>
               <li><a href="javascript:searchtype(0);">全部</a></li>
             </ul>
          </h2>
          <div class="price">
                <div id="slider" class="priceScroll">
                <ul onmouseover="//alert(1);">
                  <li class="li_01" style="left:0px;">￥<span id="value-input">0</span>元</li>
                  <li class="li_02" style="right:0px;">￥<span id="value-span">2000</span>元</li>
                </ul>
                </div>
<script>
$("#slider").noUiSlider({
	start: [0, 2000],
	step: 10,
	connect: true,
	range: {
		'min': 0,
		'max': 2000
	},
	serialization: {
		lower: [
			$.Link({
				target: $("#value-input"),
				method: "html"
			})
		],
		upper: [
			$.Link({
				target: $("#value-span"),
				method: "html"
			})
		],
		format: {
			mark: ',',
			decimals: 1
		}
	}
});


$('#slider').change(function(){
	search();
});

</script>
                
          </div>
          <div class="more"><a href="javascript:;" class="mapLayer1A">更多条件</a></div>
          <div class="list">
               <ul id="uls">

               
               </ul>
           </div>
       </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="mapLayer" id="simg">
     <a href="javascript:;" class="close"></a>
     <a href="javascript:;" class="leftBtn"></a>
     <a href="javascript:;" class="rightBtn"></a>
     <div class="list">
           <ul id="scrul">
             <li>
                 <div class="imgDiv"><a href=""><img src="${ctx}/image/limg310.jpg" alt="" /></a></div>
                 <h2><a href="">华人一阁</a></h2>
                 <div class="content">
                 简介文字展示，简介文字展示，简介文字展示，简介文字展示，简介文字展示，简介文字展示...
                 </div>
             </li>
             
           </ul>
     </div>
</div>

<div class="mapLayer1">
     <a href="javascript:;" class="close"></a>
     <div class="list">
           <ul id="ulmore">
             <li>
                 <b>服务星级：</b>
                 <a href="#" star="5">五星</a><a href="#" star="4">四星</a><a href="#" star="3">三星</a><a href="#" star="2">二星</a>
 					  <a href="#" star="1">一星</a>
 					   <a href="#" star="-1" style="font-weight:bold;color:blue;">全部</a>
             </li>
             <li><b>店铺类型：</b> <a href="#" shoptype="1">机构</a> <a href="#" shoptype="2">个人</a> 
             	<a href="#" shoptype="-1" style="font-weight:bold;color:blue;">不限</a></li>
             <li><b>排　　序：</b> <a href="#" order="buyedCount" style="font-weight:bold;color:blue;">按销量</a><a href="#" sort="id desc">最新</a></li>
           </ul>
     </div>
</div>

<!--底部start-->
<%@ include file="/page/kailiantail.jsp" %>


<script type="text/javascript">
var mm = [];
var thetype = "";
var star = -1;
var shoptype = -1;
var order = "buyedCount";

var map = new BMap.Map("mapdiv");
$(function(){

$('#ulmore li a').each(function() {
$(this).click(function() {
 var star1 = $(this).attr('star');
 var shoptype1 = $(this).attr('shoptype');
 var order1 = $(this).attr('order');	
 
	if (star1 != null)
		star = $(this).attr('star');

	if (shoptype1 != null)
		shoptype = $(this).attr('shoptype');
	if (order1 != null )
		order = $(this).attr('order');
	
	$("#ulmore li a").css({'font-weight':'normal','color':'#000'});
	$("#ulmore li a[star='" + star + "'").css({'font-weight':'bold','color':'blue'});
	$("#ulmore li a[shoptype='" + shoptype + "'").css({'font-weight':'bold','color':'blue'});
	$("#ulmore li a[order='" + order + "'").css({'font-weight':'bold','color':'blue'});
		search();
	});
});


map.centerAndZoom(new BMap.Point(116.404, 39.915), 12);
/*
var marker1 = new BMap.Marker(new BMap.Point(116.404, 39.915));  // 创建标注
map.addOverlay(marker1);              // 将标注添加到地图中
var infoWindow1 = new BMap.InfoWindow("116.404, 39.915");
marker1.addEventListener("click", function(){this.openInfoWindow(infoWindow1);});
*/


map.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件
map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL}));  //右上角，仅包含平移和缩放按钮
map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT, type: BMAP_NAVIGATION_CONTROL_PAN}));  //左下角，仅包含平移按钮
map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_BOTTOM_RIGHT, type: BMAP_NAVIGATION_CONTROL_ZOOM}));  //右下角，仅包含缩放按钮

map.addEventListener("dragend", function showInfo(){
 search();
});
map.addEventListener("zoomend", function showInfo(){
 search();
});

//setTimeout("map.setZoom(12);",500);
search();
});




function search2() {
	setTimeout(search, 1000);
}

function search() {

	var bs = map.getBounds();   //获取可视区域
var bssw = bs.getSouthWest();   //可视区域左下角
var bsne = bs.getNorthEast();   //可视区域右上角
	////alert("当前地图可视范围是：" + bssw.lng + "," + bssw.lat + "到" + bsne.lng + "," + bsne.lat);
	var url = "${ctx}/kailian/KlSellerProduct/search.do?ajax=ajax&map=map&stype=1&mapxfrom=" + bssw.lng + "&mapyfrom=" + bssw.lat;
			url += "&mapxto=" + bsne.lng + "&mapyto=" + bsne.lat;
			url += "&sort=" + order + "&shoptype=" + shoptype + "&starfrom=" + (2*(star-1));
			url += "&pricefrom=" + $('#value-input').html().split(',')[0] + "&priceto=" + $('#value-span').html().split(',')[0];
			url += "&categoryid=" + thetype;
	////alert(url);
	$.ajax({
            type: 'GET',
            url: url,
            dataType: 'json',
            data: {},
            success: function (data) {
				if (data['re'] > 0) {
					////alert(data['page'].result.length);
					map.clearOverlays();
					var cont = "";
					for (var i = 0; i < data['page'].result.length; i ++) {
						var o = data['page'].result[i];
						
						
						var marker1 = new BMap.Marker(new BMap.Point(o['mapx'], o['mapy']));  // 创建标注
						map.addOverlay(marker1);              // 将标注添加到地图中
						//var infoWindow1 = new BMap.InfoWindow("");
						////alert(marker1.getPosition().lat);
						//mm[marker1.getPosition().lng + "-" + marker1.getPosition().lat] = infoWindow1;
						mm['id' + marker1.getPosition().lng + "-" + marker1.getPosition().lat] = o['id'];
							mm['name' + marker1.getPosition().lng + "-" + marker1.getPosition().lat] = o['name'];
							mm['shop' + marker1.getPosition().lng + "-" + marker1.getPosition().lat] = o['shopId'];
						
						marker1.addEventListener("click", function(){
							//	this.openInfoWindow(mm[this.getPosition().lng + "-" + this.getPosition().lat]);
							
							showProduct(this.getPosition().lng , this.getPosition().lat);
						});
					
					
						/*
						<li><div class=/"imgDiv/"><a href=/"/"><img src=/"${ctx}/image/limg196.jpg/" alt=/"/" /></a></div><h2><a href=/"/">课程名称文字</a><b>200元/次</b></h2>
                     <div class=/"content/">归属店铺：中国功夫<br />地址：北京市朝阳区</div></li>
                     */
                    
                    var name = o['name'];
                    if (name.length > 8)
                    	name = name.substr(0,8	) + "..";
                     cont = cont + "<li><div class=\"imgDiv\"><a href=\"${ctx}/product_" + o['id'] + ".html\" target='_blank'><img src=\"${ctx}" +
                     			 o['photo'] + "\" alt=\"\" style='width:196px;height:131px;' /></a></div><h2><a class='easyui-tips' title='" + o['name'] + "' tooltip='" + o['name'] + "' href=\"${ctx}/product_" + o['id'] + ".html\" target='_blank'>"+ name
                     			 + "</a><b>" + o['price'] + "元/次</b></h2>";
						cont = cont + "<div class=\"content\">归属店铺：" + o['ext5'] + "<br />地址：" + o['ext1'] + "</div></li>";	
					}
					////alert(cont);
					$('#uls').html(cont);
				}
				else {
					//alert(data['word']);
				}
            }
        });
        
       
}

function showProduct( lng, lat) {
        var pid = mm['id' + lng + "-" + lat];
        var pname = mm['name' + lng + "-" + lat];
        var shopid = mm['shop' + lng + "-" + lat]
        //alert(pid);
        	var bs = map.getBounds();   //获取可视区域
			var bssw = bs.getSouthWest();   //可视区域左下角
			var bsne = bs.getNorthEast();   //可视区域右上角
			////alert("当前地图可视范围是：" + bssw.lng + "," + bssw.lat + "到" + bsne.lng + "," + bsne.lat);
        
        	var width = parseInt($('#mapdiv').width());
        	var height = parseInt($('#mapdiv').height());
        	var x = width * (lng - bssw.lng) / (bsne.lng - bssw.lng);
        	var y = height -  height * (lat - bssw.lat) / (bsne.lat - bssw.lat);
        	////alert(x + "  " + y);
        	var x2 = $('#mapdiv').offset().left; 
			var y2 = $('#mapdiv').offset().top; 
			//alert(x2 + "   " + y2);
			
        	$('.mapLayer').css('left',x-155 + x2-20+3);
			$('.mapLayer').css('top',y-330 + y2-20);
			
			
			
			//http://localhost:8080/cms/kailian/CmsCommonPhoto/listAjax.do?ownnerid=35&ownnertype=20
			//var uurl = "${ctx}/kailian/CmsCommonPhoto/listAjax.do?ownnerid=" + pid + "&ownnertype=20";
			var uurl = "${ctx}/kailian/KlSellerProduct/listAjax.do?status=1&shopId=" + shopid;
			//alert(uurl);
			
			$.ajax({
            	type: 'GET',
            	url: uurl,
            	dataType: 'json',
            	data: {},
           		success: function (data) {
           			//alert(22);
           			var cont = "";
            		for (var i = 0; i < data['rows'].length; i ++) {
            			//alert(i);
            			
            			var o = data['rows'][i];
            			var pid = o['id'];

                		 cont = cont + "<li><div class=\"imgDiv\"><a href=\"${ctx}/product_" + pid + ".html\" target=\"_blank\"><img style='max-width:310px;max-height:206px;' src=\"${ctx}/" + o['photo'] +  "\" alt=\"\" /></a></div>";
                		 cont = cont + "<h2><a href=\"${ctx}/product_" + pid + ".html\" target=\"_blank\">" + '' + o['name'] + "</a></h2><div class=\"content\">" + o['price'] + "元/" + o['ext8'] + "分钟,"+ o['subname'] + "</div></li>";
            			
            		}

            		$('#scrul').html(cont);
            		$('.mapLayer').show();
            		},
            	error: function (XMLHttpRequest, textStatus, errorThrown) {
            		//alert(textStatus + "  2   2  " + errorThrown);
            	}
            	});
         	
        }
        
        
        function searchtype(ttype) {
        	if (ttype > 0)
        		thetype = ttype;
        	else 
        		thetype = "";
        	
        	search();
        }
</script>
</body>
</html>