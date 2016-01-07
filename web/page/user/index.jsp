<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	String surl = (String)session.getAttribute("sessionurl");
	session.removeAttribute("sessionurl");
	request.setAttribute("surl", surl);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户首页${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<script>
var host3 = "${ctx}";
</script>
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/member2.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="${ctx}/scripts/jquery-easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${ctx}/scripts/jquery-easyui/themes/icon.css">
<script type="text/javascript" src="${ctx }/scripts/jquery-easyui/jquery.easyui.min.js"></script>

<link rel="stylesheet" href="${ctx}/kindeditornew/themes/default/default.css" />
<script src="${ctx}/kindeditornew/kindeditor.js"></script>
<script src="${ctx}/kindeditornew/lang/zh_CN.js"></script>

<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/comment.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery.tips.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery_scroll.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/date/My97DatePicker/WdatePicker.js"></script>

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

</head>

<body>
<div class="selectLayer">
  <ul></ul>
</div>

<div class="pageTimeLayer"><div style="padding:18px 0 0 22px;"><div id="sellerPart2"></div></div></div>
<div class="pageTimeLayerBg"></div>
<script>

var host3 = "${ctx}";
/*
var date = new Date(new Date().valueOf() + 1*24*60*60*1000);
var date1 = new Date(date.valueOf() + 10 * 24 * 60*60 * 1000);
var tmp = date.getFullYear() + "-" + (date.getMonth()+1) + "-" + (date.getDate());
var tmp1 = date1.getFullYear() + "-" + (date1.getMonth()+1) + "-" + (date1.getDate());
WdatePicker({minDate:tmp,maxDate:tmp1,eCont:'sellerPart2',onpicked:function(dp){
	datetimestr = (dp.cal.getDateStr().replace('-','').replace('-',''));

	$('.dateLayer11').css('left',$('#sellerPart2').offset().left);
	$('.dateLayer11').css('top',$('#sellerPart2').offset().top);
	$('.dateLayer11').show();
	}})
*/
</script>
<div class="dateLayer11">
      <h5>上午</h5>
      <div class="list">
            <ul>
              <li><em>7</em>
                  <div id="time7"><span></span><span></span></div>
              </li>
              <li><em>8</em>
                  <div id="time8"><span></span><span></span></div>
              </li>
              <li><em>9</em>
                  <div id="time9"><span></span><span></span></div>
              </li>
              <li><em>10</em>
                  <div id="time10"><span></span><span></span></div>
              </li>
              <li><em>11</em>
                  <div id="time11"><span></span><span></span></div>
              </li>
              <li><em>12</em>
                  <div id="time12"><span></span><span></span></div>
              </li>
            </ul>
            <span class="clear_f"></span><span class="clear_f"></span>
      </div>
      <h5>下午</h5>
      <div class="list">
            <ul>
              <li><em>13</em>
                  <div id="time13"><span></span><span></span></div>
              </li>
              <li><em>14</em>
                  <div id="time14"><span></span><span></span></div>
              </li>
              <li><em>15</em>
                  <div id="time15"><span></span><span></span></div>
              </li>
              <li><em>16</em>
                  <div id="time16"><span></span><span></span></div>
              </li>
              <li><em>17</em>
                  <div id="time17"><span></span><span></span></div>
              </li>
              <li><em>18</em>
                  <div id="time18"><span></span><span></span></div>
              </li>
            </ul>
            <span class="clear_f"></span><span class="clear_f"></span>
      </div>
      <h5>晚上</h5>
      <div class="list">
            <ul>
              <li><em>19</em>
                  <div id="time19"><span></span><span></span></div>
              </li>
              <li><em>20</em>
                  <div id="time20"><span></span><span></span></div>
              </li>
              <li><em>21</em>
                  <div id="time21"><span></span><span></span></div>
              </li>
              <li><em>22</em>
                  <div id="time22"><span></span><span></span></div>
              </li>
            </ul>
            <span class="clear_f"></span>
            <a href="#" class="btn2" style="background:#393c3d;color:#ffffff;padding:1px;margin:2px;" onclick="subtime();">确定</a>
            <a href="#" class="btn2" style="background:#393c3d;color:#ffffff;padding:1px;margin:2px;" onclick="timeok(1,1,0);">取消</a>
      </div>
      <br/>
</div>
<%@ include file="/page/kailianheader.jsp" %>


<div class="w993 pageNow"><em>当前位置：</em><a href="">首页</a><span>买家会员</span></div>
<div class="w993">
<!--wal-->
<%@ include file="/page/centerleft.jsp" %>

<div class="fl w547">
<!--w547-->
    <div class="memberTitle memberTitle2"><h1>课程管理</h1>
    <!-- 
          <div class="tips">您预约于鹏10个课时课程还未通过教练确认,1个取消预约未通过教练确认！</div>
     -->
    </div>
    <div class="pageBox Orders">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
           <tr>
             <th width="100">课程名称</th>
             <th width="115">机构/教练名称</th>
             <th width="155">预约时间</th>
             <th width="90">预约码</th>
             <th>操作</th>
           </tr>
           <c:forEach var="v" items="${map.orders}">
           <tr>
             <td style="text-align:left;"><a target="_blank" class="easyui-tips" tooltip="${v.productName}" alt="${v.productName}" href="${ctx}/kailian/KlSellerProduct/index.do?id=${v.productid}">${my:maxleng(v.productName,5)}<a/></td>
             <td style="text-align:left;"><a target="_blank" class="easyui-tips" tooltip="${v.shopName}" href="${ctx}/kailian/KlSellerShop/shopindex.do?id=${v.shopid}">${my:maxleng(v.shopName,8)}</a></td>
             
             <c:choose>

             	<c:when test="${v.extInt4 eq -30}">
           			<td colspan=3 align="left" style="text-align:left;padding-left:10px;">
           				无需预约，验证码：${v.extInt5}${v.id}
           			</td>
           		</c:when>
           		<c:when test="${v.extInt4 eq -31}">
           			<td colspan=3 align="left" style="text-align:left;padding-left:10px;">
           				电话预约，验证码：${v.extInt5}${v.id}
           			</td>
           		</c:when>
           		<c:when test="${v.extInt4 eq 0}">
           			<td style="text-align:left;padding-left:10px;">${my:coachTime(v.extInt3,v.extInt1,v.extInt2)}&nbsp;</td>
           			<td>&nbsp;</td>
           			<td>
           			待确认<br/>
           			<a href="javascript:;" id="pageTimeLayer${vs.index}" class="pageTimeLayerA" onclick="classid1=${v.productid};shopproductid=${v.id};showyuyue('pageTimeLayer${vs.index}');">修改</a><br/>
           			<a href="${ctx}/kailian/KlShoppingCoachtime/updateStatus.do?pid=${v.id}&timestatus=-1">取消</a>
           			</td>
           		</c:when>
           		<c:when test="${v.extInt4 eq -10}">
           			<td style="text-align:left;padding-left:10px;"> ${my:coachTime(v.extInt3,v.extInt1,v.extInt2)}&nbsp;</td>
           			<td>&nbsp;</td>
           			<td>
           			<a class="orderLayer4A" style="cursor:pointer;" onclick="$('#jujueyuanyin').html('${v.addition}');">被拒</a><br/>
           			<a href="javascript:;" id="pageTimeLayer${vs.index}" class="pageTimeLayerA" onclick="classid1=${v.productid};shopproductid=${v.id};showyuyue('pageTimeLayer${vs.index}');">预约</a>
           			</td>
           		</c:when>
           		<c:when test="${v.extInt4 eq -1}">
           			<td>&nbsp;</td>
           			<td>&nbsp;</td>
           			<td>
           			
           			<a href="javascript:;" id="pageTimeLayer${vs.index}" class="pageTimeLayerA" onclick="classid1=${v.productid};shopproductid=${v.id};showyuyue('pageTimeLayer${vs.index}');">预约</a>
           			</td>
           		</c:when>
           		<c:when test="${v.extInt4 eq null}">
           			<td>&nbsp;</td>
           			<td>&nbsp;</td>
           			<td>
           			<a href="javascript:;" id="pageTimeLayer${vs.index}" class="pageTimeLayerA" onclick="classid1=${v.productid};shopproductid=${v.id};showyuyue('pageTimeLayer${vs.index}');">预约</a>
           			</td>
           		</c:when>
           		<c:when test="${v.extInt4 eq 1 }">
           			<td style="text-align:left;padding-left:10px;">${my:coachTime(v.extInt3,v.extInt1,v.extInt2)}&nbsp;</td>
           			<td>${v.extInt5}${v.id}</td>
           			<td>已确认<br/>
           			<a href="${ctx}/kailian/KlShoppingCoachtime/updateStatus.do?pid=${v.id}&timestatus=2000">取消</a>
           			</td>
           			
           		</c:when>
           		<c:when test="${v.extInt4 eq 2 }">
           			<td style="text-align:left;padding-left:10px;">${my:coachTime(v.extInt3,v.extInt1,v.extInt2)}&nbsp;</td>
           			<td>&nbsp;</td>
           			<td>已授课</td>
           			
           		</c:when>
           		<c:when test="${v.extInt4 eq -2 }">
           			<td>
           			&nbsp;
           			</td>
           			<td>&nbsp;</td>
           			<td>已取消待确认</td>
           		</c:when>
           		<c:when test="${v.extInt4 eq 3 }">
           			<td>
           			&nbsp;
           			</td>
           			<td>&nbsp;</td>
           			<td>已完课</td>
           		</c:when>
           		

           		</c:choose>
           </tr>
           </c:forEach>

          
    </table>
    </div>
    <div class="h14"></div>
    <!--
    <div class="memberTitle memberTitle2"><h1>服务确认</h1>

    </div>
    <div class="pageBox Orders">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
           <tr>
             <th width="90">课程名称</th>
             <th width="140">机构/教练名称</th>
             <th width="70">价格</th>
             <th width="90">培训确认</th>
             <th width="60">总结</th>
             <th>评分</th>
           </tr>
           <c:forEach var="p" items="${map.sures}">
           <tr>
             <td>${p.productName}</td>
             <td>${p.shopName}</td>
             <td>${p.perPrice}元</td>
             <td><a href="javascript:;" onclick="queren(${p.id},'${p.shopName}','${p.productName}', '${p.progress}');" class="orderLayer1A">确认</a></td>
             <td><a href="javascript:;" class="orderLayer2A">查看</a></td>
             <td><a href="javascript:;" class="orderLayer3A" onclick="commentbox(20, ${p.productid},${p.id});">评分</a></td>
           </tr>
           </c:forEach>

          
    </table>
    </div>
    <div class="h14"></div>
    <!---->
    <div class="memberTitle memberTitle2"><h1>训练记录</h1><a href="javascript:;" class="btn trainLayerA"><img src="${ctx}/image/nimg17_3.png" />写记录</a>
    </div>
    <div class="pageBox">
    <div class="train">
              <ul>
              <c:forEach var="v" items="${map.records}">
                <li>
                   <div class="imgDiv"><img src="${ctx}/image/nimg60_3.png" /></div>
                   <h5><a href="">${v.username}</a><span>${my:transDate(v.createtimelong)}</span></h5>
                   <div class="content">${v.content}   </div>
                   <div class="list">
                   <dl>
                      <c:if test="${v.addition ne null and v.addition ne ''}">
                   		<c:set value="${ fn:split(v.addition, ',') }" var="photos" />
                   		<c:forEach var="p" items="${photos}">
                   			<dd>
                   				<a class="fancybox-thumbs" data-fancybox-group="thumb" href="${ctx}/${p}">
                   				<img src="${ctx}/${p}" style='width:140px;height:93px;' />
                   				</a>
                   			</dd>
                   		</c:forEach>
                   	</c:if>
                   </dl>
                   <span class="clear_f"></span>
                   </div>
                </li>
                </c:forEach>
         
            </ul>
    </div>
    <a href="${ctx}/kailian/KlTrainningRecord/myrecords.do" class="pageMore">点击查看更多 >></a>
    </div>
    <script type="text/javascript">
    $('.train').find('li:last').css('background','none');
    </script>
<!--w547End--> 
</div>
<div class="fr w222">
<!--w222-->
    <div class="memberTitle memberTitle3"><h1>小组...</h1><a href="${ctx}/kailian/CmsGroup/userIndex.do" class="more">更多</a></div>
    <div class="pageBox sideGroup">
         <ul>
         	<c:forEach var="v" items="${map.topgroups}" varStatus="vs">
         	<li>
                 <div class="imgDiv"><a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${v.id}" target="_blank">
                 <img src="${ctx}/${my:showHead(request,'group',v.id)}" style="width:60px;height:60px;"/></a></div>
                 <div class="content">${v.name}:${v.userCount}人
                 	<br />创建人：${v.ext1}
                 	<br />创建日期：${my:transDate(v.createtimelong)}</div>
             </li>
         	
             
  
            </c:forEach>
          </ul>
    </div>
    <div class="h14"></div>
    <!---->
    <div class="memberTitle memberTitle3"><h1>推荐话题...</h1><a href="${ctx}/kailian/CmsGroup/userIndex.do" class="more">更多</a></div>
    <div class="pageBox sideList1">
        <ul>
        <c:forEach var="v" items="${map.toptopics}">
        	<li><a href="${ctx}/kailian/CmsGroup/getTopic.do?topicid=${v.id}" target="_blank">${my:maxleng(v.title,20)}</a></li>
        </c:forEach>
 
        </ul>
    </div>
    <div class="h14"></div>
    <!---->
    <div class="memberTitle memberTitle3">
          <div class="tab">
          <ul>
            <li class="liNow">店铺收藏</li>
            <li>课程收藏</li>
            <li>文章收藏</li>
          </ul>
          </div>
    </div>
    <div class="tabContentDiv pageBox">
          <div class="tabContent sideList2">
                <ul>
                <c:forEach var="v" items="${map.page0.result}">
                 <li>
                    <div class="imgDiv"><img src="${ctx}/${v.targetPhoto}" style="width:56px;height:41px;" /></div>
                    <h2><a href="${ctx}/kailian/KlSellerShop/shopindex.do?id=${v.targetId}" target="_blank">${v.targetName}</a></h2>
                    <div class="content"><!-- 主营：游泳、瑜伽 --></div>
                 </li>
                 </c:forEach>

                </ul>
          </div>
          <div class="tabContent">课程收藏--暂无数据</div>
          <div class="tabContent">文章收藏--暂无数据</div>
    </div>
<!--w222End-->
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="orderLayer trainLayer">
<div class="bgT"></div>
<div class="bg">
      <h5>写记录<a href="javascript:;" class="close"></a></h5>
      <div class="form">
      <form id="form1" action="${ctx}/kailian/KlTrainningRecord/myrecords.do" method="post">
      	<input type="hidden" id="photos" name="photos" />
          <textarea name="content" cols="" rows=""></textarea>
          <div class="inputDiv">
              <span>添加图片：</span>
              <input type="text" class="input1" />
              <input id="photo_button" type="button" class="btn2" value="上传" />
          </div>
      </div>
      <div id="upphotos">

      </div>
      <div class="btnDiv"><input type="button" onclick="$('#photos').val(upedphotos.join(','));$('#form1').submit();" value="发 布" /></div>
     </form>
</div>
<div class="bgB"></div>
</div>

<div class="orderLayer orderLayer1">
<div class="bg">
     <h5>完课确认<a href="javascript:;" class="close"></a></h5>
     <div class="content">
     <span id='shopname'>张三教练</span>发来<span id='classname'>初级游泳</span>的培训确认，<br />
您已经进行到"第<span id='keshi'>三</span>课时"了。
<br /><br />
如果没有异议请确认，若有异议请投诉！
     </div>
     <div class="btnDiv"><a id="querenurl" href="">确 认</a></div>
     <div class="msg">如收到完课确认10天内未能评价，系统默认为中评并确认完课!</div>
</div>
</div>
<!---->
<div class="orderLayer orderLayer2">
<div class="bg">
     <h5>查看<a href="javascript:;" class="close"></a></h5>
     <dl>
       <dt><a href=""><img src="${ctx}/image/nimg60.png"/></a></dt>
       <dd>
         <div class="name"><b><a href="">张三教练</a></b>　　2014-1-24</div>
         <div class="content">
            今天训练结构不错，一定要坚持下去！！！！
         </div>
       </dd>
     </dl>
     <div class="list">
         <ul>
           <li><img src="${ctx}/image/nimg142_5.jpg"/></li>
           <li><img src="${ctx}/image/nimg142_6.jpg"/></li>
           <li><img src="${ctx}/image/nimg142_7.jpg"/></li>
         </ul>
     </div>
     <div class="btnDiv"><a href="">点击查看更多</a></div>
</div>
</div>


<div class="h20"></div>

<div class="orderLayer orderLayer4">
<div class="bg">
     <h5>被拒绝<a href="javascript:;" class="close"></a></h5>
     <div class="form">
         <em>拒绝原因：</em>
         <textarea id="jujueyuanyin"></textarea>
     </div>
</div>
</div>
<!---->
<%@ include file="/page/comment.jsp" %>

<%@ include file="/page/kailiantail.jsp" %>
<script>

 $(function() {
 	<c:if test="${surl ne null and param.ll ne null}">
 		window.location.href = "${surl}";
 	</c:if>
 })
 
KindEditor.ready(function(K) {
				var editor = K.editor({
					allowFileManager : true
				});
				
				
				K('#photo_button').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,
							clickFn : function(url, title, width, height, border, align) {
								//alert(url);
								uploaded(url);
								editor.hideDialog();
							}
						});
					});
				});
				
				
			});
			
			
			
		$('.fancybox-thumbs').fancybox({
				prevEffect : 'none',
				nextEffect : 'none',

				closeBtn  : false,
				arrows    : true,
				nextClick : true,

				helpers : {
					thumbs : {
						width  : 50,
						height : 50
					}
				}
			});	
			
			
		function queren(opid, shopname, classname, keshi) {
		$('#querenurl').attr('href', '${ctx}/kailian/KlShoppingCoachtime/waitconfirm.do?opid=' + opid);
		$('#shopname').html(shopname);
		$('#classname').html(classname);
		$('#keshi').html(keshi);		
	}	
			
</script>
</body>
</html>