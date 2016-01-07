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
<title>${map.shop.shopName}--开练网</title>
<link href="${ctx}/page3/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/page3/style/kcShow.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/page3/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/page3/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/page3/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/page3/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/page3/script/jquery_scroll.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/page3/script/jquery.SuperSlide.2.1.1.js"></script>
<!--[if lte IE 6]>
<script src="${ctx}/page3/script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
<style type="text/css">
body{background:#f9f9f9;}

.shop_01 img {
		max-width:300px;
	}
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
您所在的位置：<a href="${ctx}/index.html">开练网首页</a><span>${map.shop.shopName}</span>
</div>
</div>

<div style="background:#FFF; height:642px;"">
<div class="wal shop2Part1">
<!--wal-->
<h1 class="title">${map.shop.shopName}</h1>
<div class="msg">
    <ul>
      <li><img src="${ctx}/page3/image/limg13_1.png"/>地址：${map.shop.address}</li>
      <li><img src="${ctx}/page3/image/limg13_2.png"/>
      	<c:if test="${map.shop.phoneno}">电话：${map.shop.phoneno}</c:if>
      </li>
      <li class="li_01"><span>信誉</span><img src="${ctx}/page3/image/limg80.png"/></li>
    </ul>
</div>
<div class="fl imgList" style="width:676px;height:507px;overflow:hidden;"><img src="${ctx}/${map.focus[0].resource}" style="height:507px;" /><a href="javascript:prompt_fun('.shopImgLayer');" class="btn"></a></div>
<div class="fr" style="width:300px;">
	<!--  -->
		<c:if test="${map.products.totalCount gt 0}">
			<c:set value="${map.products.result[0]}" var="v" />
          <div class="shop2Part1_1">
               <div class="ico"><img src="${ctx}/page3/image/limg89.png"/></div>
               <div class="imgDiv"><a href=""><img src="${ctx}/${v.photo}" style="max-width:300px;max-height:224px;"/></a></div>
               <div class="box">
                   <h1><a href="">${v.name}</a></h1>
                   <div class="content">${v.subname}</div>
                   <div class="price">开练价<b>¥${v.price}</b>／${v.ext8}分钟</div>
               </div>
          </div>
         </c:if>
          <!---->
          <div class="shop2Part1_2">
               <div class="imgDiv"><a href=""><img src="${ctx}/page3/image/limg72.png"/></a></div>
               <div class="name">
               予以商品评分：<b>96分</b><br />测评师：<span>Cassie</span>
               </div>
               <div class="content">
               总体来讲是个高大上的专业瑜伽馆，上课前顾问的服务是比较周到的... <a href="">更多>></a>
               </div>
          </div>
          <div class="btn">
              <ul>
                <li><a href=""><img src="${ctx}/page3/image/limg17_1.png"/>收藏店铺</a></li>
                <li><a href=""><img src="${ctx}/page3/image/limg17_2.png"/>分享店铺</a></li>
              </ul>
          </div>
     </div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
</div>

<div class="h20"></div>
<div class="wal">
<!--wal-->
<div class="shop2Part2Tab">
           <ul>
             <li><a href="javascript:;" class="aNow">店铺详情</a></li>
             <li><a href="javascript:;">活动&课程</a></li>
             <li><a href="javascript:;">圈子</a></li>
             <li><a href="javascript:;">卖了多少(100)</a></li>
           </ul>
</div>
<div class="shop2Part2TabDiv"></div>
<!---->
<div class="fr shopSide">
      <div class="touxiang"><a href=""><img src="${ctx}/page3/image/img90.png"/></a></div>
      <div class="box">
           <h1><a href="">卡莫瑜伽</a></h1>
           <div class="msg">89人关注</div>
           <a href="" class="btn">关注圈子</a>
      </div>
      <h2>同类优质圈子推荐</h2>
      <div class="box list">
           <ul>
             <li>
                 <div class="img"><a href=""><img src="${ctx}/page3/image/limg52_1.jpg"/></a></div>
                 <div class="name"><a href="">有机瑜伽</a></div>
             </li>
             <li>
                 <div class="img"><a href=""><img src="${ctx}/page3/image/limg52_2.jpg"/></a></div>
                 <div class="name"><a href="">游记美帝瑜伽馆</a></div>
             </li>
             <li>
                 <div class="img"><a href=""><img src="${ctx}/page3/image/limg52_1.jpg"/></a></div>
                 <div class="name"><a href="">优胜美地瑜伽馆</a></div>
             </li>
             <li>
                 <div class="img"><a href=""><img src="${ctx}/page3/image/limg52_2.jpg"/></a></div>
                 <div class="name"><a href="">优胜美地瑜伽馆</a></div>
             </li>
           </ul>
           <span class="clear_f"></span>
      </div>
      <div class="h20"></div>
      <div class="box"></div>
</div>


<div class="fl" style="width:758px; overflow:hidden; padding-left:20px;">
      <div class="shop_01 shopShow">
      	<a name="shop_01" />
            <h5 class="title"><span>店铺</span> — 基本信息</h5>
            <div class="box">
                  <h1>店铺详情介绍</h1>
                  <a href="javascript:;" class="leftBtn prev"></a>
                  <a href="javascript:;" class="rightBtn next"></a>
                  <div class="list">
                      <ul>
                      	<c:forEach var="v" items="${map.eqs.result}">
                      		<li style="text-align:center;"><a href="#shop_01"><img src="${ctx}/${v.resource}" style="max-width:330px;max-height:248px;" /></a></li>
                      	</c:forEach>
                       
                      </ul>
                  </div>
                  <div class="contentDiv">
                  <div class="scroll Vertical_scroll2">
                  <div class="content">
				<c:choose>
          			<c:when test="${fn:contains(map.shop.introduction,'<p>')}">
          				${my:replaceall(map.shop.introduction,'\\n','')}
          			</c:when>
          			<c:otherwise>
          				${my:replaceall(map.shop.introduction,'\\n','<br/>')}
          			</c:otherwise>
          		</c:choose>      
                  </div>
                  </div>
                  </div>
            </div>
      </div>
      <script type="text/javascript">
      $(".shop_01").slide({mainCell:".list ul",autoPage:true,effect:"topLoop",autoPlay:true,vis:2});
      </script>
      <style type="text/css">
      .jscroll-h{border-radius:12px; -moz-border-radius:12px;}
      </style>
      <div class="h20"></div>
      <div class="shop_02">
            <h5 class="title">教练有哪些</h5>
            <div class="Vertical_scroll2">
            <div class="list">
                    <ul>
                    <c:forEach var="v" items="${map.teachers.result}" varStatus="vs">
                      <li>
                          <dl>
                             <dt><a href=""><img src="${ctx}/${v.photo}" style="max-width:318px;max-height:336px;" /></a></dt>
                             <dd>
                                 <b>${vs.index+1}</b>
                                 <h1>${v.name}</h1>
                                 <c:if test="${v.honor ne null}">
                                 <h2><img src="${ctx}/page3/image/img32.png"/>资质与荣誉</h2>
                                 <div class="msg">
                                 ${my:replaceall(v.honor,'\\r\\n','<br/>')}&nbsp;　
                                 </div>
                                 </c:if>
                             </dd>
                          </dl>
                      </li>
                      </c:forEach>
                      
                    </ul>
            </div>
            </div>
      </div>
      <div class="h20"></div>
      <div class="shop_03">
           <h2><img src="${ctx}/page3/image/limg22_2.png"/>服务设施</h2>
           <ul>
             <li><em><img src="${ctx}/page3/image/limg12_1.png"/>免费</em>
                 <div class="content">
                 <a href="">私人带锁储物柜</a><a href="">饮用水</a><a href="">淋浴</a><a href="">拖鞋</a><a href="">浴巾</a><a href="">糖果茶点</a><a href="">体测</a>
                 </div>
             </li>
             <li class="li_01"><em><img src="${ctx}/page3/image/limg12_2.png"/>收费</em>
                 <div class="content">
                 <a href="">车位</a><a href="">锻炼服饰</a>
                 </div>
             </li>
           </ul>
      </div>
      <div class="h10"></div>
      <div class="shop_04">
      店铺具体位置：${map.shop.address}<a href="">查看详情地图</a>
      </div>
      <div class="h10"></div>
      <!---->
      <h5 class="shopName shopShow">活动&课程 </h5>
      <div class="shop_05">
            <ul>
            <c:forEach var="v" items="${map.products.result}">
              <li>
              	<c:if test="${v.price lt 1}">
                  <div class="ico"><img src="${ctx}/page3/image/limg68_1.png"/></div>
                </c:if>
                  <div class="imgDiv"><a href=""><img src="${ctx}/${v.photo}" style="max-width:366px;max-height:273px;" /></a></div>
                  <div class="box">
                      <h1><a href="">${my:maxleng(v.name,20)}</a></h1>
                      <div class="content">${my:maxleng(v.subname,20)}</div>
                      <div class="price">价格<b>¥${v.price}</b>／${v.ext8}分钟</div>
                  </div>
              </li>
             </c:forEach>
              
            </ul>
            <span class="clear_f"></span>
      </div>
      <!---->
      <h5 class="shopName shopShow">圈子</h5>
      <div class="shop_06">
            <ul>
              <li>
                  <div class="imgDiv"><a href=""><img src="${ctx}/page3/image/limg70_1.png"/></a></div>
                  <a href="" class="btn"></a>
                  <h1><a href="">请叫我大白兔</a></h1>
                  <div class="msg">测评师</div>
                  <div class="content">
                  自从上班之后，小肚子一天比一天大，每天一低头，看见两坨肉肉的游泳圈，感觉自己萌萌哒。 还以为自己是一尺七的小蛮腰呢，按照以往尺码在网上买的裤子，居然拉链都拉不上了。 但是减肚子不难，至少相对于减腿来说先巴拉巴拉我减肚子的方法吧......
                  </div>
                  <div class="time">
                      <div class="fl">2014-11-03</div>
                      <dl class="fr">
                        <dd><a href=""><img src="${ctx}/page3/image/limg24_1.png"/>31</a></dd>
                        <dd><a href="javascript:;" class="formA"><img src="${ctx}/page3/image/limg24_2.png"/>130</a></dd>
                        <dd><a href=""><img src="${ctx}/page3/image/limg24_3.png"/>100</a></dd>
                      </dl>
                  </div>
                  <div class="form">
                       <div class="img"><a href=""><img src="${ctx}/page3/image/limg70_3.png"/></a></div>
                       <div><textarea name="" cols="" rows="">哈哈哈哈好</textarea></div>
                       <div class="btnDiv"><span class="red">5</span>／200字 <input type="button" value="评论" /></div>
                  </div>
              </li>
              <li>
                  <div class="imgDiv"><a href=""><img src="${ctx}/page3/image/limg70_2.png"/></a></div>
                  <a href="" class="btn btnOn"></a>
                  <h1><a href="">请叫我大白梨</a></h1>
                  <div class="msg">瑜伽爱好者</div>
                  <div class="content">
                  自从上班之后，小肚子一天比一天大，每天一低头，看见两坨肉肉的游泳圈，感觉自己萌萌哒。 还以为自己是一尺七的小蛮腰呢。
                       <div class="imgList">
                            <dl>
                              <dd><a href=""><img src="${ctx}/page3/image/limg140_1.jpg"/></a></dd>
                              <dd><a href=""><img src="${ctx}/page3/image/limg140_2.jpg"/></a></dd>
                              <dd><a href=""><img src="${ctx}/page3/image/limg140_3.jpg"/></a></dd>
                              <dd><a href=""><img src="${ctx}/page3/image/limg140_4.jpg"/></a></dd>
                            </dl>
                            <span class="clear_f"></span>
                       </div>
                  </div>
                  <div class="time">
                      <div class="fl">2014-11-03</div>
                      <dl class="fr">
                        <dd><a href=""><img src="${ctx}/page3/image/limg24_1.png"/>31</a></dd>
                        <dd><a href="javascript:;" class="formA"><img src="${ctx}/page3/image/limg24_2.png"/>130</a></dd>
                        <dd><a href=""><img src="${ctx}/page3/image/limg24_3.png"/>100</a></dd>
                      </dl>
                  </div>
                  <div class="form">
                       <div class="img"><a href=""><img src="${ctx}/page3/image/limg70_3.png"/></a></div>
                       <div><textarea name="" cols="" rows="">哈哈哈哈好</textarea></div>
                       <div class="btnDiv"><span class="red">5</span>／200字 <input type="button" value="评论" /></div>
                  </div>
              </li>
              <li>
                  <div class="imgDiv"><a href=""><img src="${ctx}/page3/image/limg70_1.png"/></a></div>
                  <a href="" class="btn"></a>
                  <h1><a href="">哈哈哈哈哈哈啊好</a></h1>
                  <div class="msg">瑜伽爱好者</div>
                  <div class="content">
                  自从上班之后，小肚子一天比一天大，每天一低头，看见两坨肉肉的游泳圈，感觉自己萌萌哒。 还以为自己是一尺七的小蛮腰呢。
                       <div class="imgList">
                            <dl>
                              <dd><a href=""><img src="${ctx}/page3/image/limg285_1.jpg"/></a></dd>
                              <dd><a href=""><img src="${ctx}/page3/image/limg285_2.jpg"/></a></dd>
                            </dl>
                            <span class="clear_f"></span>
                       </div>
                  </div>
                  <div class="time">
                      <div class="fl">2014-11-03</div>
                      <dl class="fr">
                        <dd><a href=""><img src="${ctx}/page3/image/limg24_1.png"/>31</a></dd>
                        <dd><a href="javascript:;" class="formA"><img src="${ctx}/page3/image/limg24_2.png"/>130</a></dd>
                        <dd><a href=""><img src="${ctx}/page3/image/limg24_3.png"/>100</a></dd>
                      </dl>
                  </div>
                  <div class="form">
                       <div class="img"><a href=""><img src="${ctx}/page3/image/limg70_3.png"/></a></div>
                       <div><textarea name="" cols="" rows="">哈哈哈哈好</textarea></div>
                       <div class="btnDiv"><span class="red">5</span>／200字 <input type="button" value="评论" /></div>
                  </div>
              </li>
              <li>
                  <div class="imgDiv"><a href=""><img src="${ctx}/page3/image/limg70_2.png"/></a></div>
                  <a href="" class="btn"></a>
                  <h1><a href="">请叫我大白梨</a></h1>
                  <div class="msg">瑜伽爱好者</div>
                  <div class="content">
                  自从上班之后，小肚子一天比一天大，每天一低头，看见两坨肉肉的游泳圈，感觉自己萌萌哒。 还以为自己是一尺七的小蛮腰呢。
                       <div class="imgList">
                            <dl>
                              <dd><a href=""><img src="${ctx}/page3/image/limg140_1.jpg"/></a></dd>
                              <dd><a href=""><img src="${ctx}/page3/image/limg140_2.jpg"/></a></dd>
                              <dd><a href=""><img src="${ctx}/page3/image/limg140_3.jpg"/></a></dd>
                              <dd><a href=""><img src="${ctx}/page3/image/limg140_4.jpg"/></a></dd>
                            </dl>
                            <span class="clear_f"></span>
                       </div>
                  </div>
                  <div class="time">
                      <div class="fl">2014-11-03</div>
                      <dl class="fr">
                        <dd><a href=""><img src="${ctx}/page3/image/limg24_1.png"/>31</a></dd>
                        <dd><a href="javascript:;" class="formA"><img src="${ctx}/page3/image/limg24_2.png"/>130</a></dd>
                        <dd><a href=""><img src="${ctx}/page3/image/limg24_3.png"/>100</a></dd>
                      </dl>
                  </div>
                  <div class="form">
                       <div class="img"><a href=""><img src="${ctx}/page3/image/limg70_3.png"/></a></div>
                       <div><textarea name="" cols="" rows="">哈哈哈哈好</textarea></div>
                       <div class="btnDiv"><span class="red">5</span>／200字 <input type="button" value="评论" /></div>
                  </div>
              </li>
            </ul>
            <div class="more"><a href="">更多内容>></a></div>
            <div class="form2"><textarea name="" cols="" rows="">我要发帖</textarea></div>
      </div>
      <!---->
      <h5 class="shopName shopShow">卖了多少</h5>
      <div class="kcPart5" style="margin:0px;">
          <div class="title">
                <h2 class="fl">（280人）购买了此店铺的课程</h2>
          </div>
          <div class="table">
          <table width="100%" cellpadding="0" cellspacing="0" border="0">
             <tr>
               <th width="160"><div>买家</div></th>
               <th width="160">课程名称</th>
               <th width="105">购买数量</th>
               <th width="105">成交时间</th>
               <th>属性</th>
               <th>说明</th>
             </tr>
             <tr>
               <td><div>一缕阳光</div></td>
               <td>卡莫瑜伽 阴瑜伽团体课...</td>
               <td>1</td>
               <td>2014-10-14</td>
               <td>明星课程</td>
               <td>无</td>
             </tr>
             <tr>
               <td><div>一缕阳光</div></td>
               <td>卡莫瑜伽 阴瑜伽团体课...</td>
               <td>1</td>
               <td>2014-10-14</td>
               <td>明星课程</td>
               <td>无</td>
             </tr>
             <tr>
               <td><div>一缕阳光</div></td>
               <td>卡莫瑜伽 阴瑜伽团体课...</td>
               <td>1</td>
               <td>2014-10-14</td>
               <td>明星课程</td>
               <td>无</td>
             </tr>
             <tr>
               <td><div>一缕阳光</div></td>
               <td>卡莫瑜伽 阴瑜伽团体课...</td>
               <td>1</td>
               <td>2014-10-14</td>
               <td>明星课程</td>
               <td>无</td>
             </tr>
             <tr>
               <td><div>一缕阳光</div></td>
               <td>卡莫瑜伽 阴瑜伽团体课...</td>
               <td>1</td>
               <td>2014-10-14</td>
               <td>明星课程</td>
               <td>无</td>
             </tr>
             <tr>
               <td><div>一缕阳光</div></td>
               <td>卡莫瑜伽 阴瑜伽团体课...</td>
               <td>1</td>
               <td>2014-10-14</td>
               <td>明星课程</td>
               <td>无</td>
             </tr>
             <tr>
               <td><div>一缕阳光</div></td>
               <td>卡莫瑜伽 阴瑜伽团体课...</td>
               <td>1</td>
               <td>2014-10-14</td>
               <td>明星课程</td>
               <td>无</td>
             </tr>
             <tr>
               <td><div>一缕阳光</div></td>
               <td>卡莫瑜伽 阴瑜伽团体课...</td>
               <td>1</td>
               <td>2014-10-14</td>
               <td>明星课程</td>
               <td>无</td>
             </tr>
             <tr>
               <td><div>一缕阳光</div></td>
               <td>卡莫瑜伽 阴瑜伽团体课...</td>
               <td>1</td>
               <td>2014-10-14</td>
               <td>明星课程</td>
               <td>无</td>
             </tr>
             <tr>
               <td><div>一缕阳光</div></td>
               <td>卡莫瑜伽 阴瑜伽团体课...</td>
               <td>1</td>
               <td>2014-10-14</td>
               <td>明星课程</td>
               <td>无</td>
             </tr>
          </table>
          </div>
          <div class="pageNum4">
          <a href="">1</a><a href="">2</a><a href="">3</a><a href="">4</a><span>...</span><a href="">9</a><a href="" class="next">.</a>
          </div>
      </div>
      <!---->
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20" style="height:28px;"></div>

<div class="shopImgLayer">
      <ul>
      	<c:forEach var="f" items="${map.focus}" varStatus="vs">
        <li style="text-align:center;vertical-align:middle;border:0px solid red;"><img src="${ctx}/${f.resource}" style="margin-top:200px;" /></li>
        </c:forEach>
      </ul>
      <a href="javascript:;" class="prev"></a>
      <a href="javascript:;" class="next"></a>
</div>
<script type="text/javascript">
jQuery(".shopImgLayer").slide({mainCell:"ul",autoPage:true,effect:"leftLoop",autoPlay:true});
jQuery(".shopImgLayer").hide();
</script>

<!--底部start-->
<%@ include file="/page3/kailiantail.jsp" %>
</body>
<script>
	function soldpage(pn) {
 	$.post("${ctx}/kailian/KlSellerShop/productsold.do?id=${map.shop.id}&pageno=" + pn + "&pageNumber=" + pn,{suggest:''},function(result){
    	$(".kcPart5").html("<div class='title'>" +  $(".kcPart5 .title").html() + "</div>" + result);
  	});
}
	
	$(function(){
		soldpage(1);
		$('.shopImgLayer li').css('height',$(window).height());
	});
</script>
</html>