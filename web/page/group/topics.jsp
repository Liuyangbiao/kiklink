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
<title>话题列表${my:config('title后缀','--开练网')}</title>
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
<div class="fl pageBox themePart1">
     <dl>
       <dt><a href="${ctx}/kailian/CmsGroup/userIndex.do?userid=${map.user.id}"><img src="${ctx}/${my:showHead(request,'user',map.user.id)}" style="width:60px;height:60px;" /></a></dt>
       <dd>
           <h2><a href="${ctx}/kailian/CmsGroup/userIndex.do?userid=${map.user.id}">${map.user.username}</a></h2>
           <div class="msg">
       <c:if test="${map.user.createTopicCount ne null}">发起(${map.user.createTopicCount})</c:if> <br />
       <c:if test="${map.user.replyCount ne null}">回应(${map.user.replyCount})</c:if></div>
       </dd>
     </dl>
     <a href="${ctx}/kailian/CmsGroup/preNewGroup.do" class="btn">创建你的兴趣小组</a>
</div>
<div class="fr w737">
<div class="pageNow"><span>当前位置：</span><a href="${ctx}/index.html">首页</a>><a href="${ctx}/kailian/CmsGroup/index.do"> 小组</a>
    </div>
        <div class="pageBox themePart2">
       <h1>喜欢的话题</h1>
       <div class="table">
           <table width="100%" border="0" cellpadding="0" cellspacing="0">
           	<c:forEach var="v" items="${map.page.result}">
              <tr>
                <td><div class="name"><a href="${ctx}/kailian/CmsGroup/getTopic.do?topicid=${v.id}">${v.title}</a></div></td>
                <td>${v.replyCount}回应</td>
               <td>${my:timedis(v.createtimelong)}</td>
                <td>${v.ext1}</td>
              </tr>
             </c:forEach>
            <!-- 
              <tr>
                <td><div class="name"><a href="">[顶置话题]还记得你打dota使用的第一个英雄吗？</a></div></td>
                <td>114回应</td>
                <td>47分钟前</td>
                <td>DOTA的无数滴血</td>
              </tr>
               -->
           </table>
       </div>
       <div class="pageNum">
       ${my:drawpage(map.page, pageContext.request,  null)}
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

</body>
</html>