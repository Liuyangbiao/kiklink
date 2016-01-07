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
<title>${map.group.name}${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/group.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<!--[if lte IE 6]>
<script src="${ctx}/script//png.js" type="text/javascript"></script>
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
      <h1>最新加入会员 ......</h1>
      <div class="list1">
            <ul>
            
            	<c:forEach var="v" items="${map.newusers}">
            	<li>
                  <div class="imgDiv"><a href="${ctx}/kailian/CmsGroup/userIndex.do?userid=${v.userid}"><img src="${ctx}/${my:showHead(request,'user',v.userid)}" style="width:60px;height:60px;" /></a></div>
                  <div class="name"><a href="">${v.username}</a></div>
               </li>
            	</c:forEach>
            	
             
		<!-- 
               <li>
                  <div class="imgDiv"><a href=""><img src="${ctx}/image//limg61_2.jpg"/></a></div>
                  <div class="name"><a href="">小豆包</a></div>
               </li>
               -->
            </ul>
            <span class="clear_f"></span>
      </div>
      <div class="h25"></div>
      <div class="div0"><a href="${ctx}/kailian/CmsGroup/groupUsers.do?id=${map.group.id}">所有会员</a></div>
      <div class="btnDiv"><a href="${ctx}/kailian/CmsGroup/preNewGroup.do">创建你的兴趣小组</a></div>
   </div>
</div>
<div class="fr w737">
    <div class="pageNow"><span>当前位置：</span><a href="${ctx}/index.html">首页</a><a href="${ctx}/kailian/CmsGroup/index.do"> 小组</a>${map.group.name}</div>
    <div class="pageBox hotTopic">
         <dl>
           <dt><a href=""><img src="${ctx}/${my:showHead(request,'group',map.group.id)}" style="width:73px;height:73px;" /></a></dt>
           <dd>
             <h1>${map.group.name}</h1>
             <div class="msg" id="msg1"><span>我是这个小组的成员 > </span><a href="#" onclick="cannelgroup(${map.group.id},'msg1','', 'say');">退出小组</a>
             <a id="msg3" href="${ctx}/kailian/CmsGroup/preEdit.do?id=${map.group.id}">编辑小组</a>
             </div>
              <div class="msg" id="msg2"><span>我不是这个小组的成员 > </span><a href="#" onclick="joingroup(${map.group.id},'msg2','', 'say');">加入小组</a></div>
           </dd>
         </dl>
         <div class="content">
             创建于${my:transDate(map.group.createtimelong)}　　　组长：${map.group.ext1}<br />
             ${my:replaceall(map.group.content,'\\n','<br/>')}
		<!-- 
           <a href="">推荐</a>
            -->
         </div>
     </div>
     <div class="h15"></div>
     <!---->
     <div class="pageBox themePart2 hotTopic1">
       <h1 class="title">热门话题</h1>

       <a href="javascript:void(0);" id="say" att = "" class="btn">发言</a>
       <div class="table">
           <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <th width="400"><div class="name">话题</div></th>
                <th width="90">作者</th>
                <th width="120">回应</th>
                <th>最后回应</th>
              </tr>
              <c:forEach var="v" items="${map.topics.result}">
              <tr>
                <td><div class="name">
                <a href="${ctx}/kailian/CmsGroup/getTopic.do?topicid=${v.id}" target="_blank">${my:maxleng(v.title,20)}
                <c:if test="${v.extInt1 gt 0}">【置顶话题】</c:if>
                </a>
               
                </div></td>
                <td><a href="${ctx}/kailian/CmsGroup/userIndex.do?userid=${v.userid}" target="_blank">${v.ext1}</a></td>
                <td>${v.replyCount}回应</td>
                <td>${my:transDate(v.createtimelong)}</td>
              </tr>
              </c:forEach>
             <!-- 
              <tr>
                <td><div class="name"><a href="">[顶置话题]还记得你打dota使用的第一个英雄吗？</a></div></td>
                <td>114回应</td>
                <td>43回应</td>
                <td>2014-04-05</td>
              </tr>
               -->
           </table>
       </div>
       <div class="pageNum">
        ${my:drawpage(map.topics, pageContext.request,  null)}
       <!-- 
       每页有40条记录　　第1页　　共1页<a href="">首页</a>|<a href="">末页</a>转到<input type="text" class="input1" />页
        -->
       </div>
    </div> 
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="CreateLayer">
      <a href="javascript:close_prompt_fun('.CreateLayer');" class="close"></a>
      <div class="ico"><img src="${ctx}/image//nimg55_2.gif"/></div>
      <div class="content">
         创建小组成功！　等待审核！<br /><a href="">点击返回</a>　小组首页
      </div>
</div>

<!--底部start-->
<%@ include file="/page/kailiantail.jsp" %>
<%@ include file="/page/group/groupjs.jsp" %>

<script>
$(function(){
	$('#msg1').hide();
	$('#msg2').hide();
	$('#msg3').hide();
	//
	$.ajax({
            type: 'POST',
            url: '${ctx}/kailian/CmsGroup/getding.do',
            dataType: 'json',
            data: {ajax:'ajax',groupid:'${map.group.id}'},
            success: function (data) {
            
				if (data['re'] > 0){
					if (data['in'] > 0	) {
						//$('.msg').hide();
						$('#msg2').hide();
						$('#msg1').show();
						isSay = true;
						$('#say').attr("att", "true");
					}
					else {
						$('#msg1').hide();
						$('#msg2').show();
						$('#say').attr("att", "false");
					}
					
					//if (data['creator'] > 0) 
					if (data['groupuser'] != null && data['groupuser']['userlevel'] == 10) {
						$('#msg3').show();
					}
				}
				else {
					$('.msg').hide();
					//alert(data['word']);
				}
			
            }
        });

	$('#say').click(function(){
		if($(this).attr("att") == "true")
			$(this).attr("href", "${ctx}/kailian/CmsGroup/preTopic.do?id=${map.group.id}");
		else
			alert("请先加入小组，在发言");
	});
})
</script>
</body>
</html>