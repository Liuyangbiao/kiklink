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
<title>${map.topic.title}${my:config('title后缀','--开练网')}</title>
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
img {max-width:600px;}
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
           <div class="imgDiv"><a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${map.group.id}"><img src="${ctx}/${my:showHead(request,'group',map.group.id)}" style="width:60px;height:60px;"/></a></div>
           <h2><a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${map.group.id}">${map.group.name}</a></h2>
           <div class="msg"></div>
    </div>
    <div class="h15"></div>
    <div class="pageBox GroupPart2">
       <h1>最新话题……</h1>
       <div class="list">
          <ul>
          <c:forEach var="v" items="${map.newtopics}">
            <li><a href="${ctx}/kailian/CmsGroup/getTopic.do?topicid=${v.id}">${my:maxleng(v.title,10)}</a><span>${my:transDate(v.createtimelong)}</span></li>
          </c:forEach>

          </ul>
       </div>
    </div>
</div>
<div class="fr w737">
    <div class="pageNow"><em>当前位置：</em><a href="#">首页</a> <a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${map.group.id}">${map.group.name}</a></div>
    <div class="pageBox">
    <!--start-->
    <div class="GroupShow">
       <h1>${map.topic.title}</h1>
       <div class="content">
       作者:${map.topic.ext1}<br/>
       ${map.topic.content}
       </div>
    </div>
    <div class="votePart2">
    	<a href="tuijianx"></a>
         <div class="fl">
         	<a href="#tuijianx" onclick="tuijian();" id="tuijian">推荐</a>
         	<a href="#tuijianx" onclick="xihuan()" id="xihuan" class="a1">喜欢</a>
         	<a href="${ctx}/kailian/CmsGroup/preTopic.do?id=${map.group.id}&topicid=${map.topic.id}" id="bianji" class="a2">编辑</a>
         	<a href="${ctx}/kailian/CmsGroup/preTopic.do?id=${map.group.id}&topicid=${map.topic.id}&action=del" id="shanchu" class="a2">删除</a>
         	<c:choose>
         		<c:when test="${map.topic.extInt1 gt 0}">
         			<a href="${ctx}/kailian/CmsGroup/preTopic.do?id=${map.group.id}&topicid=${map.topic.id}&action=quxiaozhiding" id="zhiding" class="a2">消顶</a>
         		</c:when>
         		<c:otherwise>
         			<a href="${ctx}/kailian/CmsGroup/preTopic.do?id=${map.group.id}&topicid=${map.topic.id}&action=zhiding" id="zhiding" class="a2">置顶</a>
         		</c:otherwise>
         	</c:choose>
         	</div>
       <!--   <div class="fr">
         
             <a href=""><img src="${ctx}/image/nimg20_7.jpg"/></a>
             <a href=""><img src="${ctx}/image/nimg20_8.jpg"/></a>
             <a href=""><img src="${ctx}/image/nimg20_9.jpg"/></a>
             <a href=""><img src="${ctx}/image/nimg20_10.jpg"/></a>
             <a href="" class="bigImg"><img src="${ctx}/image/nimg28_3.jpg"/></a>
          
         </div> -->
    </div>
    <div class="votePart3">
         <ul>
         	<c:forEach var="v" items="${map.comments.result}">
           <li>
               <div class="imgDiv"><a href="${ctx}/kailian/CmsGroup/userIndex.do?userid=${v.userid}"><div>
               	<img src="${ctx}/${my:showHead(request,'user',v.userid)}" style="width:60px;height:60px;"/></div>${v.userName}</a></div>
               <div class="time">${my:transDate(v.createtimelong)}</div>
               <div class="content">${v.content}</div>
           </li>
           </c:forEach>
           <!-- 
           <li>
               <div class="imgDiv"><a href=""><div><img src="${ctx}/image/nimg50_2.jpg" /></div>小溪</a></div>
               <div class="time">2013-12-29 08:41</div>
               <div class="content">是每周四都有吗？</div>
           </li>
            -->
         </ul>
         
         
    </div>
    
    <c:if test="${map.options ne null}">
    <form id="form2" action="${ctx}/kailian/CmsGroup/chooseOption.do">
    <input type="hidden" name="topicid" value="${map.topic.id}" />
     <div class="votePart5">
            <ul>
            <c:set value="${fn:split('fb0207,fc6608,ffff0a,149902,0084ff', ',') }" var="colors" />
            <c:forEach var="o" items="${map.options}" varStatus="vs">
            	<c:choose>
            		<c:when test="${map.topic.extInt3 eq null or map.topic.extInt3 eq 0}">
            			<c:set value="1" var="total" />
            		</c:when>
            		<c:otherwise>
            			<c:set value="${map.topic.extInt3+3}" var="total" />
            		</c:otherwise>
            	</c:choose>
              <li><input name="optionId" type="radio" value="${o.id}" /><em>${o.optionName} </em>
              	<div><span style="width:${10+10*o.status}px; background:#${colors[vs.index%5]};">${o.status}</span></div></li>
             </c:forEach>
            </ul>
            <div class="btn"><a style="cursor:pointer;" onclick="$('#form2').submit();">投票</a></div>
    </div>
    </form>
    </c:if>
    
    
    
   <form id="form1" action="${ctx}/kailian/CmsGroup/replyTopic.do" method="post">
    <div class="votePart4">
    	<input type="hidden" id="topicid" name="topicid" value="${map.topic.id}" />
          <h5>您的回复：</h5>
          <textarea name="content" id="content" cols="" rows="">${map.oldcont}</textarea>
          <a name="rep"></a>
          <div class="btn"><a href="#rep" id="reply1" onclick="$('#form1').submit();">发布</a>
          		<a href="${ctx}/kailian/CmsUserInfo/prelogin.do?logurl=${ctx}/topic_${map.topic.id}.html" id="login1">登录</a>
          </div>
    </div>
    </form>
    <!--end-->
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
	$('#bianji').hide();
	$('#shanchu').hide();
	$('#zhiding').hide();
	$('#reply1').hide();

	$.ajax({
            type: 'POST',
            url: '${ctx}/kailian/CmsGroup/getding.do',
            dataType: 'json',
            data: {ajax:'ajax',topicid:'${map.topic.id}'},
            success: function (data) {
            
				if (data['re'] > 0){
					//alert('发送成功');
					
					if (data['type50'] != null) {
						$('#tuijian').html("已推");
					}
					if (data['type20'] != null) { 
						$('#xihuan').html("已顶");
					}
					if (data['in'] > 0	) {
						$('.msg').html("我是小组的成员");
					}
					if (data['mine'] > 0) {
						$('#bianji').show();
						$('#shanchu').show();
					}
					else {
						$('.msg').html("<a id='jiaruid' href='#' onclick=\"joingroup(${map.topic.groupid},'jiaruid','已加入');\">加入小组</a>");
					}
					
					
					if (data['groupuser'] != null && data['groupuser']['userlevel'] >= 5) {
						$('#zhiding').show();
						$('#shanchu').show();
					}
					
					$('#reply1').show();
					$('#login1').hide();
				}
				else {
					//alert(data['word']);
					$('#reply1').hide();
					$('#login1').show();
					
				}
			
            }
        });
        
   });
</script>
</body>
</html>