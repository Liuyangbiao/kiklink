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
<title>发布课程${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${ctx}/kindeditornew/themes/default/default.css" />
<script src="${ctx}/kindeditornew/kindeditor.js"></script>
<script src="${ctx}/kindeditornew/lang/zh_CN.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/date/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${ctx }/scripts/jquery-easyui/jquery.easyui.min.js"></script>

<!-- Add jQuery library -->

	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="${ctx}/fancy/lib/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="${ctx}/fancy/source/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/jquery.fancybox.css?v=2.1.5" media="screen" />

	<!-- Add Button helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
	<script type="text/javascript" src="../source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" />
	<script type="text/javascript" src="../source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

	<!-- Add Media helper (this is optional) -->
	<script type="text/javascript" src="${ctx}/fancy/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>

	<script type="text/javascript">
	
		function dood() {
			alert(22);	
		}
		var date = new Date(new Date().valueOf() + 1*24*60*60*1000);
		var tmp = date.getFullYear() + "-" + (date.getMonth()+1) + "-" + (date.getDate());
	
	
		$(document).ready(function() {
			$("#fancybox-manual-b").click(function() {
				$.fancybox.open({
					href : '${ctx}/page/map.jsp',
					type : 'iframe',
					padding : 5
				});
			});
			
			$("#photo_button1").click(function() {
				$.fancybox.open({
					href : '${ctx}/kailian/KlSellerProduct/focus.do?iframe=iframe&pid=${map.class.id}',
					type : 'iframe',
					padding : 5
				});
			});
			
			//piliangtime
			$("#piliangtime").click(function() {
				$.fancybox.open({
					href : '${ctx}/kailian/KlShoppingPiliangtime/piliangs.do?preproductid=${map.class.id}',
					type : 'iframe',
					padding : 5
				});
			});
		});
		
		function useaddress(address, x, y	) {
			//$('#ext1').val(address);
			$('#ext2').val(x + "," + y);
		}
		
	</script>
<!--[if lte IE 6]>
<script src="script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
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
      <div class="memberTitle"><h1>课程发布</h1></div>
      <div class="pageBox">
      <!--pageBox-->
      <div class="coursePublish"><div class="step"><img src="${ctx}/image/nimg682_2.png"/></div></div>
      <div class="coursePublish2">
             <div class="form">
                 <form id="form1" action="${ctx}/kailian/KlSellerProduct/class2.do" method="post">
             		
             		<input id="shopId" name="shopId" type="hidden" value="${map.shop.id}" />
             		<input id="id" name="id" type="hidden" value="${map.class.id}" />
             		<input id="status" name="status" type="hidden" value="-5" />
             		<input id="preview" name="preview" type="hidden" value="-1" />
                  <ul>
                    <li><em>分类</em>
                    <div style="float:left;margin-right:10px;">
                                                             	<select id="categoryid" name="categoryid"><option value="10"  >球类</option><option value="20" selected >健身瑜伽</option><option value="30"  >运动恢复</option><option value="40"  >水上冰上</option><option value="50"  >极限户外</option><option value="60"  >舞蹈</option><option value="70"  >射击搏击格斗</option></select>

                    <!--
                        <select name="categoryid" id="categoryid">
                              <option value="1">运动</option>
                              <option value="2">运动2</option>
                              <option value="3">运动3</option>
                        </select>
                        -->
                        </div>
                        <div class="ico"><a href="" onmouseover="$('#tipcontent').html('为产品选个分类吧，一定要正确选择分类哟，否则用户在分类搜索的时候很难搜索到你的产品哦！');"><img class="coursePublishA" src="${ctx}/image/nimg21_3.png"/></a></div>
                    </li>
                     <li><em>权重</em>
                         <div class="input1 input3">
                         	<input type="text" placeholder="课程权重，数字越大越靠前" value="${param.extInt3}" name="extInt3" id="extInt3" class="easyui-numberbox" max=200 />
                    		</div><span class="tips">数字越大越靠前,最大200,默认20</span>
                    	
                    </li>
                    <!-- 
                    <li><em>课程类型</em>
                        <select name="extInt1" id="extInt1">
                              <option value="1">单次卡</option>
                              <option value="2">多次卡</option>
                        </select>
                       
                    </li>
                     -->
                    <li><em>销售截止日期</em>
                        <div class="input1"><input id="validDays" name="validDays1" vlaue="${param.validDays}" onclick="WdatePicker({minDate:tmp,dateFmt:'yyyy-MM-dd'});" type="text"/></div>
                        <div class="tips">天</div>
                        <div class="ico"><a href="" onmouseover="$('#tipcontent').html('您的产品有季节性或阶段性吗，如果有就请填写吧。不填写的情况下，默认没有截止日期');"><img class="coursePublishA" src="${ctx}/image/nimg21_3.png"/></a></div>
                    </li>
                    <li><em>预约</em>
						<div style="float:left;margin-right:10px;">
						<select name="extInt5" id="extInt5">
                <option value="1">
                  提前24小时预约
                </option>
                <option value="3">
                  提前3天预约
                </option>
                <option value="7">
                  提前7天预约
                </option>
              </select>
              &nbsp;
                        <select name="returnClassCount" id="returnClassCount">
                              <option value="1">提前24小时取消预约</option>
                              <option value="3">提前3天取消预约</option>
                              <option value="7">提前7天取消预约</option>
                        </select>
                         &nbsp;
                         <a id="piliangtime" style="cursor:pointer;">设置课程预约时间</a>
                         <!-- 
                        <input id="noneedyuyue" name="noneedyuyue" type="checkbox" value="1" />
                        
                        此课程不用预约-->
                        <input type="hidden" id="noneedyuyue" name="noneedyuyue" value="${map.class.returnClassCount}" />
              <input 
                  id="noneedyuyuex"
                  name="noneedyuyuex"
                  type="radio"
                  <c:if
                  test="${map.class.returnClassCount gt 0}">checked=checked</c:if>
                  value="1" onclick="noyuyue(1);"
              />需要预约
				 
			<input 
                  id="noneedyuyuex"
                  name="noneedyuyuex"
                  type="radio"
                  <c:if
                  test="${map.class.returnClassCount lt 0}">checked=checked</c:if>
                  value="-1" onclick="noyuyue(-1);"
              />不用预约
              
              <input 
                  id="noneedyuyuex"
                  name="noneedyuyuex"
                  type="radio"
                  checked=checked
                  value="-2" onclick="noyuyue(-2);"
              />电话预约 
                        </div>
                        <div class="ico" style=""><a href="" onmouseover="$('#tipcontent').html('用户可以在课前多长时间内取消预约呢？来设个时间吧~温馨提示，您设置时间越短用户的体验越好哦！');"><img class="coursePublishA" src="${ctx}/image/nimg21_3.png"/></a></div>
                    </li>
                    <li><em>教学方式</em>
                    <div style="float:left;margin-right:10px;">
                        <select name="teachType" id="teachType">
                              <option value="1">一对一</option>
                              <option value="2">多对一</option>
                              <option value="3" selected="selected">一对多</option>
                        </select>
                       </div>
                        <div class="ico"><a href="" onmouseover="$('#tipcontent').html('您的课程茶品是一对一、一对多、还是多对一的呢？请您完善。');"><img class="coursePublishA" src="${ctx}/image/nimg21_3.png"/></a></div>
                    </li>
                    
                    <li style="hehgit:auto"><em>图片</em>
                        <input id="photo_button1" type="button" class="btn1" value="上传焦点图" style="cursor:pointer;" />
                        <div class="ico"><a href="" onmouseover="$('#tipcontent').html('图片越多，信息越详尽，用户选择的可能性越大哦。');"><img class="coursePublishA" src="${ctx}/image/nimg21_3.png"/></a></div>
                        <span class="tips"></span>
               
                    </li>
                    
                    <li><em>地域</em>
                        <div id="provinceid" style="float:left;">
                        <c:choose>
                        	<c:when test="${param.provinceid ne null and param.provinceid ne ''}">
                        		<c:set value="${param.provinceid}" var="provinceid" />
                        	</c:when>
                        	<c:otherwise>
                        		<c:set value="174" var="provinceid" />
                        	</c:otherwise>
                        </c:choose>	
                       
                 		<select id="provinceid" name="provinceid" onchange="getcities($(this).val());">
                            <c:forEach var="p" items="${map.provinces}">
                            	<option class="option_pro" value="${p.id}" <c:if test="${provinceid eq p.id}"> selected="selected"</c:if>>${p.name}</option>
                            </c:forEach>
                      </select>
                   </div>
                 <div id="citydiv" style="float:left;"><select id="cityid" name="cityid" onchange="getqus($(this).val());"><option value="${param.cityid}">${map.user.city}</option></select></div>
                 <div id="qudiv" style="float:left;"><select id="quid" name="quid"><option value="${map.user.quid}">${map.user.qu}</option></select></div>
                        <!--
                        <select name="quanid" id="quanid">
                              <option value="">商圈</option>
                        </select>
                        -->
                    </li>
                    <li><em>详细地址</em>
                    	<c:choose>
                    		<c:when test="${map.shop.mapx ne null and map.shop.mapy ne null}">
                    			<input type="hidden" id="ext2" name="ext2" value="${map.shop.mapx},${map.shop.mapy}" />
                    		</c:when>
                    		<c:otherwise>
                    			<input type="hidden" id="ext2" name="ext2" value="-1,-1" />
                    		</c:otherwise>
                    	</c:choose>
                        <div class="input1 input2"><input id="ext1" name="ext1" type="input"value="${map.shop.address}" /></div>
                        <a id="fancybox-manual-b" class="map">选择地图</a>&nbsp;&nbsp;
                       <div class="ico"><a href="" onmouseover="$('#tipcontent').html('如果附近有明显地标，加上更好哦');"><img class="coursePublishA" src="${ctx}/image/nimg21_3.png"/></a></div>
                        
                    </li>
                    <li><em>是否提供上门服务</em>
                        <select name="gotoHome" id="gotoHome">
                              <option value="0">否</option>
                              <option value="1">是</option>
                              
                        </select>
                        
                    </li>
                    <li><em>场地费用</em><div style="float:left;margin-right:10px;">
                        <select name="placePriceInclued" id="placePriceInclued">
                              <option value="1">课时费含场地费</option>
                              <option value="0">课时费不含场地费</option>
                        </select></div>
                      <div class="ico"><a href="" onmouseover="$('#tipcontent').html('如果费用中含场地，请忽略此项');"><img class="coursePublishA" src="${ctx}/image/nimg21_3.png"/></a></div>
                        
                    </li>
                    <li><em>场地说明</em>
                        <div class="input1 input2"><input id="placeAddition" name="placeAddition" value="${param.placeAddition}" type="input"/></div>
                       <div class="ico"><a href="" onmouseover="$('#tipcontent').html('比如说穿高跟鞋不能进，衣装不整不能进，没有规矩不成方圆嘛');"><img class="coursePublishA" src="${ctx}/image/nimg21_3.png"/></a></div>
                    
                    </li>
                    <li><em>课程服务</em>
                        <span class="coursePublish2LayerA"><input id="allConsulting" name="allConsulting" value="1" class="checkbox" type="checkbox"/>全程咨询</span>　
                        <span class="coursePublish2LayerA"><input id="freeConsulting" name="freeConsulting" value="1" class="checkbox" type="checkbox"/>免费咨询</span>
                    </li>
                    <script>
         		var editors = new Array();

         		var lth = editors.length;
         		editors[lth] = new Array();
         		editors[lth][0]='description';
         		KindEditor.ready(function(K) {
         			editors[lth][1] = K.create('textarea[name="description"]', 
         			{allowFileManager : true,uploadJson : '${ctx}/kindeditornew/jsp/upload_json2.jsp',fileManagerJson : '${ctx}/kindeditornew/jsp/file_manager_json.jsp'
         			});});
         	
         		function doeditors() {
	for (var i = 0; i < editors.length; i ++) {
		var name = editors[i][0];
		var edt = editors[i][1];

		$('#' + name).text(edt.html());
		//alert($('#' + name).text());
	}
	return true;
}
         	
         	</script>
                     <li class="li_01" style="height:auto;padding-left:60px;">
  <em>
    详细说明
  </em>
  <br/>
  <div style="border:0px solid red;height:500px;padding-left:0px;margin-left:0px;float:left;">
                         <textarea name="description" id="description" style="height:500px;" cols="" rows="">${param.description}</textarea>
                   </div>
                    </li>
                    <!-- 
                    <li class="li_01"><em>详细信息</em>
                         <textarea name="addition" id="addition" cols="" rows="">${param.addition}</textarea>
                    </li>
                     -->
                    <li><em>课程教练</em>
                    	<c:forEach var="c" items="${map.coaches}">
                        	<input name="coaches" value="${c.id}" class="checkbox" type="checkbox"/>${c.name}　
                        </c:forEach>
                        <!--
                        <input class="checkbox" type="checkbox"/>张三　
                        <input class="checkbox" type="checkbox"/>李四　
                        <input class="checkbox" type="checkbox"/>王二　
                        -->
                        <!-- 
                        <a href="${ctx}/kailian/KlSellerShop/coaches.do" target="_blank" class="red">添加教练</a>
                   		 -->
                    </li>
                    <li><em>课程标签</em>
                        <div class="input1 input3"><input id="tags" name="tags" value="${param.tags}" type="input"/></div>
                        <span class="tips">多个标签","分开</span>
                        <a href="javascript:;" class="red coursePublish2A">常用标签</a>
                      <div class="ico"><a href="" onmouseover="$('#tipcontent').html('标签用“,”隔开文字，标签越多，被用户搜索出来的几率会更高。');"><img class="coursePublishA" src="${ctx}/image/nimg21_3.png"/></a></div>
                        
                    </li>
                    <li><!-- 
                        <input type="button" onclick="doeditors();$('#form1').submit();" class="btn2" value="保存"/>
                        <input type="button" onclick="doeditors();$('#preview').val(1);$('#form1').attr('target','_blank');$('#form1').submit();" class="btn2" value="预览"/>
                         -->
                        <input type="button" onclick="doeditors();$('#status').val(0);$('#form1').submit();" class="btn2" value="提交并审核"/>
                    </li>
                  </ul>
                 </form>
             </div>
      </div>
      <!--pageBoxEnd-->
      </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="pageLayer_1 coursePublishLayer">
<div class="bgT"></div>
<div class="bg">
      <div id="tipcontent" class="content">
      对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明对课程服务的每项内的说明
      </div>
</div>
<div class="bgB"></div>
</div>
<!--
<div class="pageLayer_1 coursePublish2Layer">
<div class="bgT"></div>
<div class="bg">
      <div class="content" style="font-size:14px; text-align:center;">
<a href="javascript:;">游泳</a>　
<a href="javascript:;">健身</a>　
<a href="javascript:;">游泳</a>　
<a href="javascript:;">健身</a>　
<a href="javascript:;">健身</a>　
<a href="javascript:;">游泳</a>　
<a href="javascript:;">健身</a>
      </div>
</div>
<div class="bgB"></div>
</div>
-->
<%@ include file="/page/kailiantail.jsp" %>
<script>
var host2 = "${ctx}";
var sel_proid = "${param.provinceid}";
var sel_cityid="${param.cityid}";
var sel_quid="${param.quid}";

$(document).ready(function(){
	getcities(${provinceid});
});


function noyuyue(vl) {
    	$('#noneedyuyue').val(vl);
    	if (vl == -1 || vl == -2) {
      $('#returnClassCount').hide();
      $('#piliangtime').hide();
      $('#extInt5').hide();
      
    }
    else {
 
      $('#returnClassCount').show();
      $('#piliangtime').show();

      $('#extInt5').show();
      //$('#noneedyuyue').val(1);
    }
    }

</script>
</body>
</html>