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
<title>${map.product.name}${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/page1.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="${ctx}/scripts/jquery-easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${ctx}/scripts/jquery-easyui/themes/icon.css">
<script type="text/javascript" src="${ctx }/scripts/jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${ctx }/scripts/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${ctx }/scripts/statics.js"></script>

<script language="javascript" type="text/javascript" src="${ctx}/script/jquery.tips.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/date/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=IjFqmaTMCOn1GkK6I1x4Go2P"></script>

	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="${ctx}/fancy/lib/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="${ctx}/fancy/source/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/jquery.fancybox.css?v=2.1.5" media="screen" />

	<!-- Add Button helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
	<script type="text/javascript" src="${ctx}/fancy/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" />
	<script type="text/javascript" src="${ctx}/fancy/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

	<!-- Add Media helper (this is optional) -->
	<script type="text/javascript" src="${ctx}/fancy/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>



<!--[if lte IE 6]>
<script src="${ctx}/script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
<style type="text/css">
body{background:#f6f5f3;}
.content img{
	max-width:550px;
}
</style>
<script type="text/javascript">
	//购买
	function addToShopCar1(pid){
		var url = "${ctx}/kailian/KlShoppingShoppingcartproduct/shopCar.do?productid=" + pid + "&count=" + $('#thecount').val();
		window.location.href = url;
	}
	
	//发信息
	function postmessage() {
	
		var cont = $('#messagecontent').val();
		if (cont == '' || cont == 'undefined') {
			alert('您没有输入内容');
		}
		else {
		
			$.ajax({
			
            type: 'POST',
            url: '${ctx}/kailian/CmsCommonMessage/postmessage.do',
            
            dataType: 'json',
            
            data: {'content':cont,'targetid':'${map.shop.userid}','ajax':'ajax'},
            
            success: function (data) {
				if (data['re'] > 0) {
					alert('消息发送成功');
				}
				else {
					alert(data['word']);
				}
            }
            
        	})
        	
		}
	
	}
	
	//获取教练时间
	function coachtime(dint) {
	
			$.ajax({
            type: 'POST',
            url: '${ctx}/kailian/KlShoppingCoachtime/listAjax.do',
            dataType: 'json',
            data: {shopid:'${map.shop.userid}',dateint:dint,ajax:'ajax'},
            success: function (data) {

				for (var i = 0; i < data['rows'].length; i ++) {
					var t = data['rows'][i];
					var status = t['status'];
				}
            }
        	});
        	
	}
</script>
</head>

<body>
<div class="selectLayer">
  <ul></ul>
</div>
<div class="pageTimeLayer"><div style="padding:18px 0 0 22px;"><div id="sellerPart2"></div></div></div>
<div class="pageTimeLayerBg"></div>
<script>
WdatePicker({eCont:'sellerPart2',onpicked:function(dp){
	

	$('.dateLayer11').css('left',$('#sellerPart2').offset().left);
	$('.dateLayer11').css('top',$('#sellerPart2').offset().top);
	$('.dateLayer11').show();
	}})
</script>
<div class="dateLayer11">
      <h5>上午</h5>
      <div class="list">
            <ul>
              <li><em>7</em>
                  <div id="time7"><span class='hourshang'></span><span class='hourxia'></span></div>
              </li>
              <li><em>8</em>
                  <div id="time8"><span class='hourshang'></span><span class='hourxia'></span></div>
              </li>
              <li><em>9</em>
                  <div id="time9"><span class='hourshang'></span><span class='hourxia'></span></div>
              </li>
              <li><em>10</em>
                  <div id="time10"><span class='hourshang'></span><span class='hourxia'></span></div>
              </li>
              <li><em>11</em>
                  <div id="time11"><span class='hourshang'></span><span class='hourxia'></span></div>
              </li>
              <li><em>12</em>
                  <div id="time12"><span class='hourshang'></span><span class='hourxia'></span></div>
              </li>
            </ul>
            <span class="clear_f"></span>
      </div>
      <h5>下午</h5>
      <div class="list">
            <ul>
              <li><em>13</em>
                  <div id="time13"><span class='hourshang'></span><span class='hourxia'></span></div>
              </li>
              <li><em>14</em>
                  <div id="time14"><span class='hourshang'></span><span class='hourxia'></span></div>
              </li>
              <li><em>15</em>
                  <div id="time15"><span class='hourshang'></span><span class='hourxia'></span></div>
              </li>
              <li><em>16</em>
                  <div id="time16"><span class='hourshang'></span><span class='hourxia'></span></div>
              </li>
              <li><em>17</em>
                  <div id="time17"><span class='hourshang'></span><span class='hourxia'></span></div>
              </li>
              <li><em>18</em>
                  <div id="time18"><span class='hourshang'></span><span class='hourxia'></span></div>
              </li>
            </ul>
            <span class="clear_f"></span>
      </div>
      <h5>晚上</h5>
      <div class="list">
            <ul>
              <li><em>19</em>
                  <div id="time19"><span class='hourshang'></span><span class='hourxia'></span></div>
              </li>
              <li><em>20</em>
                  <div id="time20"><span class='hourshang'></span><span class='hourxia'></span></div>
              </li>
              <li><em>21</em>
                  <div id="time21"><span class='hourshang'></span><span class='hourxia'></span></div>
              </li>
              <li><em>22</em>
                  <div id="time22"><span class='hourshang'></span><span class='hourxia'></span></div>
              </li>
            </ul>
            <span class="clear_f"></span>
      </div>
</div>




<%@ include file="/page/kailianheader.jsp" %>


<div class="h10"></div>
<div class="wal">
<!--wal-->
<h1 class="detailTitle" style="line-height:30px;">${map.product.name}<c:if test="${map.product.subname ne null}"><br/><font style="font-size:18px;">${map.product.subname}</font></c:if></h1>
<div class="fl DetailPart1_01">
          <div class="list">
            <ul>
            	<c:forEach var="p" items="${map.photos}">
              		<li style="text-align:center;width:486px;">
              			<a title="${p.comment}" class="fancybox-thumbs" data-fancybox-group="thumb" href="${ctx}/${my:smallphoto(request,p.resource,'b')}">
              				<img alt="${p.name}" src="${ctx}/${my:smallphoto(request,p.resource,'m')}" style="max-width:486px;max-height:326px;margin:0 auto;" />
              			</a>
              		</li>
              </c:forEach>

            </ul>
          </div>
          <div class="imgList">
             <ul>
              <c:forEach var="p" items="${map.photos}">
              		<li><a>
              			<img alt="${p.name}" src="${ctx}/${my:smallphoto(request,p.resource,'s')}" style="width:88px;height:62px;" />
              		</a></li>
              </c:forEach>
            </ul>
          </div>
</div>
<script type="text/javascript">
$('.DetailPart1_01').find('.imgList').find('img').fadeTo(10,0.6);
$('.DetailPart1_01').find('.imgList').find('img:first').fadeTo(10,1);
$('.DetailPart1_01').find('.imgList').find('img').each(function(i){
	$(this).click(function(){
		$('.DetailPart1_01').find('.imgList').find('img').fadeTo(10,0.6);
		$(this).fadeTo(10,1);
		$('.DetailPart1_01').find('.list').animate({scrollLeft: i*486}, 200);
		})
		
		$(this).mouseover(function(){
		$('.DetailPart1_01').find('.imgList').find('img').fadeTo(10,0.6);
		$(this).fadeTo(10,1);
		$('.DetailPart1_01').find('.list').animate({scrollLeft: i*486}, 200);
		})
		
	})
	

	

</script>


<div class="fl DetailPart1_02">
         <h5>课程评价：</h5>
         <div class="imgDiv"><c:if test="${map.product.comment ne null or map.product.comment.point le 0}">${my:stars(ctx, map.product.comment.point)}</c:if></div>
         <div class="list">
            <ul>
            <c:choose>
            	<c:when test="${map.product.comment ne null}">
            		<li>评价：${map.comments.totalCount}</li>
              		<li>课程评分：<b>${map.product.comment.pointDescriptionMatch}分</b></li>
            	</c:when>
            	<c:otherwise>
            		<li>暂无评分</li>
            	</c:otherwise>
            </c:choose>
              
              <li>商家区域：${map.product.province}${map.product.city}</li>
              <li>场地费用：
              	<c:choose>
              		<c:when test="${map.product.placePriceInclued eq 1}">包含场地费</c:when>
              		<c:otherwise>不含场地费</c:otherwise>
              	</c:choose>
              </li>
              <li>场地说明：<a class="easyui-tips" tooltip="${map.product.placeAddition}">${my:maxleng(map.product.placeAddition, 6)}</a></li>
            </ul>
         </div>
         <div class="msg">
             <ul>
             <li>
             	<c:choose>
             		<c:when test="${map.product.returnClassCount eq null or map.product.returnClassCount eq -1}">
             			<a class="btn easyui-tips"  style="font-size:10px;" tooltip="无需预约">无需预约</a>
             		</c:when>
             		<c:when test="${map.product.returnClassCount eq null or map.product.returnClassCount eq -2}">
             			<a class="btn easyui-tips"  style="font-size:10px;" tooltip="电话预约">电话预约</a>
             		</c:when>
             		<c:when test="${map.product.returnClassCount eq null or map.product.returnClassCount eq 0}">
             			<a class="btn easyui-tips"  style="font-size:10px;" tooltip="您可以在开课之前随时取消预约">随时取消预约</a>
             		</c:when>
             		<c:otherwise>
             			<a tooltip="您可以在开课之前${map.product.returnClassCount}天取消预约"  style="font-size:10px;" class="btn easyui-tips">课前${map.product.returnClassCount}天取消</a>
             		</c:otherwise>
             	</c:choose>
             </li>
             
             <li>
             	<c:choose>
             		<c:when test="${map.product.returnClassCount ne null and map.product.returnClassCount gt 0 and map.product.extInt5 ne null and map.product.extInt5 gt 0}">
             			<a class="btn easyui-tips"  tooltip="您需要提前${map.product.extInt5}天进行预约" style="font-size:10px;">提前${map.product.extInt5}天预约</a>
             		</c:when>
             		<c:otherwise>
             		</c:otherwise>
             	</c:choose>
             </li>
             
             <!-- 
             <li><img src="${ctx}/image/nimg30_1.png"/></li>
             <li><img src="${ctx}/image/nimg30_2.png"/></li>
             <li><img src="${ctx}/image/nimg30_3.png"/></li>
              -->
             </ul>
         </div>
         <div class="num">
             <ul>
               <li><b>购买服务数量：</b></li>
               <li class="inputDiv numInput"><span class="jianBtn"></span><input id="thecount" type="text" value="1" /><span class="jiaBtn"></span></li>
              	<!-- 
              	<li><a href="javascript:;" class="pageTimeLayerA">预约时间</a></li>
 -->
             </ul>
         </div>
         <div class="btnDiv">
         
         <c:if test="${map.product.status ge 1}">
         	<c:choose>
         	<c:when test="${map.product.shopId eq 150 and map.product.buyedCount ge 30}">
         	<a href="#" onclick="" class="btn1 btn2">人数已满</a>
         	</c:when>
         	<c:otherwise>
         	<a href="#" onclick="addToShopCar1(${map.product.id});" class="btn1">立即购买</a>
         	<a href="#" onclick="addToShopCar1(${map.product.id});" class="btn1 btn2">加入购物车</a>
         	</c:otherwise>
         	</c:choose>
         </c:if>
         </div>
         <div class="notice">
           <ul>
             <li><img src="${ctx}/image/nimg16_13.gif"/>
             <a href="#" onclick="subajax('${ctx}/kailian/CmsCommonSaved/addSave.do?type=20&targetId=${map.product.id}&targetPhoto=${map.product.photo}&ajax=ajax&targetName=${map.product.name}');">收藏商品</a>
             <span></span></li>
             <li>
             <div class="bshare-custom"><div class="bsPromo bsPromo2"></div>
             <a title="更多平台" class="bshare-more">
             <img src="${ctx}/image/nimg16_14.png" />
             分享</a></div>
             <script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=0ff566ad-f476-449e-a264-d256030b7e9b&amp;pophcol=2&amp;lang=zh"></script><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
             
             </li>
           </ul>
         </div>
         <div class="contentDiv">
               <div class="msg1">已有${map.product.buyedCount}人预定该课程</div>
               <div class="price">
                  <i>￥</i><b style="font-size:28px;"><fmt:formatNumber value="${map.product.price}" pattern="#0.0" /></b>元
               </div>
               <div class="time">时长：${my:classLength(map.product.ext8)}</div>
         </div>
</div>
<div class="fr pageBox DetailPart2">
     <h1>店铺详情</h1>
     <a href="${ctx}/shop_${map.shop.id}.html" class="easyui-tips" tooltip="${map.shop.shopName}"><h2>${my:maxleng(map.shop.shopName,10)}</h2></a>
     <div class="list">
          <ul>
            <li>级别：<c:if test="${map.shop.comment ne null}">${my:stars(ctx, map.shop.comment.point)}</c:if></li>
            <li></li>
          </ul>
     </div>
     <div class="msg"><a href="" class="DetailLayerA"><img src="${ctx}/image/lico8.gif" alt="" /></a></div>
     <div class="btn"><a href="${ctx}/shop_${map.shop.id}.html">进入店铺</a>
     <a href="#" onclick="subajax('${ctx}/kailian/CmsCommonSaved/addSave.do?type=10&targetId=${map.shop.id}&ajax=ajax');">收藏店铺</a></div>
     <div class="content">
     <c:if test="${map.shop.comment ne null}">
     描述相符： ${map.shop.comment.pointDescriptionMatch}分<br />
专业态度： ${map.shop.comment.pointPerfational}分<br />
服务态度： ${map.shop.comment.pointServiceAttitude}分<br />
预约成功率 ： ${map.shop.comment.pointAppointmentSuccessful}分
</c:if>
<br /><br />
<!-- 
好评率：98.94% <img src="${ctx}/image/lico7.png" /><br />
 -->
提供服务客户：${map.shop.servedClients} <br />
创店时间：${my:transDate(map.shop.createtimelong)}
     </div>
</div>
<span class="clear_f"></span>
<div class="h10"></div>
<!---->
<div class="DetailLayer">
<div class="bg">
     <a href="javascript:;" class="close"></a>
     <div class="content">
     <b>收件人：${map.product.ext5}</b><br />
     <b>内容：</b>进入会员中心可以查看店家回复
     </div>
     <div class="text"><textarea id="messagecontent" name="" cols="" rows="" ></textarea></div>
     <a href="javascript:postmessage();" class="btn">发布留言</a>
</div>
</div>
<!---->
<div class="fl pageBox DetailPart3">
       <h1>客服中心</h1>
       <div class="content">
工作时间<br />
周一至周五：9:00-21:00 <br />
周六至周日：0:00-24:00
       </div>
       <h1>其它服务</h1>
       <div class="list">
          <ul>
          <c:forEach var="v" items="${fn:split(my:config('热门标签',''),',')}" varStatus="st">
					<li style=""><a href="${ctx}/kailian/KlSellerProduct/search.do?name=${v}" target="_blank">${v}</a></li>
				</c:forEach>

          </ul>
          <span class="clear_f"></span>
       </div>
       <h1>销售排行</h1>
       <div class="list1">
           <ul>
           <c:forEach var="v" items="${map.paihang}" varStatus="vs">
           	<c:choose>
           		<c:when test="${vs.index eq 0}">
           			<li class="liNow">
                 
           		</c:when>
           		<c:otherwise>
           		 <li>
                 
           		</c:otherwise>
           	</c:choose>
           	<div class="num">${vs.index + 1}</div>
                 <div class="imgDiv"><a href="${ctx}/product_${v.id}.html"><img src="${ctx}/${v.photo}" style="width:50px;height:50px;" /></a></div>
                 <h5><a href="${ctx}/product_${v.id}.html">${my:maxleng(v.name,12)}</a></h5>
                 <div class="msg">已售出${v.buyedCount}笔</div>
             </li>
           </c:forEach>
          
           </ul>
       </div>
</div>
<div class="fr pageBox" style="background:url(${ctx}/image/bg3.gif) left top repeat-y; width:796px;">
<!---->
<div class="fl DetailPart4">
     <div class="tab DetailList">
          <ul>
            <li class="liNow" onmouseover="nowtab=0;" onmouseout="nowtab=-1;"><a href="javascript:;">基本信息</a></li>
            <li onmouseover="nowtab=1;" onmouseout="nowtab=-1;"><a href="javascript:;">详细信息</a></li>
            <li onmouseover="nowtab=2;" onmouseout="nowtab=-1;"><a href="javascript:;">地理位置</a></li>
            <li onmouseover="nowtab=3;" onmouseout="nowtab=-1;"><a href="javascript:;">教练信息</a></li>
            <li onmouseover="nowtab=4;" onmouseout="nowtab=-1;"><a href="javascript:;">服务评价(${map.comments.totalCount})</a></li>
            <li onmouseover="nowtab=5;" onmouseout="nowtab=-1;"><a href="javascript:;">成交记录(${map.buyed.totalCount})</a></li>
          </ul>
     </div>
     <div class="tabContentDiv">
          <div class="tabContent DetailPart4_01">
<!--基本信息-->

<div class="h10"></div>
<!-- 
<h2>基本信息</h2>
 -->
<div class="content" style="word-wrap: break-word;">
<!-- 
<img src="${ctx}/${map.product.photo}" style="max-width:300px;max-height:200px;" />
<br/>
 -->
<br/>
<div>
<c:choose>
<c:when test="${fn:contains(map.product.description,'<p')}">
${map.product.description}
</c:when>
<c:otherwise>
${my:replaceall(map.product.description,'\\n','<br/>')}
</c:otherwise>
</c:choose>
</div>
<!--
      <b>•课程名称</b><br />
　— —损伤康复性训练<br />
•建议训练频率— —一周3次<br />
•建议训练周期— —3个月
<br /><br />
<b>•优惠信息</b>（30节课优惠至600元)<br />
<b>•课程评分：</b>9.1分<br />
<b>•课程评价：</b>
<br /><br />
<b>•场地费用：</b><br />
　课时费包含场地费用<br />
<b>•场地信息：</b><br />
地址：北京市东城区建外soho东区，XX楼XX层，XX号。<br />
营业时间：9:00am——10：00pm.
-->
</div>
<!--基本信息End-->
          </div>
          <div class="tabContent">
<!--详细信息-->
<div class="DetailPart4_02">
    <div class="content">
         <ul>
           <li><b>课程名称：</b>${map.product.name}&nbsp;</li>
           <!--
           <li><b>总课时：</b>${map.product.classCount}节&nbsp;</li>
           -->
           
           <li><b>单节时长：</b>${map.product.ext8}分钟&nbsp;</li>
           <li><b>教学方式：</b>
           	<c:choose>
           		<c:when test="${map.product.teachType eq 1}">一对一</c:when>
           		<c:when test="${map.product.teachType eq 2}">多对一</c:when>
           		<c:when test="${map.product.teachType eq 3}">一对多</c:when>
           	</c:choose>&nbsp;
           </li>

           <li><b>销售截止：</b>${my:transIntToDate(map.product.validDays)}&nbsp;</li>
           <li><b>课程分类：</b>${my:showcont('KlSellerProduct','categoryid',map.product.categoryid,0 )} &nbsp;</li>
           <li><b>场地情况：</b>${map.product.ext1}&nbsp;</li>
           <!-- 
           <li><b>课程强度：</b>中&nbsp;</li>
           <li><b>风险性：</b>高&nbsp;</li>
           <li><b>教练背景：</b>张教练。从业7年以来培训学员25000余人。安全记录100%！教学质量95%以上受到学员的一致好评！树立了良好的口碑！&nbsp;</li>
           <li><b>目标描述：</b>学员应具备一基础，本课程为巩固原有技能，学习新的泳姿，依次学习：仰泳、自由泳、蝶泳&nbsp;<br /><br /></li>
            -->
           <li><b>联系方式：</b>电话：${map.shop.phoneno}    EMAIL：${map.shop.email}</li>
           <!-- 
           <li><b>教学内容：</b>
           　　${my:replaceall(map.product.addition,'\\r\\n','<br/>')}&nbsp;
           </li>
            -->
         </ul>
         
    </div>
    <!---->
     <div class="storePart6 msg">
          <h2>服务设施</h2>
          <div class="list">
             <ul>
               <li><img id="ii1" src="${ctx}/image/nimg16_9.gif"/><span>免费</span></li>
             </ul>
          </div>
          <div class="list freelistxx">
             <ul>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>私人储物柜</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>私人储物柜锁</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>车位</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>锻炼服饰</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>补剂</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>体测</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>淋浴</span></li>
             </ul>
          </div>
          <div class="list freelistxx">
             <ul>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>桑拿</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>拖鞋</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>浴巾</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>糖果茶点</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>饮用水</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>功能饮料</span></li>
               <li><img src="${ctx}/image/nimg16_10.png"/><span>课后辅导</span></li>
             </ul>
          </div>
          <div class="list freelistxx">
             <ul>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>一对一指导</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>一对多指导</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>Wifi</span></li>
             </ul>
          </div>
          
          <div style="clear:both;"></div>
          <div class="list">
             <ul>
               <li><img id="ii2" src="${ctx}/image/nimg16_10.png"/><span>收费</span></li>
             </ul>
          </div>
          <div class="list moneylistxx">
             <ul>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>私人储物柜</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>私人储物柜锁</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>车位</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>锻炼服饰</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>补剂</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>体测</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>淋浴</span></li>
             </ul>
          </div>
          <div class="list moneylistxx">
             <ul>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>桑拿</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>拖鞋</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>浴巾</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>糖果茶点</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>饮用水</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>功能饮料</span></li>
               <li><img src="${ctx}/image/nimg16_10.png"/><span>课后辅导</span></li>
             </ul>
          </div>
          <div class="list moneylistxx">
             <ul>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>一对一指导</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>一对多指导</span></li>
               <li><img src="${ctx}/image/nimg16_922.gif"/><span>Wifi</span></li>
             </ul>
          </div>
          <span class="clear_f"></span>
     </div>
     
    

      <script>
     $(function(){
			$('.freelistxx ul li').hide();
			$('.moneylistxx ul li').hide();
			
      		//$('.storePart6 .list ul li img').css({'opacity':0});
      		var ads = "${map.shop.addition}";
      		if (ads.length > 0) {
      		var ss = ads.split(",");
      		for (var i = 0; i < ss.length; i ++) {
      			var s = ss[i];
      			var kk = s.split('-');
      			
      			if (kk.length == 1)
      				$(".freelistxx span:contains('" + kk[0] + "')").parent().show().find('img').css({'opacity':1}).attr("src","${ctx}/image/nimg16_9.gif");
      			else if (kk.length == 2)
      				$(".moneylistxx span:contains('" + kk[0] + "')").parent().show().find('img').css({'opacity':1}).attr("src","${ctx}/image/nimg16_10.png");
      			
      		}
      		
      		
      		
      		}
      		
      		$(".moneylistxx span:contains('免费')").parent().show().find('img').css({'opacity':1}).attr("src","${ctx}/image/nimg16_9.gif");
      		$(".moneylistxx span:contains('收费')").parent().show().find('img').css({'opacity':1}).attr("src","${ctx}/image/nimg16_10.png");
      		$(".freelistxx span:contains('免费')").parent().show().find('img').css({'opacity':1}).attr("src","${ctx}/image/nimg16_9.gif");
      		$(".freelistxx span:contains('收费')").parent().show().find('img').css({'opacity':1}).attr("src","${ctx}/image/nimg16_10.png");
   
      		$('#ii1').show().css({'opacity':1});
      		$('#ii2').show().css({'opacity':1});
      		$('.freeli').show().css({'opacity':1});
      		$('.moneyli').show().css({'opacity':1});
     })
     </script>
    
    <!--
    <div class="msg">
        <h2>服务设施</h2>
        <div class="list list1">
           <ul>
             <li><img src="${ctx}/image/nimg16_9.gif"/><a href="">免费</a></li>
             <li><img src="${ctx}/image/lico9.gif"/><a href="">收费</a></li>
           </ul>
        </div>
        <div class="list">
           <ul>
             <li><img src="${ctx}/image/nimg16_9.gif"/><a href="">私人储物柜</a></li>
             <li><img src="${ctx}/image/nimg16_9.gif"/><a href="">私人储物柜锁</a></li>
             <li><img src="${ctx}/image/nimg16_9.gif"/><a href="">车位</a></li>
             <li><img src="${ctx}/image/nimg16_9.gif"/><a href="">锻炼服饰</a></li>
             <li><img src="${ctx}/image/nimg16_9.gif"/><a href="">补剂</a></li>
             <li><img src="${ctx}/image/nimg16_9.gif"/><a href="">体测</a></li>
             <li><img src="${ctx}/image/nimg16_9.gif"/><a href="">淋浴</a></li>
           </ul>
        </div>
        <div class="list">
           <ul>
             <li><img src="${ctx}/image/nimg16_9.gif"/><a href="">桑拿</a></li>
             <li><img src="${ctx}/image/nimg16_9.gif"/><a href="">拖鞋</a></li>
             <li><img src="${ctx}/image/nimg16_9.gif"/><a href="">浴巾</a></li>
             <li><img src="${ctx}/image/nimg16_9.gif"/><a href="">糖果茶点</a></li>
             <li><img src="${ctx}/image/nimg16_9.gif"/><a href="">饮用水</a></li>
             <li><img src="${ctx}/image/nimg16_9.gif"/><a href="">功能饮料</a></li>
             <li><img src="${ctx}/image/lico9.gif"/><a href="">课后辅导</a></li>
           </ul>
        </div>
        <div class="list">
           <ul>
             <li><img src="${ctx}/image/nimg16_9.gif"/><a href="">一对一指导</a></li>
             <li><img src="${ctx}/image/nimg16_9.gif"/><a href="">一对多指导</a></li>
             <li><img src="${ctx}/image/nimg16_9.gif"/><a href="">Wifi</a></li>
           </ul>
        </div>
        <span class="clear_f"></span>
    </div>
    -->
</div>
<!--详细信息End-->
          </div>
          <div class="tabContent">
<!--地理位置-->
<div class="DetailPart4_03">
<!--  
            <h2>地理位置</h2>
-->         
            <div class="content">
            ${map.product.ext1}<br />
电话：${map.shop.phoneno} <br />
交通方式：${map.shop.ext9}
            </div>
            <div id="mapdiv" class="imgDiv" style="border:0px solid red;height:400px;"></div>
</div>
<!--地理位置End-->
          </div>
          <div class="tabContent">
<!--教练信息-->
<div class="DetailPart4_04">

<c:forEach var="c" items="${map.coaches}">
	 <h2>${c.name}</h2>
            <div class="img" style="text-align:center;">
            	<a href="${ctx}/coach_${map.shop.id}_${c.id}.html" target="_blank">
            		<img src="${ctx}/${c.photo}" style="max-width:560px;max-height:400px;" />
            	</a></div>
            <div class="msg">
            	${my:replaceall(c.profile,'\\r\\n','<br/>')}&nbsp;
            </div>
</c:forEach>
            
</div>
<script type="text/javascript">
$('.DetailPart4_04').find('.msg:last').css('background','none');
</script>
<!--教练信息End-->
          </div>
          <div class="tabContent">
<!--服务评价-->

<div class="DetailPart4_05">
	<iframe id="commentiframe" src="${ctx}/comment_${param.id}.html" style="border:0px solid red;width:100%;height:200px;">
	
	</iframe>
<!-- 
         <div class="list">
              <ul>
              	<c:forEach var="c" items="${map.comments.result}">
                <li>
                	
                    <div class="imgDiv"><a href=""><img src="${ctx}/<c:choose><c:when test="${c.userphoto ne null}">${c.userphoto}</c:when><c:otherwise>/image/logo.png</c:otherwise></c:choose>" style="max-width:51px;max-height:51px;" alt="" /></a><div>${c.username}</div></div>
                    <div class="content">
                    ${c.comment}<br/>
                    
                    </div>
                    <div class="msg">${my:transTime(c.createtimelong)}
                    &nbsp;
                    ${my:stars(ctx, c.point)}
                    </div>
                </li>
                </c:forEach>
             
              </ul>
              <span class="clear_f"></span>
         </div>
          ${my:drawpage(map.comments, pageContext.request, 'ptype=comment')}
       -->
</div>

<!--服务评价End-->
          </div>
          <div class="tabContent">
<!--成交记录-->
<div class="DetailPart4_06">
        <table width="100%" cellpadding="0" cellspacing="0" border="0">
               <tr>
                 <th width="150">买家</th>
                 <th width="150">项目</th>
                 <th width="100">付款时间</th>
                 <th>说明</th>
               </tr>
             <c:forEach var="v" items="${map.buyed.result}">
             <tr>
                 <td>${my:maxleng(v.ext1,1)}</td>
                 <td style="line-height:15px;"><span tooltip="${v.productName}" class="easyui-tips" style="">${my:maxleng(v.productName,8)}</span></td>
                 <td>${my:transDate(v.createtimelong)}</td>
                 <td>无</td>
               </tr>
             </c:forEach>
               <!-- 
               <tr>
                 <td>用户张三</td>
                 <td>器械健身</td>
                 <td>2014年2月22</td>
                 <td>产品服务说明</td>
               </tr>
              -->
        </table>
        <!-- 
        ${my:drawpage(map.comments, pageContext.request, 'ptype=deal')}
         -->
</div>
<!--成交记录End-->
          </div>
     </div>
</div>
<div class="fr DetailPart5">
	<c:if test="${map.shop.mapx ne null and map.shop.mapx gt 0 and fn:length(map.nearbys) gt 0}">
       <h1>附近的同类课程 ......</h1>
       <div class="list">
          <ul>
          	<c:forEach var="v" items="${map.nearbys}">
          	<c:if test="${v.id ne map.product.id }">
            <li>
                <div class="imgDiv"><a href="${ctx}/product_${v.id}.html"><img src="${ctx}/${v.photo}" style="width:156px;height:98px;"/></a></div>
                <div class="price"><b class="fl">￥<fmt:formatNumber value="${v.price}" pattern="#0.0" />元/节</b><span class="fr">已售${v.buyedCount}节</span></div>
                <h5><a href="${ctx}/product_${v.id}.html">${v.name}</a></h5>
                <div class="content">
                  ${v.ext5}<br/>
                  <c:if test="${v.ext10 ne null}">
                  距离${(v.ext10)}公里
                  </c:if>
                </div>
            </li>
            </c:if>
            </c:forEach>
           
          </ul>
       </div>
      </c:if>
       <h1 class="name">最HOT课程 ......</h1>
       <div class="list">
          <ul>
           <c:forEach var="v" items="${map.hots}">
            <li>
                <div class="imgDiv"><a href="${ctx}/product_${v.id}.html"><img src="${ctx}/${v.photo}" style="width:156px;height:98px;"/></a></div>
                <div class="price"><b class="fl">￥${v.price}元/节</b><span class="fr">已售${v.buyedCount}节</span></div>
                <h5><a href="${ctx}/product_${v.id}.html">${v.name}</a></h5>
                <div class="content">
                  ${v.ext5}<br />
                </div>
            </li>
            </c:forEach>
            
          </ul>
       </div>
</div>
<span class="clear_f"></span>
<!---->
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<%@ include file="/page/kailiantail.jsp" %>
<script type="text/javascript">

$(function(){
	getStaticsData('product,${map.product.id}');
});

var map = new BMap.Map("mapdiv");
$(function(){

	

$('.fancybox-thumbs').fancybox({
				prevEffect : 'none',
				nextEffect : 'none',

				closeBtn  : false,
				arrows    : true,
				nextClick : true,

				helpers : {

				}
			});	


map.centerAndZoom(new BMap.Point(${map.product.mapx}-0.2,${map.product.mapy+0.1}), 12);
var marker1 = new BMap.Marker(new BMap.Point(${map.product.mapx},${map.product.mapy}));  // 创建标注
map.addOverlay(marker1);              // 将标注添加到地图中
var infoWindow1 = new BMap.InfoWindow("${my:replaceall(map.product.ext1,'\\n','<br/>')}");
marker1.addEventListener("click", function(){this.openInfoWindow(infoWindow1);});



map.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件
map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL}));  //右上角，仅包含平移和缩放按钮
map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT, type: BMAP_NAVIGATION_CONTROL_PAN}));  //左下角，仅包含平移按钮
map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_BOTTOM_RIGHT, type: BMAP_NAVIGATION_CONTROL_ZOOM}));  //右下角，仅包含缩放按钮


//setTimeout("map.setZoom(12);",2000);



});


function iframeheight(ht) {
	//alert(ht);
	$('#commentiframe').css({height:(parseInt(ht)+100) + 'px'});
}
   


</script>
</body>
</html>