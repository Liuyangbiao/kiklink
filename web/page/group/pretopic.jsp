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
<title>发布话题${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/group.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<link rel="stylesheet" href="${ctx}/kindeditornew/themes/default/default.css" />
<script charset="utf-8" src="${ctx}/kindeditornew/kindeditor-min.js"></script>
<script charset="utf-8" src="${ctx}/kindeditornew/lang/zh_CN.js"></script>
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
       <dt><a href=""><img style="width:60px;height:60px;" src="${ctx}/${my:showHead(request,'user',v.userid)}"/></a></dt>
       <dd>
           <h2><a href="">${map.groupuser.username}</a></h2>
           <div class="time">${my:transDate(map.groupuser.createtimelong)}加入</div>
       </dd>
     </dl>
     <!-- 
     <div class="name">小组成员搜索 ......   </div>
     <div class="form">
          <input name="" type="text" class="input1" />
          <input name="" type="button" class="btn1" />
     </div>
      -->
     <a class="btn" href="${ctx}/kailian/CmsGroup/preNewGroup.do">创建你的兴趣小组</a>
</div>
<div class="fr w737">
<div class="pageNow"><span>当前位置：</span><a href="${ctx}/index.html">首页</a>><a href="${ctx}/kailian/CmsGroup/index.do"> 小组</a>
    <a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${map.group.id}">${map.group.name}</a>
    </div>    
    <div class="pageBox CreatePart2 speechForm">
    <form action="${ctx}/kailian/CmsGroup/pubTopic.do" method="post">
    	<input type="hidden" id="topicid" name="topicid" value="${map.topic.id}" />
    	<input type="hidden" id="groupid" name="groupid" value="${param.id}" />
       <h1>小组：${map.group.name}</h1>
       <ul>
         <li><em>标题</em>
             <div class="input1"><input id="title" name="title" type="text" value="${map.topic.title}" /></div>
             
         </li>
         <!-- 
         <li>
            <a href="" class="btn2">图片上传</a><a href="" class="btn2">添加视频</a>
         </li>
          -->
         <li class="" style="height:auto;border:0px solid red;margin:0px;padding-left:30px;">
         <script>
         		var editors = new Array();

         		var lth = editors.length;
         		editors[lth] = new Array();
         		editors[lth][0]='content';
         		KindEditor.ready(function(K) {
         			editors[lth][1] = K.create('textarea[name="content"]', 
         			{allowFileManager : true,uploadJson : '${ctx}/kindeditornew/jsp/upload_json2.jsp',fileManagerJson : '${ctx}/kindeditornew/jsp/file_manager_json.jsp'
         			
         			
         			});});
         	
         		function doeditors() {
	for (var i = 0; i < editors.length; i ++) {
		var name = editors[i][0];
		var edt = editors[i][1];

		$('#' + name).text(edt.html());
	}
	return true;
}
         	
         	</script>
              <textarea name="content" id="content" cols="" rows="" style="width:300px;height:400px;">${map.topic.content}</textarea>
         	<br/>
         </li>
         
       
          <!-- 
         <li class="li_02">
         	<em>投票选项</em>
            
              <textarea name="xuanxiang" id="xuanxiang" cols="" rows=""></textarea>
              <div class="tips">投票标题以换行隔开</div>
         </li>
			 -->
			 
         <li><input name="" type="submit" class="btn1" value="发 表" /></li>
         <c:if test="${map.re le 0}">
         <li style="color:red;">${map.word}</li>
         </c:if>
       </ul>
      </form>
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