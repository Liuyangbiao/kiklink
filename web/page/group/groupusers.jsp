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
<title>${map.group.name}小组成员${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/group.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery.tips.js"></script>
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

<div class="h15"></div>
<div class="wal">
<!--wal-->
<div class="fl pageBox themePart1">
     <dl>
       <dt style="top:30px;"><a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${map.group.id}"><img src="${ctx}/${my:showHead(request,'group',map.group.id)}" style="width:73px;height:73px;"/></a></dt>
       <dd>
           <h2><a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${map.group.id}">${map.group.name}</a></h2>
           <div class="time">我是小组的成员</div>
       </dd>
     </dl>
     <!-- 
     <div class="name">小组成员搜索 ......   </div>
     <div class="form">
          <input name="" type="text" class="input1" />
          <input name="" type="button" class="btn1" />
     </div>
      -->
     <a href="${ctx}/kailian/CmsGroup/preNewGroup.do" class="btn">创建你的兴趣小组</a>
</div>
<div class="fr w737">
    <div class="pageNow"><span>当前位置：</span><a href="${ctx}/index.html">首页</a>><a href="${ctx}/kailian/CmsGroup/index.do"> 小组</a>
    <a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${map.group.id}">${map.group.name}</a>
    </div>
    <div class="pageBox gMember">
         <h1>创建者</h1>
         <div class="list">
               <ul>
               	<c:forEach var="v" items="${map.creators}">
                 <li style="height:auto;">
                     <div class="imgDiv"><a href="${ctx}/kailian/CmsGroup/userIndex.do?groupid=${param.id}&userid=${v.userid}"><img src="${ctx}/${my:showHead(request,'user',v.userid)}" style="width:60px;height:60px;"/></a></div>
                     <div class="name"><a href="${ctx}/kailian/CmsGroup/userIndex.do?groupid=${param.id}&userid=${v.userid}">${v.username}</a></div>
                 </li>
                 </c:forEach>
               </ul>
         </div>
         <h1>管理员<div class="msg"><!-- <a href="">踢出小组</a><a href="">降级普通会员</a> --></div></h1>
         <div class="list">
               <ul>
                 <c:forEach var="v" items="${map.admins}">
                 <li style="height:auto;">
                     <div class="imgDiv"><a href="${ctx}/kailian/CmsGroup/userIndex.do?groupid=${param.id}&userid=${v.userid}"><img src="${ctx}/${my:showHead(request,'user',v.userid)}" style="width:60px;height:60px;"/></a></div>
                     <div class="name"><a href="${ctx}/kailian/CmsGroup/userIndex.do?groupid=${param.id}&userid=${v.userid}">${v.username}</a>
                     <c:if test="${map.groupuser.userlevel eq 10}">
                     	<br/><a href="${ctx}/kailian/CmsGroup/changeGroupUserLevel.do?id=${param.id}&userid=${v.userid}&tolevel=1">解管</a>
                     </c:if>
                     </div>
                 </li>
                 </c:forEach>
               </ul>
         </div>
         <h1>成员<div class="msg"><!-- <a href="">踢出小组</a><a href="">降级普通会员</a> --></div></h1>
         <div class="list">
               <ul>
                  <c:forEach var="v" items="${map.users.result}">
                 <li style="height:auto;border:0px solid red;">
                     <div class="imgDiv"><a href="${ctx}/kailian/CmsGroup/userIndex.do?groupid=${param.id}&userid=${v.userid}"><img src="${ctx}/${my:showHead(request,'user',v.userid)}" style="width:60px;height:60px;"/></a></div>
                     <div class="name" style="width:auto;"><a href="${ctx}/kailian/CmsGroup/userIndex.do?groupid=${param.id}&userid=${v.userid}">${v.username}</a></div>
                 	<c:if test="${map.groupuser.userlevel ge 5}">
                     	<br/>
                     	<a href="${ctx}/kailian/CmsGroup/changeGroupUserLevel.do?id=${param.id}&userid=${v.userid}&tolevel=5" class="easyui-tips" tooltip="升级为管理员">升管</a>
                     	<c:choose>
                     		<c:when test="${v.status eq -1}">
                     			<a href="${ctx}/kailian/CmsGroup/changeGroupUserLevel.do?id=${param.id}&userid=${v.userid}&tolevel=1&jinyan=-1">解禁</a>
                     		</c:when>
                     		<c:otherwise>
                     			<a href="${ctx}/kailian/CmsGroup/changeGroupUserLevel.do?id=${param.id}&userid=${v.userid}&tolevel=1&jinyan=1">禁言</a>
                     		</c:otherwise>
                     	</c:choose>
                     	
                     
                     </c:if>
                 </li>
                 
                 </c:forEach>
                
               </ul>
               <span class="clear_f"></span>
         </div>
         <div class="pageNum">
          ${my:drawpage(map.users, pageContext.request,  null)}
         </div>
    </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>



<!--底部start-->
<%@ include file="/page/kailiantail.jsp" %>
<script>
$(function(){

	$.ajax({
            type: 'POST',
            url: '${ctx}/kailian/CmsGroup/getding.do',
            dataType: 'json',
            data: {ajax:'ajax',groupid:'${map.group.id}'},
            success: function (data) {
            
				if (data['re'] > 0){
					//alert('发送成功');
					
					
					if (data['in'] > 0	) {
						//$('.msg').hide();
					}
					else {
						$('.time').hide();
					}
				}
				else {
					$('.time').hide();
					//alert(data['word']);
				}
			
            }
        });
})
</script>
</body>
</html>