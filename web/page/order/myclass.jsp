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
<title>我的课程${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/member.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="${ctx}/scripts/jquery-easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${ctx}/scripts/jquery-easyui/themes/icon.css">
<script type="text/javascript" src="${ctx }/scripts/jquery-easyui/jquery.easyui.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery_scroll.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery.tips.js"></script>

<script language="javascript" type="text/javascript" src="${ctx}/date/My97DatePicker/WdatePicker.js"></script>
<!--[if lte IE 6]>
<script src="script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
<script type="text/javascript">
	var host3 = "${ctx}";
</script>
<script language="javascript" type="text/javascript" src="${ctx}/script/comment.js"></script>
</head>

<body>
<div class="selectLayer">
  <ul></ul>
</div>
<%@ include file="/page/kailianheader.jsp" %>


<div class="h25"></div>
<div class="w993">
<!--wal-->
<%@ include file="/page/centerleft.jsp" %>

<div class="fr w791">
      <div class="memberTitle"><h1>我的课程</h1>
            <div class="tab">
            <ul id="tabul">
              <li id="li0" class="liNow">进行中课时</li>
              <li id="li1">完成课时</li>
            </ul>
            </div>
      </div>
      <div class="pageBox tabContentDiv">
      <!--pageBox-->
      <div class="tabContent">
      <div class="myCourse">
      <form action="${ctx}/kailian/KlShoppingShoppingcartproduct/myclass.do" method="post">
            <ul>
              <li><input type="text" class="input1" value="${param.productName}" name="productName" placeholder="课程名称" /></li>
              <li> 
              <div class="selectDiv1"><span></span>
              ${my:input('KlShoppingShoppingcartproduct','classType',param.classType,0,0 )}
              </div>
              </li>
              <li><input type="text" class="input1 input2" value="${my:setvalue(param.startd,'开始时间')}" name="startd" onClick="WdatePicker()" /></li>
              <li><span>至</span></li>
              <li><input type="text" class="input1 input2" value="${my:setvalue(param.endd,'结束时间')}" name="endd"  value="结束时间" onClick="WdatePicker()" /></li>
              <li class="liBtn"><input type="submit" class="btn1" value="搜索" /></li>
            </ul>
          </form>
      </div>
      <div class="Orders ordersShow">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
             <tr>
               <th width="75">订单号</th>
               <th width="120">课程名称</th>
               <th width="92">教练/机构</th>
               <th width="83">联系方式</th>
               <th width="57">价格</th>
               <th width="64">购买日期</th>
               <th width="66">购买类型</th>
               <!-- 
               <th width="71">完课确认</th>
                -->
               <th width="37">总结</th>
               <th class="th_01">操作</th>
             </tr>
       <c:forEach var="v" items="${map.page.result}">
         <tr>
               <td>${v.id}</td>
               <td><a target="_blank" class="easyui-tips" tooltip="${v.productName}" href="${ctx}/kailian/KlSellerProduct/index.do?id=${v.productid}">${my:maxleng(v.productName,8)}</a></td>
               <td><a class="easyui-tips" tooltip="${v.shopName}">${my:maxleng(v.shopName,6)}</a></td>
               <td>${v.ext3}</td>
               <td>${v.perPrice}</td>
               <td>${my:transDate(v.createtimelong)}</td>
               <td>购买</td>
               <!-- 
               <td><a href="javascript:;" class="orderLayer1A">确认</a></td>
                -->
               <td>
	               <c:choose>
	               	<c:when test="${v.status == 15 }">查看</c:when>
	               	<c:when test="${v.status != 15 }"><a href="javascript:;" class="orderLayer2A" onclick="getsummary(${v.id});">查看</a></c:when>
	               </c:choose>
               </td>
               <td>
					<c:if test = "${v.status != 15 }">
	               		<c:if test="${v.extInt4 eq null or v.extInt4 lt 0 and v.extInt4 ne -2 }">
	               		<a href="javascript:;" onclick="compalintbox(5,${v.shopid},${v.id},1);" class="orderLayer4A">退款</a>
	               		</c:if>
	               		<a href="javascript:;" class="orderLayer3A" onclick="commentbox(20,${v.productid}, ${v.id});">评分</a>
	               		<a href="javascript:;" onclick="compalintbox(5,${v.shopid},${v.id},2);" class="orderLayer4A">投诉</a>
					</c:if>
               		<a href="${ctx}/kailian/KlSellerProduct/index.do?id=${v.productid}" target="_blank">还要买</a>
               	</td>
             </tr>
         

         </c:forEach>
         <tr>
         	<td colspan=9 align="center">
         		${my:drawpage(map.page, pageContext.request,  '')}
         	</td>
         </tr>
       <!-- 
             <tr>
               <td>10202023</td>
               <td>器械健身的分时课程</td>
               <td>张三</td>
               <td>13812345678</td>
               <td>2000</td>
               <td>2014-2-22</td>
               <td>购买</td>
               <td><a href="javascript:;" class="orderLayer1A">确认</a></td>
               <td><a href="javascript:;" class="orderLayer2A">查看</a></td>
               <td><a href="javascript:;" class="orderLayer3A">评分</a><a href="javascript:;" class="orderLayer4A">投诉</a><a href="">还要买</a></td>
             </tr>
             -->
      </table>
      </div>
      </div>
      <!---->
      <div class="tabContent">
      <!-- 
      <div class="myCourse">
            <ul>
              <li><input type="text" class="input1" value="教练" /></li>
              <li> 
              <div class="selectDiv"><span></span>
              <select name="">
                    <option value="">课程类型</option>
                    <option value="">课程类型2</option>
                    <option value="">课程类型3</option>
              </select>
              </div>
              </li>
              <li><input type="text" class="input1 input2" value="开始时间" onClick="WdatePicker()" /></li>
              <li><span>至</span></li>
              <li><input type="text" class="input1 input2" value="结束时间" onClick="WdatePicker()" /></li>
              <li class="liBtn"><input type="button" class="btn1" value="搜索" /></li>
            </ul>
      </div>
       -->
      <div class="Orders ordersShow">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
             <tr>
               <th width="75">订单号</th>
               <th width="120">课程名称</th>
               <th width="92">教练/机构</th>
               <th width="83">联系方式</th>
               <th width="57">价格</th>
               <th width="64">购买日期</th>
               <th width="66">购买类型</th>
               <!-- 
               <th width="71">完课确认</th>
                -->
               <th width="37">总结</th>
               <th class="th_01">操作</th>
             </tr>
       <c:forEach var="v" items="${map.page1.result}">
         <tr>
               <td>${v.id}</td>
               <td><a target="_blank" class="easyui-tips" tooltip="${v.productName}" href="${ctx}/kailian/KlSellerProduct/index.do?id=${v.productid}">${my:maxleng(v.productName,8)}</a></td>
               <td><a class="easyui-tips" tooltip="${v.shopName}">${my:maxleng(v.shopName,8)}</a></td>
               <td>${v.ext3}</td>
               <td>${v.perPrice}</td>
               <td>${my:transDate(v.createtimelong)}</td>
               <td>购买</td>
               <!-- 
               <td><a href="javascript:;" class="orderLayer1A">确认</a></td>
                -->
                <td>
	               <c:choose>
	               	<c:when test="${v.status == 15 }">查看</c:when>
	               	<c:when test="${v.status != 15 }"><a href="javascript:;" class="orderLayer2A" onclick="getsummary(${v.id});">查看</a></c:when>
	               </c:choose>
               </td>
               <td>
					<c:if test = "${v.status != 15 }">
	               		<c:if test="${v.extInt4 eq null or v.extInt4 lt 0 and v.extInt4 ne -2 }">
	               		<a href="javascript:;" onclick="compalintbox(5,${v.shopid},${v.id},1);" class="orderLayer4A">退款</a>
	               		</c:if>
	               		<a href="javascript:;" class="orderLayer3A" onclick="commentbox(20,${v.productid}, ${v.id});">评分</a>
	               		<a href="javascript:;" onclick="compalintbox(5,${v.shopid},${v.id},2);" class="orderLayer4A">投诉</a>
					</c:if>
               		<a href="${ctx}/kailian/KlSellerProduct/index.do?id=${v.productid}" target="_blank">还要买</a>
               	</td>
             </tr>
         

         </c:forEach>
         
         <tr>
         	<td colspan=9 align="center">
         		${my:drawpage(map.page1, pageContext.request,  'o=o')}
         	</td>
         </tr>
           
      </table>
      
      
      </div>
      
      
      <!--pageBoxEnd-->
      </div>
   
     	
      
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="orderLayer orderLayer1">
<div class="bg">
     <h5>完课确认<a href="javascript:;" class="close"></a></h5>
     <div class="content">
     张三教练与2014-2-22日发来初级游泳的培训确认，<br />
您已经进行到"第三课时"了。
<br /><br />
如果没有异议请确认，若有异议请投诉！
     </div>
     <div class="btnDiv"><a href="">确 认</a></div>
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
         <div class="name"><b><a href="">店铺</a></b>&nbsp;&nbsp;&nbsp;<span id='sumtime'></span></div>
         <div id='sumcontent' class="content">
            暂时没有训练总结
         </div>
       </dd>
     </dl>
     <div id='sumimg' class="list">
     <!-- 
         <ul>
           <li><img src="${ctx}/image/nimg142_5.jpg"/></li>
           <li><img src="${ctx}/image/nimg142_6.jpg"/></li>
           <li><img src="${ctx}/image/nimg142_7.jpg"/></li>
         </ul>
         -->
     </div>
     <div class="btnDiv"><a href="${ctx}/kailian/KlShoppingTrainningsummary/mysummary.do">点击查看更多</a></div>
</div>
</div>
<script>
	function getsummary(pid) {
	
		$.ajax({
            type: 'POST',
            url: '${ctx}/kailian/KlShoppingTrainningsummary/mysummary.do?ajax=ajax&shoppingProductId=' + pid,
            dataType: 'json',
            data: {},
            success: function (data) {
				if (data['re'] > 0 && data['page'].result.length > 0) {
					//alert(data['word']);
					var t = data['page'].result[0];
					$('#sumcontent').html(t['summary']);
					var pt = t['addition'];
					//alert(pt	);
					var ndate = new Date(t['createtimelong']);
            		var t = ndate.getFullYear() + "-" + (ndate.getMonth() + 1) + "-" + (ndate.getDate() + 1);
            		$('#sumtime').html(t);
					if (pt != null && pt != '' && pt != 'undefined') 
						$('#sumimg').html("<ul><li><img style='width:100px;height:60px;' src='${ctx}/" + pt + "' /></li></ul>");
				}
				else {
					//alert(data['word']);
					
				}
            }
        });
	}
</script>
<!---->

<%@ include file="/page/comment.jsp" %>


<!---->
<div class="orderLayer orderLayer4">
<div class="bg">
     <h5>投诉/退款<a href="javascript:;" class="close"></a></h5>
     <div class="form">
         <em>输入原因：</em>
         <textarea name="content" id="content" cols="" rows=""></textarea>
     </div>
     <div class="btnDiv"><input type="button" class="btn1" value="提 交" onclick="subcomplaint();" /></div>
</div>
</div>

<div class="orderLayer ComplaintLayer">
<div class="bgT"></div>
<div class="bg">
      <h5>处理意见<a href="javascript:;" class="close"></a></h5>
      <div class="content">
       经确认，您反应的问题属实，我们已经对教练进行警告处理，再有此类事情发生，可全额退款！请放心！
      </div>
</div>
<div class="bgB"></div>
</div>

<div class="orderLayer ComplaintLayer2">
<div class="bgT"></div>
<div class="bg">
      <h5>处理意见<a href="javascript:;" class="close"></a></h5>
      <div class="list">
          <ul>
            <li>
               <em>投诉教练：</em>
               <input type="text" class="input1" />
               <a href="" class="btn"><img src="${ctx}/image/lico2.png" /></a>
            </li>
            <li class="li_01">
               <em>投诉事因：</em>
               <textarea name="" cols="" rows=""></textarea>
            </li>
            <li><input type="button" class="btn1" value="发布投诉" /></li>
          </ul>
      </div>
</div>
<div class="bgB"></div>
</div>

<%@ include file="/page/kailiantail.jsp" %>

</body>
<script>
$(document).ready(function(){
		setTimeout(show1,100);
		$("classType").find("option[value='${param.classType}']").attr("selected",true);
		
	});
	
	function show1() {
	<c:if test="${param.o eq 'o'}">
				$('li').removeClass('liNow');
				$('#li1').addClass('liNow');
				$('.tabContentDiv').find('.tabContent').hide();
				$('.tabContentDiv').find('.tabContent').eq(1).show();
		
		</c:if>	
	}
</script>
	
</html>