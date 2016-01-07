<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="com.yebucuo.sigleton.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("allrights",RightSingleton.rightList);
	request.setAttribute("classes",RightSingleton.classNames);
	request.setAttribute("imap",InputSingleton.getInputMap());
	request.setAttribute("rmap",RightSingleton.getRightMap());
 %>
<c:set var="actionBasePath" value="/kailian/CmsRightTable" />
<c:set var="ttid" value="ID"></c:set>
<c:set var="ttcreator" value="CREATOR"></c:set>
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
   
   
    <!-- End .content-box -->
    
    <!-- 搜索 -->
        <div class="content-box column-right" style="width:100%">
      <div class="content-box-header">
        <!-- Add the class "closed" to the Content box header to have it closed by default -->
        <h3>所有权限</h3> 
       
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
		<a class="button" href="#" onClick="ok();">确定</a>
        &nbsp;&nbsp;&nbsp;
        全选<input type="checkbox" id="all" />

        <br/>
        	<c:forEach var="clz" items="${classes}" varStatus="vs">
            	<c:set var="v_seq_char" value="-table_name" />
                <c:set var="v_key" value="${fn:replace(clz,'Action','')}${v_seq_char}" />  
                <div style="line-height:40px;font-size:20px;">
            		 <input id="${fn:replace(clz,'Action','')}" name="${v_key}" class="wcls"  type="checkbox"  />
                     <b>${imap[v_key].inputCnName}：</b>
                    
                    <c:forEach var="mtd" items="${allrights[vs.index]}">
                   	<c:if test="${rmap[mtd].visitRightLevel gt 0}">
                    &nbsp;&nbsp;&nbsp;
                    	<a href='${ctx}/kailian/CmsRightTable/list.do?className=${rmap[mtd].className}&methodName=${rmap[mtd].methodName}' class='iframe'>${rmap[mtd].methodComment}</a>
                        <input id="checkbox-${rmap[mtd].id}" name="spCodeId" class="${fn:replace(clz,'Action','')}" value="1"  type="checkbox" />
                	</c:if>
                    </c:forEach>
                
                </div>
            </c:forEach>
        
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

$(".wcls").click(function(){
	//alert($(this).attr("id"));
	//alert($(this).);
		var clz = $(this).attr("id");
		//alert(clz);
		if ($(this).attr("checked"))
			$("." + clz).attr("checked", true );
		else 
			$("." + clz).attr("checked", false );
	});

function ok() {
	var str = ",";
	
      $("input:checkbox[name=spCodeId]:checked").each(function(i){
		  var id = ($(this).attr("id"));
	  	id = id.split("-")[1];
		str = str + id + ",";
	  });
	  //alert(str);
	parent.setvalue("addition", str);
	parent.closefancy();
}


var addition = "${param.addition}";
$(function() {
	var ss = addition.split(",");
	for (var i = 0; i < ss.length; i ++) {
		$("#checkbox-" + ss[i]).attr("checked",true);	
	}
});


$("#all").click(function() {
	var c = false;
	if ($(this).attr("checked"))
		c = true;
	$("input:checkbox[name=spCodeId]").each(function(i){
		$(this).attr("checked", c)
	});
});



	
</script>
<!-- Download From www.exet.tk-->
</html>
