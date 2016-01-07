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
<title>${map.user.username}${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/group.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
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
<div class="fl w239">
  <div class="pageBox GroupPart1">
  	<c:choose>
  		<c:when test="${map.groupuser ne null}">
  			<div class="imgDiv"><a href=""><img src="${ctx}/${my:showHead(request,'user',map.groupuser.id)}" style="width:60px;height:60px;"/></a></div>
       <h2 style="padding-top:25px;"><a href="">${map.groupuser.username}</a></h2>
       <div class="msg">
       	${my:transDate(map.groupuser.createtimelong)}加入
       </div>
  		</c:when>
  		<c:otherwise>
  		<div class="imgDiv"><a href=""><img src="${ctx}/${my:showHead(request,'user',map.user.id)}" style="width:60px;height:60px;"/></a></div>
       <h2 style="padding-top:25px;"><a href="">我的小组主页</a></h2>
       <div class="msg">
       <c:if test="${map.user.createTopicCount ne null}">发起(${map.user.createTopicCount})</c:if> <br />
       <c:if test="${map.user.replyCount ne null}">回应(${map.user.replyCount})</c:if></div>
       
  		</c:otherwise>
  	</c:choose>
       
    </div>
    <div class="h15"></div>
    <div class="pageBox CreatePart1">
    	<c:if test="${map.groupuser ne null}">
      <h1>我常去的小组 ......   </h1>
      <div class="list">
         <ul>
         	<c:forEach var="v" items="${map.groups}" varStatus="vs">
         	<li>
              <div class="imgDiv"><a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${v.id}">
              	<img src="${ctx}/${my:showHead(request,'group',v.id)}" style="width:60px;height:60px;"/></a></div>
              <div class="msg">${v.name}<br />${v.userCount}成员</div>
              <a href="#" class="btn" id="join${v.id}" onclick="joingroup(${v.id},'join${v.id}','');">+ 加入小组</a>
           </li>
         	
         	</c:forEach>
         
         </ul>
      </div>
      </c:if>
      <div class="btnDiv"><a href="${ctx}/kailian/CmsGroup/preNewGroup.do">创建你的兴趣小组</a></div>
      <div class="h25"></div>
   </div>
</div>
<div class="fr w737">
<div class="pageNow"><span>当前位置：</span><a href="${ctx}/index.html">首页</a><a href="${ctx}/kailian/CmsGroup/index.do"> 小组</a>
    </div>
        <div class="pageBox perHome1">
         <h1>我加入的小组</h1>
         <div class="list">
            <ul>
            <c:forEach var="v" items="${map.groups}">
              <li>
                  <div class="imgDiv"><a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${v.id}">
                  	<img src="${ctx}/${my:showHead(request,'group',v.id)}"/></a></div>
                  <div class="msg">${v.name}<br />
                  ${v.userCount}成员
                  </div>
                  <!-- 
                  <c:if test="${v.createuser eq sessionuser.id}">
                  	 <a href="" class="btn">删除</a>
                  </c:if>
                  -->
               </li>
             </c:forEach>
             <!-- 
               <li>
                  <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg60.png"/></a></div>
                  <div class="msg">我爱奢侈品、但是买不起<br />334成员</div>
                  <a href="" class="btn">删除</a>
               </li>
                -->
            </ul>
            <span class="clear_f"></span>
         </div>
    </div>
    <div class="h15"></div>
    <!---->
    <div class="pageBox themePart2 perHome">
       <h1 class="title"><a href="${ctx}/kailian/CmsGroup/userTopic.do?userid=${map.user.id}">我发起的话题</a></h1>
       
       <div class="table">
           <table width="100%" border="0" cellpadding="0" cellspacing="0">
              
              <c:forEach var="v" items="${map.posts}">
              <tr>
                <td><div class="name"><a href="${ctx}/kailian/CmsGroup/getTopic.do?topicid=${v.id}">${v.title}</a></div></td>
                <td>${v.replyCount}回应</td>
               <td>${my:timedis(v.createtimelong)}</td>
                <td>${v.ext1}</td>
              </tr>
              </c:forEach>

              
           </table>
       </div>
    </div>  
    <div class="h15"></div>
    <!---->
    <div class="pageBox themePart2 perHome">
       <h1 class="title"><a href="${ctx}/kailian/CmsGroup/userTopic.do?type1=reply&userid=${map.user.id}">我回应的话题</a></h1>
       <div class="table">
           <table width="100%" border="0" cellpadding="0" cellspacing="0">
             
              <c:forEach var="v" items="${map.replys}">
              <tr>
                <td><div class="name"><a href="${ctx}/kailian/CmsGroup/getTopic.do?topicid=${v.id}">${v.title}</a></div></td>
                <td>${v.replyCount}回应</td>
               <td>${my:timedis(v.createtimelong)}</td>
                <td>${v.ext1}</td>
              </tr>
              </c:forEach>

             
           </table>
       </div>
    </div>  
    <div class="h15"></div> 
    <!---->
    <div class="pageBox themePart2 perHome">
       <h1 class="title"><a href="${ctx}/kailian/CmsGroup/getTopic.do?type1=like&topicid=${v.id}">我喜欢的话题</a></h1>
       <div class="table">
           <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <c:forEach var="v" items="${map.likes}">
              <tr>
                <td><div class="name"><a href="${ctx}/kailian/CmsGroup/getTopic.do?topicid=${v.id}">${v.title}</a></div></td>
                <td>${v.replyCount}回应</td>
                <td>${my:timedis(v.createtimelong)}</td>
                <td>${v.ext1}</td>
              </tr>
              </c:forEach>

              
           </table>
       </div>
    </div>  
    <div class="h15"></div> 
    <!---->
    <div class="pageBox themePart2 perHome">
       <h1 class="title"><a href="${ctx}/kailian/CmsGroup/getTopic.do?topicid=${v.id}&type1=suggest">我推荐的话题</a></h1>
       <div class="table">
           <table width="100%" border="0" cellpadding="0" cellspacing="0">
              
              <c:forEach var="v" items="${map.suggests}">
              <tr>
                <td><div class="name"><a href="${ctx}/kailian/CmsGroup/getTopic.do?topicid=${v.id}">${v.title}</a></div></td>
                <td>${v.replyCount}回应</td>
                <td>${my:timedis(v.createtimelong)}</td>
                <td>${v.ext1}</td>
              </tr>
              </c:forEach>
            
           </table>
       </div>
    </div> 
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="CreateLayer">
      <a href="javascript:close_prompt_fun('.CreateLayer');" class="close"></a>
      <div class="ico"><img src="${ctx}/image/nimg55_2.gif"/></div>
      <div class="content">
         创建小组成功！　等待审核！<br /><a href="">点击返回</a>　小组首页
      </div>
</div>

<!--底部start-->
<%@ include file="/page/kailiantail.jsp" %>
<%@ include file="/page/group/groupjs.jsp" %>
<script>
$(function(){


	$.ajax({
            type: 'POST',
            url: '${ctx}/kailian/CmsGroup/getding.do',
            dataType: 'json',
            data: {ajax:'ajax',joined:'joined'},
            success: function (data) {
            
				if (data['re'] > 0){
					//alert('发送成功');
					for (var i = 0; i < data['joined'].length; i ++) {
						//alert('#join' + data['joined']['groupid']);
						$('#join' + data['joined'][i]['groupid']).hide();
					}
					
				}
				else {
					//alert(data['word']);
				}
			
            }
        });
        
   });
</script>
</body>
</html>