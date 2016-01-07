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
<title>修改资料${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/member2.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="${ctx}/kindeditornew/themes/default/default.css" />
<script src="${ctx}/kindeditornew/kindeditor.js"></script>
<script src="${ctx}/kindeditornew/lang/zh_CN.js"></script>


<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery_scroll.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/date/My97DatePicker/WdatePicker.js"></script>
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


<div class="w993 pageNow"><em>当前位置：</em><a href="">首页</a><span>基本信息</span></div>
<div class="w993">
<!--wal-->
<%@ include file="/page/centerleft.jsp" %>




<div class="fr w791">
      <div class="memberTitle">
          <h1>基本信息${param.realName}</h1>
      </div>
      <div class="pageBox pageForm">

      	<form action="${ctx}/kailian/CmsUserInfo/updateProfile.do" method="post">

      		<input id="id" name="id" value="${map.user.id}" type="hidden" />
   
          <ul>
             <li><em>手机号码</em>
                 <div class="input1"><input id="mobile" name="mobile" value="${map.user.mobile}" type="text" class="" /></div>
                 <div class="tips"><a href="#" id="bbbt" onclick="sendmobvalid('${ctx}',$('#mobile').val(),'bbbt');">发送验证码</a></div>
             	${my:errordiv(map, 'mobile')}
             </li>
             <li><em>手机验证码</em>
                 <div class="input1"><input id="mobilevalidnum" name="mobilevalidnum" value="${param.mobilevalidnum}" type="text" class="" placeHolder="如果不修改手机号可以不填" /></div>
                 
             </li>
             <li><em>电子邮箱</em>
                 <div class="input1"><input id="email" name="email" value="${map.user.email}" type="text" /></div>
                  <div class="tips"><a href="#" id="bbbt2" onclick="sendemailvalid('${ctx}',$('#email').val(),'bbbt2');">发送验证码</a></div>
             ${my:errordiv(map, 'email')}</li>
             <li><em>邮箱验证码</em>
                 <div class="input1"><input id="emailvalidnum" name="emailvalidnum" value="${param.emailvalidnum}" type="text" class="" placeHolder="如果不修改邮箱可以不填" /></div>
                 
             </li>
             <li><em>真实姓名</em>
                 <div class="input1"><input type="text" class="input_hover" id="realName" name="realName" value="${map.user.realName}" title="请输入您的真实姓名" /></div>
             ${my:errordiv(map, 'realName')}</li>
             <li><em>昵称</em>
                 <div class="input1"><input type="text" id="username" name="username" value="${map.user.username}" /></div>
             ${my:errordiv(map, 'username')}</li>
             <li><em>性别</em>
                 <input class="radio" type="radio" name="sex" value="1" <c:if test="${map.user.sex eq 1 or param.sex eq 1}"> checked=checked</c:if> />男　
                 <input class="radio" type="radio" name="sex" value="2" <c:if test="${map.user.sex eq 2 or param.sex eq 2}"> checked=checked</c:if> />女
             </li>
             <li><em>地域</em>

                 <div id="provinceiddiv" style="float:left;">
                        <c:choose>
                        	<c:when test="${map.user.provinceid ne null}">
                        		<c:set value="${map.user.provinceid}" var="provinceid" />
                        	</c:when>
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
             <li><em>出生日期</em>
                 <select id="birthYear" name="birthYear" style="width:100px;">
                                  <c:forEach var="v1" begin="1900" end="2010">
                            		<option value="${v1}" >${v1}</option>
                         		</c:forEach>
                            </select>年&nbsp;&nbsp;
                            <select id="birthMonth" name="birthMonth" style="width:100px;" onchange="dodate('birthYear','birthMonth','birthDate');">
                                  <c:forEach var="v1" begin="1" end="12">
                            		<option value="${v1}">${v1}</option>
                         		</c:forEach>
                            </select>月&nbsp;&nbsp;
                            <select id="birthDate" name="birthDate" style="width:100px;">
                                  <c:forEach var="v1" begin="1" end="31">
                            		<option value="${v1}" >${v1}</option>
                         		</c:forEach>
                            </select>日
                           
             </li>
             <li><em>座机电话</em>
                 <div class="input1"><input id="phone" name="phone" value="${map.user.phone}" type="text" /></div>
                 <div class="red"></div>
             ${my:errordiv(map, 'phone')}</li>

             <li><em>通讯地址</em>
                 <div class="input1"><input id="address" name="address" value="${map.user.address}" type="text" /></div>
                 <div class="red"></div>
             ${my:errordiv(map, 'address')}</li>
             <li><em>邮政编码</em>
                 <div class="input1"><input id="postCode" name="postCode" value="${map.user.postCode}" type="text" /></div>
                 <div class="red"></div>
            ${my:errordiv(map, 'postCode')} </li>
             <li><em>头像</em>
                 <div class="input1" style="width:245px;"><input id="photo" name="photo" onclick="" value="${map.user.photo}" type="text" /></div>
                 <input type="button" id="photo_button" class="btn2 fl" onclick="" value="上传照片..." />
                 <div class="fl tips">　仅支持jpg，最佳尺寸100*100像素</div>
             </li>
             <li>
             <div class="contentDiv">
                     <h5>开练网协议</h5>
                     站内所有素材图片均由网友上传而来，昵图网不拥有此类素材图片的版权。昵图网内标明版权为"共享"、"昵友原创"、"原创作品出售"的图片素材均由网友上传用于学习交流之用，勿作它用；若需商业使用，需获得版权拥有者授权，并遵循国家相关法律、法规之规定。如因非法使用引起纠纷，一切后果由使用者承担。
      作为网络服务提供者，对非法转载，盗版行为的发生不具备充分的监控能力。但是当版权拥有者提出侵权指控并出示充分的版权证明材料时，昵图网负有移除盗版和非法转载作品以及停止继续传播的义务。昵图网对他人在网站上实施的此类侵权行为不承担法律责任，侵权的法律责任概由会员本人承担。向昵图网发布作品的作者视为同意昵图网就前款情况采取的相应措施。昵图网在满足前款条件下采取移除等相应措施后不为此向原发布人承担违约责任或其他法律责任，包括不承担因侵权指控不成立而给原发布人带来损害的赔偿责任。
             </div>
             
             </li>
             <li><input type="submit" class="btn1"  value="保存设置"/>
             <font color="red">${map.word}</font>
             </li>
          </ul>
         </form>
      </div>
</div>
<span class="clear_f"></span>

<!--walEnd-->
</div>
<div class="h20"></div>

<%@ include file="/page/kailiantail.jsp" %>
<script>
var host2 = "${ctx}";
var sel_proid = "${provinceid}";
var sel_cityid="${map.user.cityid}";
var sel_quid="${map.user.quid}";
$(document).ready(function(){

		//getcities(${provinceid});
		//$("#provinceid").find("option[value='${map.user.provinceid}']").attr("selected",true);
		getcities(sel_proid);
		
		$("#birthYear").find("option[value='${map.user.birthYear}']").attr("selected",true);
		$("#birthMonth").find("option[value='${map.user.birthMonth}']").attr("selected",true);
		$("#birthDate").find("option[value='${map.user.birthDate}']").attr("selected",true);
		
		var classname = "CmsUserInfo";
		var paras = "mobile,email,realName,username,phone,address,postCode";
		var pps = paras.split(",");
	
		for (var i = 0; i < pps.length; i ++ ) {

			$('#' + pps[i]).blur(function() {
				checkparam(classname, $(this).attr('id'));
			});
		}
		
		//getcities(sel_proid);
		
	
		
	});
	
	var editor;
	function imagedialog(id) {
		editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,

							imageUrl : K('#' + id).val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#' + id).val(url);
								editor.hideDialog();
							}
						});
				});
		
	}
	
	KindEditor.ready(function(K) {
				var editor = K.editor({
					allowFileManager : true
				});
				
				
				K('#photo_button').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,
							imageUrl : K('#photo').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#photo').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				
				
			});

	
	
</script>	
</body>
</html>