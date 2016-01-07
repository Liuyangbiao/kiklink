<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="com.yebucuo.common.constant.Constant"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.yebucuo.com" prefix="my" %>

<%//用于实现jsp模板的继承关系,请查看:http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends %>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid" %>
<%
	
	String ctx = request.getRequestURL().toString().replaceAll(request.getRequestURI(), "") + request.getContextPath();
	request.setAttribute("ctx", ctx);
 	request.setAttribute("url", request.getRequestURL().toString());
	request.setAttribute("productIndexTypes", Constant.indexTypes);
 	request.setAttribute("productCrawlTypes", Constant.crawlTypes);
 	request.setAttribute("productDetailTypes", Constant.productDetailTypes);
 	request.setAttribute("detailIndexTypes", Constant.detailIndexTypes);
 	request.setAttribute("websiteTypes", Constant.websiteTypes);
 %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>开练网管理后台</title>
<!--                       CSS                       -->
<!-- Reset Stylesheet -->
<link rel="stylesheet" href="${ctx }/admin/resources/css/reset.css" type="text/css" media="screen" />
<!-- Main Stylesheet -->
<link rel="stylesheet" href="${ctx }/admin/resources/css/style.css" type="text/css" media="screen" />
<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="${ctx }/admin/resources/css/invalid.css" type="text/css" media="screen" />
<!--                       Javascripts                       -->
<!-- jQuery -->
<script type="text/javascript" src="${ctx }/scripts/jquery-1.4.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" src="${ctx }/admin/resources/scripts/simpla.jquery.configuration.js"></script>
<!-- Facebox jQuery Plugin -->
<script type="text/javascript" src="${ctx }/admin/resources/scripts/facebox.js"></script>
<script type="text/javascript" src="${ctx }/admin/resources/scripts/img.js"></script>
<!-- jQuery WYSIWYG Plugin -->
<script type="text/javascript" src="${ctx }/admin/resources/scripts/jquery.wysiwyg.js"></script>
<!-- jQuery Datepicker Plugin -->
<script type="text/javascript" src="${ctx }/admin/resources/scripts/jquery.datePicker.js"></script>
<script type="text/javascript" src="${ctx }/admin/resources/scripts/jquery.date.js"></script>
<link type="text/css" rel="stylesheet" href="${ctx }/scripts/jquery-easyui/themes/default/easyui.css">
<link type="text/css" rel="stylesheet" href="${ctx }/scripts/jquery-easyui/themes/icon.css">
<script type="text/javascript" src="${ctx }/scripts/jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${ctx }/js/right.js"></script>
<script type="text/javascript" src="${ctx }/scripts/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
<div id="body-wrapper">
    <!-- LOGO与左侧菜单 -->
	<%@ include file="/admin/admincommon/leftmenu.jsp" %>
  <!-- End #sidebar -->
  <div id="main-content">
    <!-- 如果没有js -->
    <%@ include file="/admin/admincommon/nojs.jsp" %>
     <!-- 标题与大图标 -->
     <%@ include file="/admin/admincommon/headicons.jsp" %>
    <!-- End .clear -->
    
    <!-- Page Head -->
    <div id="tabs" class="easyui-tabs" data-options="tools:'#tab-tools'" style="width:100%;">	
    </div>
   <div id="tab-tools">
   		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-cancel'" onclick="removePanels()"></a>
   </div>
    
    <!--
   <div id="tabs" class="easyui-tabs" data-options="tools:'#tab-tools'"> 
　　<div title="tabs1" data-options="closable:true" style=""> 
　　<iframe src="http://www.yebucuo.com" style="width:100%;height:100%;"></iframe> 
　　</div> 
<div title="tabs2"> 
　　tabs2 
　　</div> 
</div>
-->
    <!-- End Notifications -->
    <%@ include file="/admin/admincommon/footer.jsp" %>
    <!-- End #footer -->
  </div>
  <!-- End #main-content -->
</div>
</body>
<!-- Download From-->
<script type="text/javascript">

$(document).ready(function(){

$("#tabs").tabs({ 
　　　　width:$("#tabs").parent().width(), 
　　　　height:parseInt($(document).height())-130
　　});



});


        function addPanel(url,title1){

            $('#tabs').tabs('add',{
                title:title1,
                content: '<div style="padding:10px;"><iframe src="' + url + '" style="width:98%;height:95%;"></iframe></div>',
                closable: true
            });
        }
		
		function removePanels() {
			while (true) {
				var tab = $('#tabs').tabs('getSelected');
            	if (tab){
                var index = $('#tabs').tabs('getTabIndex', tab);
                $('#tabs').tabs('close', index);
            	}	
				else {
					break;	
				}
			}
		}

</script>


</html>
