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
<title>小组${my:config('title后缀','--开练网')}</title>
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
    <div class="pageBox CreatePart1">
      <h1>推荐小组 ......</h1>
      <div class="list">
         <ul>
         	<c:forEach var="v" items="${map.suggests}">
           <li>
              <div class="imgDiv"><a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${v.id}"><img src="${ctx}/${my:showHead(request,'group',v.id)}"/></a></div>
              <div class="msg">${v.name}<br />${v.userCount}成员</div>
              <a href="#" class="btn" id="join${v.id}" onclick="joingroup(${v.id},'join${v.id}','');">+ 加入小组</a>
           </li>
           </c:forEach>
           
         </ul>
      </div>
      <div class="btnDiv">
      	<a href="${ctx}/kailian/CmsGroup/preNewGroup.do" class="btn">创建你的兴趣小组</a>
		</div>
      <div class="h25"></div>
   </div>
</div>
<div class="fr w737">
    <div class="fl groupTitle">小组管理:
    <!-- <a href="">删除</a> --></div>
    <div class="fr pageNow2"><span>当前位置：</span><a href="${ctx}/index.html">首页</a>><a href="${ctx}/kailian/CmsGroup/index.do"> 小组</a></div>
    <div class="clear_f"></div>
    <div class="GroupHome">
         <ul>
         <c:forEach var="v" items="${map.page.result}">
           <li>
               <div class="imgDiv"><a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${v.id}" target="_blank"><img src="${ctx}/${my:showHead(request,'group',v.id)}" style="width:107px;height:107px;" /></a></div>
               <h2 class="name"><a href="${ctx}/kailian/CmsGroup/getTopic.do?topicid=${v.topic.id}" target="_blank">${v.topic.title}</a></h2>
               <div class="content">
               	
               </div>
               <div class="msg"><em>来自</em>　${v.topic.ext1}　 |<a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${v.id}" target="_blank">${v.name}</a><span>喜欢 ${v.topic.flowerCount}</span></div>
               <div class="select">
               <!-- 
               	<input name="" type="checkbox" value="" /><a href="">删除</a>|<a href="">编辑</a>
               	 -->
               </div>
           </li>
           </c:forEach>
         
          
         </ul>
         <br/>
         ${my:drawpage(map.page, pageContext.request,  null)}
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