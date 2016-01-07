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
<title>创建小组${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/group.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${ctx}/kindeditornew/themes/default/default.css" />
<script src="${ctx}/kindeditornew/kindeditor.js"></script>
<script src="${ctx}/kindeditornew/lang/zh_CN.js"></script>
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
<div class="fl pageBox CreatePart1">
      <h1>推荐小组 ......</h1>
      <div class="list">
         <ul>
         	<c:forEach var="v" items="${map.list}" varStatus="vs">
         	<li>
              <div class="imgDiv"><a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${v.id}"><img src="${ctx}/${my:showHead(request,'group',v.id)}"/></a></div>
              <div class="msg">${v.name}<br />${v.userCount}成员</div>
              <a href="#" class="btn" id="join${v.id}" onclick="joingroup(${v.id},'join${v.id}','');">+ 加入小组</a>
           </li>
         	
         	</c:forEach>
         <!-- 
           <li>
              <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg60.png"/></a></div>
              <div class="msg">我爱奢侈品、但是买不起<br />334成员</div>
              <a href="" class="btn">+ 加入小组</a>
           </li>
            -->
         </ul>
      </div>
</div>
<div class="fr w737">
    <div class="pageNow"><span>当前位置：</span><a href="${ctx}/index.html">首页</a>><a href="${ctx}/kailian/CmsGroup/index.do"> 小组</a></div>
    <div class="pageBox CreatePart2">
       <h1>创建小组</h1>
       <ul>
         <li><em>小组名称</em>
             <div class="input1"><input id="name" name="name" type="text" value="${map.group.name}" /></div>
             
         </li>
         <li><em>小组类型</em>
             <div class="selectDiv"><span></span>
             <select name="type" id="type">
                  <option value="1">健身</option>
                  <option value="2">康复</option>
             </select>
             </div>
         </li>
         <li><em>小组logo</em>
         	<div class="input1"><input id="photo" name="photo" type="text"  value="${map.group.photo}" /></div>尺寸：200x200
         </li>
         <li class="li_01"><em>小组简介</em>
         	
         	
              <textarea name="content" id="content" cols="" rows="">${map.group.content}</textarea>
         </li>
         <c:choose>
         	<c:when test="${map.group ne null}">
         		<li><input name="" type="button" class="btn1" value="修改小组" onclick="createit();" /></li>
         	</c:when>
         	<c:otherwise>
         		<li><input name="" type="button" class="btn1" value="创建小组" onclick="createit();" /></li>
         	</c:otherwise>
         </c:choose>
         
       </ul>
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
         <span>操作成功！　等待审核！</span><br /><a href="${ctx}/kailian/CmsGroup/userIndex.do">点击前往</a>　
         <a href="${ctx}/kailian/CmsGroup/index.do">小组首页</a>
      </div>
</div>
<script>
	function createit() {
		$.ajax({
            type: 'POST',
            url: '${ctx}/kailian/CmsGroup/newGroup.do',
            dataType: 'json',
            data: {
           		ajax:'ajax',name:$('#name').val(),type:$('#type').val(),photo:$('#photo').val(),content:$('#content').val(),
           		id:'${map.group.id}'
			},
            success: function (data) {
            	//alert(data['word']);
				if (data['re'] > 0) {
					$('.content span').html("创建小组成功！　等待审核！");
					prompt_fun('.CreateLayer');
				}
				else {
					//alert(data['word']);
					$('.content span').html(data['word']);
					prompt_fun('.CreateLayer')
				}
            }
        });
	}
</script>

<!--底部start-->
<%@ include file="/page/kailiantail.jsp" %>
<%@ include file="/page/group/groupjs.jsp" %>
<script>
$(function(){
	$("#type").find("option[vale='${map.group.type}']").attr("selected",true);
	

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
   
   
   KindEditor.ready(function(K) {
				var editor = K.editor({
					allowFileManager : true
				});
				
				
				K('#photo').click(function() {
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