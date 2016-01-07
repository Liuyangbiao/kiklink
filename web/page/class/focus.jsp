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
<title>课程焦点图${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="${ctx}/scripts/jquery-easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${ctx}/scripts/jquery-easyui/themes/icon.css">
<link rel="stylesheet" href="${ctx}/kindeditornew/themes/default/default.css" />
<script src="${ctx}/kindeditornew/kindeditor.js"></script>
<script src="${ctx}/kindeditornew/lang/zh_CN.js"></script>


<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script type="text/javascript" src="${ctx }/scripts/jquery-easyui/jquery.easyui.min.js"></script>
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
      <div class="memberTitle"><h1>课程焦点图</h1></div>
      <div class="pageBox shop">
      <!--pageBox-->
      <div class="focus">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <th width="180">图片</th>
                <th width="128">图片名称</th>
                <th width="228">链接地址</th>
                <th width="92">排序</th>
                <th class="th_01">操作</th>
              </tr>
              <c:forEach var="f" items="${pg.result}">
              <tr>
                <td><img src="${ctx}/${f.resource}" style="width:124px;height:97px;" /></td>
                <td>${f.name}</td>
                <td>无</td>
                <td>无</td>
                <td>
                <c:choose>
                	<c:when test="${f.status gt 0}">
                		 <a href="${ctx}/kailian/KlSellerProduct/focus.do?modid=${f.id}&tostatus=0&pid=${param.pid}">隐藏</a>
                	</c:when>
                	<c:otherwise>
                		 <a href="${ctx}/kailian/KlSellerProduct/focus.do?modid=${f.id}&tostatus=1&pid=${param.pid}">显示</a>
                	</c:otherwise>
                </c:choose>
               
                <a href="${ctx}/kailian/KlSellerProduct/focus.do?premodid=${f.id}&pid=${param.pid}">编辑</a>
                <a href="${ctx}/kailian/KlSellerProduct/focus.do?delid=${f.id}&pid=${param.pid}">删除</a></td>
              </tr>
              </c:forEach>
              <!--
              <tr>
                <td><img src="${ctx}/image/nimg124_1.png" style="width:124px;height:97px;" /></td>
                <td>图片名称</td>
                <td>http://www.163.com</td>
                <td>5</td>
                <td><a href="">隐藏</a><a href="">编辑</a><a href="">删除</a></td>
              </tr>
              <tr>
                <td><img src="${ctx}/image/nimg124_1.png"/></td>
                <td>图片名称</td>
                <td>http://www.163.com</td>
                <td>5</td>
                <td><a href="">隐藏</a><a href="">编辑</a><a href="">删除</a></td>
              </tr>
              -->
            </table>
      </div>
      <div class="focus_02">
      	<form id="form1" action="${ctx}/kailian/KlSellerProduct/focus.do?pid=${map.product.id}" method="post">
      		<input id="focusid" name="focusid" type="hidden" value="${map.photo.id}" />
          <ul>
          <!--
            <li><em>图片说明</em>
                <div class="input1"><input id="name" name="name" value="${map.photo.name}${param.name}" type="text" /></div>
            </li>
            -->
            <li><em>图片</em>
                <div class="input1"><input id="resource" name="resource" onclick="" value="${map.photo.resource}${param.resource}" type="text" /></div>
                 <input type="button" id="resource_button" class="btn2 fl" onclick="" value="上传照片..." />&nbsp;尺寸1000*660
            </li>
            <!-- 
            <li><em>链接地址</em>
                <div class="input1"><input id="comment" name="comment1" class="easyui-validatebox textbox" value="${map.photo.comment}" type="text" data-options="validType:'kailianurl'"></div>
            </li>
            <li><em>排序</em>
                <div class="input1"><input id="quanzhong" name="quanzhong" value="${map.photo.quanzhong}${param.quanzhong}" type="text"/></div>
            </li>
             -->
            <li><input type="submit" class="btn1" value="提交"/></li>
          </ul>
         </form>
      </div>
      <!--pageBoxEnd
       ${my:drawpage(pg, pageContext.request,  null)}
       -->
      </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="pageLayer serviceLayer">
<div class="bgT"></div>
<div class="bgB"></div>
</div>

<%@ include file="/page/kailiantail.jsp" %>
<script>
KindEditor.ready(function(K) {
				var editor = K.editor({
					allowFileManager : true
				});
				
				/*
				K('#resource_button').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,
							imageUrl : K('#resource').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#resource').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				*/
				K('#resource_button').click(function() {
					editor.loadPlugin('multiimage', function() {
						editor.plugin.multiImageDialog({
							clickFn : function(urlList) {
								alert(urlList);
								editor.hideDialog();
							}
						});
					});
				});
				
			});

$.extend($.fn.validatebox.defaults.rules, {
    kailianurl: {
        validator: function(value, param){
            if (value == null || value.indexOf('http://')==0 && value.indexOf('http://www.kiklink.com') == 0)
            	return true;
            return false;
        },
        message: '地址不能包含其他网站地址.'
    }
});	
</script>

</body>
</html>