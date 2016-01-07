<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%
	request.setAttribute("tableName", CmsAjaxConfig.TABLE_ALIAS);
 %>
<c:set var="actionBasePath" value="/kailian/CmsAjaxConfig" />
<c:set var="ttid" value="ID"></c:set>
<c:set var="ttcreator" value="CREATOR"></c:set>
<c:set var="ttcreatetime" value="CREATE_TIME"></c:set>
<c:set var="ttdeleted" value="DELETED"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="${ctx}/js/jscharts.js"></script>
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
        <h3>数据统计</h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab">
   

			<div id="graph">Loading graph...</div>
			<br/>
			
			<a class="button" href="${ctx}/kailian/CmsStaticsGather/gather.do?thetype=${param.thetype}&graph=pie">饼状图</a>
			&nbsp;&nbsp;
			<a class="button" href="${ctx}/kailian/CmsStaticsGather/gather.do?thetype=${param.thetype}&graph=bar">柱状图</a>
			&nbsp;&nbsp;
			<a class="button" href="${ctx}/kailian/CmsStaticsGather/gather.do?thetype=${param.thetype}&graph=line">线状图</a>
			&nbsp;&nbsp;
	


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

	
	
	var myData = [];
	var colors = [];
	
	<c:forEach var="v" items="${list}" varStatus="vs">
		myData[myData.length] = ['${v.data}',${v.count}];
		colors[colors.length] = '#${2+vs.index}${9-vs.index}${2+vs.index}${2+vs.index}${9-vs.index}${2+vs.index}';
	</c:forEach>
	
	
	<c:choose>
		<c:when test="${param.graph eq 'bar'}">
		var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.colorizeBars(colors);
	myChart.setTitle('统计结果');
	myChart.setTitleColor('#8E8E8E');
	myChart.setAxisNameX('');
	myChart.setAxisNameY('%');
	myChart.setAxisColor('#C4C4C4');
	myChart.setAxisNameFontSize(16);
	myChart.setAxisNameColor('#999');
	myChart.setAxisValuesColor('#7E7E7E');
	myChart.setBarValuesColor('#7E7E7E');
	myChart.setAxisPaddingTop(60);
	myChart.setAxisPaddingRight(140);
	myChart.setAxisPaddingLeft(150);
	myChart.setAxisPaddingBottom(40);
	myChart.setTextPaddingLeft(105);
	myChart.setTitleFontSize(11);
	myChart.setBarBorderWidth(1);
	myChart.setBarBorderColor('#C4C4C4');
	myChart.setBarSpacingRatio(50);
	myChart.setGrid(false);
	myChart.setSize(616, 321);
	myChart.setBackgroundImage('chart_bg.jpg');
	myChart.draw();
		
		</c:when>
		<c:when test="${param.graph eq 'line'}">
		var myChart = new JSChart('graph', 'line');
		myChart.setDataArray(myData);
	myChart.setTitle('统计结果');
	myChart.setTitleColor('#8E8E8E');
	myChart.setTitleFontSize(11);
	myChart.setAxisNameX('');
	myChart.setAxisNameY('');
	myChart.setAxisColor('#C4C4C4');
	myChart.setAxisValuesColor('#343434');
	myChart.setAxisPaddingLeft(100);
	myChart.setAxisPaddingRight(120);
	myChart.setAxisPaddingTop(50);
	myChart.setAxisPaddingBottom(40);
	myChart.setAxisValuesNumberX(6);
	myChart.setGraphExtend(true);
	myChart.setGridColor('#c2c2c2');
	myChart.setLineWidth(6);
	myChart.setLineColor('#9F0505');
	myChart.setSize(616, 321);
	myChart.setBackgroundImage('chart_bg.jpg');
	myChart.draw();
		
		</c:when>
		<c:otherwise>
			var myChart = new JSChart('graph', 'pie');
	myChart.setDataArray(myData);
	myChart.colorizePie(colors);
	myChart.setTitle('统计结果');
	myChart.setTitleColor('#8E8E8E');
	myChart.setTitleFontSize(11);
	myChart.setTextPaddingTop(30);
	myChart.setSize(616, 321);
	myChart.setPiePosition(308, 170);
	myChart.setPieRadius(85);
	myChart.setPieUnitsColor('#555');
	myChart.setBackgroundImage('chart_bg.jpg');
	myChart.draw();
		</c:otherwise>
	
	</c:choose>
	




	
</script>
<!-- Download From www.exet.tk-->
</html>
