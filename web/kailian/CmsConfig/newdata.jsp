<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsConfig.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsConfig" />
<c:set var="ttid" value="ID"></c:set>
<c:set var="ttcreator" value="CREATOR"></c:set>
<c:set var="ttcreatetime" value="CREATE_TIME"></c:set>
<c:set var="ttdeleted" value="DELETED"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/admin/admincommon/head.jsp" %>
</head>
<body>
<div id="body-wrapper">
  <!-- LOGO与左侧菜单 -->
  <!-- End #sidebar -->
  <div id="main-content">
    <!-- 如果没有js -->
    <%@ include file="/admin/admincommon/nojs.jsp" %>
    <!-- 标题与大图标 -->
     <%@ include file="/admin/admincommon/headicons.jsp" %>
    <!-- End .clear -->

    
    <!-- 搜索 -->
        <div class="content-box column-right" style="width:100%">
      <div class="content-box-header">
        <!-- Add the class "closed" to the Content box header to have it closed by default -->
        <h3>创建表单内容</h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
          	<form id="form1" action="${ctx}/kailian/CmsConfig/save.do" method="post">
		<a class="button" onClick="if(doeditors()) $('#form1').submit();" >提交</a>&nbsp;&nbsp;
		<a class="button" onClick="backtolist();">返回列表</a>&nbsp;&nbsp;
		<a class="button" onClick="history.back();">后退</a>
		
		<fieldset>
			<input type="hidden" id="id" name="id" value="${param.id}"/>
            
            <!--<select id="inputType" name="inputType"><option value=""  ">请选择</option><option value="-1"  >默认</option><option value="0"  >文字</option><option value="10"  >数字</option><option value="20"  >多行文字输入框</option><option value="11"  >图片</option><option value="12"  >网址</option></select>
-->
            <c:forEach var="v" items="${list}" varStatus="vs">
            		<label id='${v.inputEnName}_mainlb'>
                    	${v.inputCnName}
                    </label>
                    
            		<c:choose>
                    	<c:when test="${v.inputType eq 20}">
                        	<textarea id="${v.inputEnName}" name="${v.inputEnName}" cols="60" rows="15"></textarea>
                        </c:when>
                        <c:otherwise>
                        	<input id="${v.inputEnName}" name="${v.inputEnName}" type="text" />
                        </c:otherwise>
                        
                    </c:choose>
            </c:forEach>
		
		<!-- ONGL access static field: @package.class@field or @vs@field -->
		
		
		</fieldset>
	</form>
        </div>
        <!-- End #tab3 -->
      </div>
      <!-- End .content-box-content -->
    </div>
    <!-- End .content-box -->
    <div class="clear"></div>
    <%@ include file="/admin/admincommon/tipdown.jsp" %>

    <!-- End Notifications -->
  </div>
  <!-- End #main-content -->
</div>
</body>
<script type="text/javascript">
var host1 = "${ctx}";
$(document).ready(function(){
	$('.iframe').fancybox({'width':widthPercent,'height':heightPercent});
	doright();
});


	function submitSearch(pageno) {
		document.getElementById('pageNumber').value = pageno;
		$('#queryForm').submit();
	}
</script>
<!-- Download From www.exet.tk-->
</html>
