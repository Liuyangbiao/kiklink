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
<title>开练网</title>
<link href="${ctx}/page3/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/page3/style/kcShow.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/page3/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/page3/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/page3/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/page3/script/form.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=IjFqmaTMCOn1GkK6I1x4Go2P"></script>
<!--[if lte IE 6]>
<script src="script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
<style type="text/css">
body{background:#f9f9f9;}
</style>
</head>

<body>
<div class="selectLayer">
  <ul></ul>
</div>
<%@ include file="/page3/kailianheader.jsp" %>
<!--顶部end-->

<div class="pageNow pageNow3">
<div class="wal">
您所在的位置：<a href="http://www.kiklink.com">开练网首页</a><a href="${ctx}/shop_${map.shop.id}.html">${map.shop.shopName}</a><span>${map.product.name}</span>
</div>
</div>

<div class="kcShow">
<div class="wal">
<!--wal-->
<div class="fl"><img src="${ctx}/page3/image/img676.jpg"/></div>
<div class="fr" style="width:308px; overflow:hidden;">
      <h1>${map.shop.shopName} — ${map.product.name}</h1>
      <br/>
      <div class="msg">${map.product.subname}</div>
      <div class="price"><em>开练价</em><b class="red">¥${map.product.price}</b><span>／${map.product.ext8}分钟</span></div>
      <div class="box">
           <dl>
             <dt><a href=""><img src="${ctx}/page3/image/img72.png"/></a></dt>
             <dd>
             予以商品评分：<span>96分</span><br />
             测评师：<b>Cassie</b>
             </dd>
           </dl>
           <div class="content">
           总体来讲是个高大上的专业瑜伽馆，上课前顾问的服务是比较周到的... <a href="" class="blue">更多 >></a>
           </div>
      </div>
      <div class="list">
        <ul>
          <li><em>商　家</em><span>${map.shop.shopName}</span><a href="${ctx}/shop_${map.shop.id}.html">进入店铺</a></li>
          <li><em>位　置</em>${map.shop.address}</li>
          <li><em>信　誉</em>
              <img src="${ctx}/page3/image/img16.png"/>
              <img src="${ctx}/page3/image/img16.png"/>
              <img src="${ctx}/page3/image/img16.png"/>
              <img src="${ctx}/page3/image/img16.png"/>
          </li>
        </ul>
      </div>
      <div class="numInput">
          <em>数　量</em>
          <span class="jianBtn"></span><input type="text" value="1" /><span class="jiaBtn"></span>
      </div>
      <div class="btnDiv"><a href=""></a><a href="" class="a1"></a></div>
      <div class="btnDiv2">
      <a href=""><img src="${ctx}/page3/image/ico14.png"/>收藏商品</a><a href=""><img src="${ctx}/page3/image/ico15.png"/>分享商品</a>
      </div>
</div>
<!--walEnd-->
</div>
</div>

<div class="h25"></div>
<div class="wal">
<!--wal-->
<div class="fl w676">
     <div class="kcTab">
        <ul>
          <li><a href="javascript:;" class="aNow">关于此课程</a></li>
          <li><a href="javascript:;">怎么上课</a></li>
          <li><a href="javascript:;">教练是谁</a></li>
          <li><a href="javascript:;">大家怎么看(${map.comments.totalCount})</a></li>
          <li><a href="javascript:;">卖了多少(${map.buyed.totalCount})</a></li>
        </ul>
     </div>
     <div class="kcTabDiv"></div>
     <!---->
     <a id="a1" name="a1"></a>
     <div class="kcTitle">关于此课程</div>
     <div class="kcPart1">
           <ul>
             <li><em><img src="${ctx}/page3/image/img30_1.png"/>课程名称</em>${map.product.name}
             </li>
             <li><em><img src="${ctx}/page3/image/img30_2.png"/>单节时</em>${map.product.ext8}分钟</li>
             <li><em><img src="${ctx}/page3/image/img30_3.png"/>教学方式</em>
				<c:choose>
           			<c:when test="${map.product.teachType eq 1}">一对一</c:when>
           			<c:when test="${map.product.teachType eq 2}">多对一</c:when>
           			<c:when test="${map.product.teachType eq 3}">一对多</c:when>
           		</c:choose>
				</li>
				
             <li><em><img src="${ctx}/page3/image/img30_4.png"/>销售截止</em>暂无</li>
             <li><em><img src="${ctx}/page3/image/img30_5.png"/>课程分类</em>
             	<c:choose>
             		<c:when test="${map.product.categoryid eq 10}">球类</c:when>
             		<c:when test="${map.product.categoryid eq 20}">健身瑜伽</c:when>
             		<c:when test="${map.product.categoryid eq 30}">运动恢复</c:when>
             		<c:when test="${map.product.categoryid eq 40}">水上冰上</c:when>
             		<c:when test="${map.product.categoryid eq 50}">极限户外</c:when>
             		<c:when test="${map.product.categoryid eq 60}">舞蹈</c:when>
             		<c:when test="${map.product.categoryid eq 70}">射击搏击格斗</c:when>
             	</c:choose>
             </li>
             <li><em><img src="${ctx}/page3/image/img30_6.png"/>详情地址</em>${map.shop.address}</li>
             <li><em><img src="${ctx}/page3/image/img30_7.png"/>联系方式</em>
             	<c:if test="${map.shop.phoneno ne null}">电话：${map.shop.phoneno}</c:if>
             	<c:if test="${map.shop.email ne null}">邮箱：${map.shop.email}</c:if>
            </li>
             <li class="li_01"></li>
             <li><em><img src="${ctx}/page3/image/img30_8.png"/>服务设施</em>
                 <dl class="dl_01">
                   <dt>
                        <h1>免费</h1>
                        <span>¥</span>私人带锁储物柜<br />
                        <span>¥</span>饮用水<br />
                        <span>¥</span>淋浴<br />
                        <span>¥</span>拖鞋<br />
                        <span>¥</span>浴巾<br />
                        <span>¥</span>糖果茶点<br />
                        <span>¥</span>体测
                   </dt>
                   <dd>
                        <h1>收费</h1>
                        <span>¥</span>车位<br />
                        <span>¥</span>锻炼服饰
                   </dd>
                   <span class="clear_f"></span>
                 </dl>
             </li>
             <li class="li_01"></li>
             <li><em><img src="${ctx}/page3/image/img30_9.png"/>购买须知</em>
                 <ul>
                   <li><em><img src="${ctx}/page3/image/img40_1.png"/></em>
				<c:choose>
             		<c:when test="${map.product.returnClassCount eq null or map.product.returnClassCount eq -1}">
             			无需预约
             		</c:when>
             		<c:when test="${map.product.returnClassCount eq null or map.product.returnClassCount eq -2}">
             			电话预约
             		</c:when>
             		<c:when test="${map.product.returnClassCount ne null and map.product.returnClassCount gt 0 and map.product.extInt5 ne null and map.product.extInt5 gt 0}">
             			提前${map.product.extInt5}天预约
             		</c:when>
             	</c:choose>
					
					</li>
                   <li><em><img src="${ctx}/page3/image/img40_2.png"/></em>
                   <c:choose>
             		<c:when test="${map.product.returnClassCount eq null or map.product.returnClassCount eq -1}">
             			无需取消
             		</c:when>
             		<c:when test="${map.product.returnClassCount eq null or map.product.returnClassCount eq -2}">
             			电话取消预约
             		</c:when>
             		<c:when test="${map.product.returnClassCount eq null or map.product.returnClassCount eq 0}">
             			随时取消预约
             		</c:when>
             		<c:otherwise>
             			课前${map.product.returnClassCount}天取消
             		</c:otherwise>
             	</c:choose>
                   </li>
                   <!-- 
                   <li><em><img src="${ctx}/page3/image/img40_3.png"/></em>在未预约状态下或成功取消预约后可申请退款</li>
                   <li><em><img src="${ctx}/page3/image/img40_4.png"/></em>无法按时到课须至少提前1小时联系商家，如未提前联系且迟到30分钟以上试做课程已被使用。</li>
                   <li class="li_02"><div><img src="${ctx}/page3/image/img62_1.png"/></div>有减脂、塑型、调整身体姿态、缓解压力等需求的各类人群</li>
                   <li class="li_02"><div><img src="${ctx}/page3/image/img62_2.png"/></div>精神疾病患者</li>
                    -->
                 </ul>
             </li>
             <li class="li_01"></li>
             <li><em><img src="${ctx}/page3/image/img30_10.png"/>地理位置</em></li>
             <li style="padding:0 0 0 20px;">
			<div id="mapdiv" class="imgDiv" style="border:0px solid red;width:676;height:381px;"></div>
				</li>
           </ul>
     </div>
     <!---->
     <a id="a2" name="a2"></a>
     <div class="kcTitle">怎么上课</div>
     <div class="kcPart2">
           <h1>${map.shop.shopName}</h1>
           <div class="content">
<c:choose>
<c:when test="${fn:contains(map.product.description,'<p')}">
${map.product.description}
</c:when>
<c:otherwise>
${my:replaceall(map.product.description,'\\n','<br/>')}
</c:otherwise>
</c:choose>
           </div>
     </div>
     <!---->
     <a id="a3" name="a3"></a>
     <div class="kcTitle">教练是谁</div>
     <div class="kcPart3">
          <ul>
          	<c:forEach var="c" items="${map.coaches}" varStatus="vs">
          	<li>
                 <dl>
                   <dt style="text-align:center;vertical-align:middle;"><a href="#"><img src="${ctx}/${c.photo}" style="max-width:318px;max-height:336px;" /></a></dt>
                   <dd>
                       <b>${vs.index + 1}</b>
                       <h1>${c.name}</h1>
                       <c:if test="${c.honor ne null}">
                       <h2><img src="${ctx}/page3/image/img32.png"/>资质与荣誉</h2>
                       <div class="msg">
                       
                       ${my:replaceall(c.honor,'\\r\\n','<br/>')}&nbsp;　
                      
                       </div>
                        </c:if>
                   </dd>
                 </dl>
                 <div class="content">
                 <c:if test="${c.goodat ne null}">
<h5 class="red">${c.name}教练擅长什么？</h5>
${c.goodat}
</c:if>
<h5 class="red">${c.name}教练授课风格</h5>
${my:replaceall(c.profile,'\\r\\n','<br/>')}&nbsp;　
                 </div>
            </li>
          	</c:forEach>
          </ul>
     </div>
     <!---->
     <a id="a4" name="a4"></a>
     <div class="kcTitle">大家怎么看(80)</div>
     <div class="kcPart4">
          <div class="title">
               <h2 class="fl">大家点评后的综合得分：</h2>
               <i class="fl">4.8分</i>
               <div class="fl star"><img src="${ctx}/page3/image/star.png"/></div>
               <h5 class="fr">（<span class="blue">${map.comments.totalCount}人</span>）发表大家看</h5>
          </div>
          <div class="list">
            <ul>
            <c:forEach var="c" items="${map.comments.result}">
              <li>
                   <div class="imgDiv"><img src="${ctx}/page3/image/img70_1.png"/></div>
                   <div class="content">${c.comment}</div>
                   <div class="msg"><span>${c.username}</span><div><img src="${ctx}/page3/image/star.png"/><b>${c.point}分</b></div><span>${my:transDate(c.createtimelong)}</span></div>
              </li>
             </c:forEach>
             <!-- 
              <li>
                   <div class="imgDiv"><img src="${ctx}/page3/image/img70_2.png"/></div>
                   <div class="content">地方很好找，场馆环境也不错，这在我到过的瑜伽馆里算是数一数二的了，还有就是茶歇也很贴心，以后有时间我还来这里练瑜伽。</div>
                   <div class="msg"><span>一缕阳光</span><div><img src="${ctx}/page3/image/star.png"/><b>4.8分</b></div><span>2014年6月30日</span></div>
              </li>
              <li>
                   <div class="imgDiv"><img src="${ctx}/page3/image/img70_1.png"/></div>
                   <div class="content">地方很好找，场馆环境也不错，这在我到过的瑜伽馆里算是数一数二的了，还有就是茶歇也很。</div>
                   <div class="msg"><span>一缕阳光</span><div><img src="${ctx}/page3/image/star.png"/><b>4.8分</b></div><span>2014年6月30日</span></div>
              </li>
              <li>
                   <div class="imgDiv"><img src="${ctx}/page3/image/img70_2.png"/></div>
                   <div class="content">地方很好找，场馆环境也不错，这在我到过的瑜伽馆里算是数一数二的了，还有就是茶歇也很贴心，以后有时间我还来这里练瑜伽。</div>
                   <div class="msg"><span>一缕阳光</span><div><img src="${ctx}/page3/image/star.png"/><b>4.8分</b></div><span>2014年6月30日</span></div>
              </li>
              <li>
                   <div class="imgDiv"><img src="${ctx}/page3/image/img70_1.png"/></div>
                   <div class="content">地方很好找，场馆环境也不错，这在这在我到过的瑜伽馆里算是数一数二的了这在我到过的瑜伽馆里算是数一数二的了这在我到过的瑜伽馆里算是数一数二的了这在我到过的瑜伽馆里算是数一数二的了我到过的瑜伽馆里算是数一数二的了，还有就是茶歇也很。</div>
                   <div class="msg"><span>一缕阳光</span><div><img src="${ctx}/page3/image/star.png"/><b>4.8分</b></div><span>2014年6月30日</span></div>
              </li>
              <li>
                   <div class="imgDiv"><img src="${ctx}/page3/image/img70_2.png"/></div>
                   <div class="content">地方很好找，场馆环境也不错，这在我到过的瑜伽馆里算是数一数二的了，还有就是茶歇也很贴心，以后有时间我还来这里练瑜伽。</div>
                   <div class="msg"><span>一缕阳光</span><div><img src="${ctx}/page3/image/star.png"/><b>4.8分</b></div><span>2014年6月30日</span></div>
              </li>
               -->
            </ul>
          </div>
          <div class="pageNum4">
          <a href="">1</a><a href="">2</a><a href="">3</a><a href="">4</a><span>...</span><a href="">9</a><a href="" class="next">.</a>
          </div>
     </div>
     <!---->
     <a id="a5" name="a5"></a>
     <div class="kcTitle">卖了多少(${map.buyed.totalCount})</div>
     <div class="kcPart5">
          <div class="title">
                <h2 class="fl">课程售价：<b class="red">¥${map.product.price}</b></h2>
                <div class="fl">／${map.product.ext8}分钟</div>
                <div class="fr">（<span class="blue">${map.buyed.totalCount}人</span>）购买了此课程</div>
          </div>
          <div class="table">
          <table width="100%" cellpadding="0" cellspacing="0" border="0">
             <tr>
               <th width="160"><div>买家</div></th>
               <th width="160">课程名称</th>
               <th width="105">购买数量</th>
               <th width="105">成交时间</th>
               <th>说明</th>
             </tr>
             <c:forEach var="v" items="${map.buyed.result}">
             <tr>
               <td><div>${v.ext1}</div></td>
               <td>${my:maxleng(v.productName,10)}</td>
               <td>${v.count}</td>
               <td>${my:transDate(v.createtimelong)}</td>
               <td>无</td>
             </tr>
             </c:forEach>
             <!-- 
             <tr>
               <td><div>一缕阳光</div></td>
               <td>卡莫瑜伽 阴瑜伽团体课...</td>
               <td>1</td>
               <td>2014-10-14</td>
               <td>无</td>
             </tr>
              -->
          </table>
          </div>
          <div class="pageNum4">
          <a href="">1</a><a href="">2</a><a href="">3</a><a href="">4</a><span>...</span><a href="">9</a><a href="" class="next">.</a>
          </div>
     </div>
</div>
<div class="fr w298">
     <div class="sideTitle"><b>我的足迹</b>最近浏览过的商品</div>
     <div class="sideList1">
          <ul>
            <li>
              <div class="imgDiv"><a href=""><img src="${ctx}/page3/image/img298_1.jpg"/></a></div>
              <div class="box">
                  <h1><a href="">纯人至"箭"则无敌，一秒变身绿箭侠。</a></h1>
                  <div class="msg">上绎蜂巢射箭俱乐部 | 射箭</div>
              </div>
            </li>
            <li>
              <div class="imgDiv"><a href=""><img src="${ctx}/page3/image/img298_2.jpg"/></a></div>
              <div class="box">
                  <h1><a href="">纯人至"箭"则无敌，一秒变身绿箭侠。</a></h1>
                  <div class="msg">上绎蜂巢射箭俱乐部 | 射箭</div>
              </div>
            </li>
            <li>
              <div class="imgDiv"><a href=""><img src="${ctx}/page3/image/img298_3.jpg"/></a></div>
              <div class="box">
                  <h1><a href="">纯人至"箭"则无敌，一秒变身绿箭侠。</a></h1>
                  <div class="msg">上绎蜂巢射箭俱乐部 | 射箭</div>
              </div>
            </li>
          </ul>
     </div>
     <!---->
     <div class="sideTitle"><b>圈子</b>@卡莫瑜伽</div>
     <div class="cksideList2">
          <ul>
            <li>
               <div class="imgDiv"><a href=""><img src="${ctx}/page3/image/img50.jpg"/></a></div>
               <div class="name"><a href="">看到别人那么柔软，僵硬的我真的好心塞啊？该怎么办？</a></div>
            </li>
            <li>
               <div class="imgDiv"><a href=""><img src="${ctx}/page3/image/img50_1.jpg"/></a></div>
               <div class="name"><a href="">看到别人那么柔软，僵硬的我真的好心塞啊？该怎么办？</a></div>
            </li>
            <li>
               <div class="imgDiv"><a href=""><img src="${ctx}/page3/image/img50.jpg"/></a></div>
               <div class="name"><a href="">看到别人那么柔软，僵硬的我真的好心塞啊？该怎么办？</a></div>
            </li>
            <li>
               <div class="imgDiv"><a href=""><img src="${ctx}/page3/image/img50_1.jpg"/></a></div>
               <div class="name"><a href="">看到别人那么柔软，僵硬的我真的好心塞啊？该怎么办？</a></div>
            </li>
            <li>
               <div class="imgDiv"><a href=""><img src="${ctx}/page3/image/img50.jpg"/></a></div>
               <div class="name"><a href="">看到别人那么柔软，僵硬的我真的好心塞啊？该怎么办？</a></div>
            </li>
          </ul>
          <div class="more">更多与<a href="" class="blue">卡莫瑜伽</a>相关的生活</div>
     </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20" style="height:28px;"></div>

<!--底部start-->
<%@ include file="/page3/kailiantail.jsp" %>
<script type="text/javascript">

function soldpage(pn) {
 	$.post("${ctx}/kailian/KlSellerProduct/productsold.do?id=${map.product.id}&pageno=" + pn + "&pageNumber=" + pn,{suggest:''},function(result){
    	$(".kcPart5").html("<div class='title'>" +  $(".kcPart5 .title").html() + "</div>" + result);
  	});
}

function commentpage(pn) {
 	$.post("${ctx}/kailian/KlSellerProduct/productcomment.do?version=3&id=${map.product.id}&pageno=" + pn + "&pageNumber=" + pn,{suggest:''},function(result){
    	$(".kcPart4").html(result);
  	});
}


var map = new BMap.Map("mapdiv");
$(function(){

soldpage(1);
commentpage(1);


$('.content img').css('max-width','500px');

map.centerAndZoom(new BMap.Point(${map.product.mapx},${map.product.mapy}), 12);
var marker1 = new BMap.Marker(new BMap.Point(${map.product.mapx},${map.product.mapy}));  // 创建标注
map.addOverlay(marker1);              // 将标注添加到地图中
var infoWindow1 = new BMap.InfoWindow("${my:replaceall(map.product.ext1,'\\n','<br/>')}");
marker1.addEventListener("click", function(){this.openInfoWindow(infoWindow1);});



map.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件
map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL}));  //右上角，仅包含平移和缩放按钮
map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT, type: BMAP_NAVIGATION_CONTROL_PAN}));  //左下角，仅包含平移按钮
map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_BOTTOM_RIGHT, type: BMAP_NAVIGATION_CONTROL_ZOOM}));  //右下角，仅包含缩放按钮

});
</script>
</body>
</html>