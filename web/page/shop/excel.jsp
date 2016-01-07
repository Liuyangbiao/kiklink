<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name></x:Name><x:WorksheetOptions><x:Selected/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]-->
<style type="text/css">
.td
{
width: 84px;
}
.gdtjContainer .tb tr
{
text-align: center;
vertical-align: middle;
}
.gdtjContainer .tb th
{
border-left: 0.5pt solid #000;
border-bottom: 0.5pt solid #000;
text-align: center;
font-weight: normal;
font-size: 10pt;
middle: ;;height:30px;}
.gdtjContainer .header th
{
font-size: 12pt;
}
.gdtjContainer .tb tr th.noleftborder
{
border-left: none;
}
.gdtjContainer .tb tr th.rightborder
{
border-right: 0.5pt solid #000;
}
</style>
</head>
<body>
<div class="gdtjContainer">
<table class="tb" cellspacing="0" cellpadding="0" border="0" width="1000px">
	<tr>
		<td>商家名称</td>
		<td>地址</td>
		<td>类别</td>
		<td>链接</td>
		<td>ID</td>
		<td>电话</td>
	</tr>
	<c:forEach var="v" items="${list}">
	<tr>
		<td>${v.shopName}</td>
		<td>${v.address}</td>
		<td>
			<c:choose>
				<c:when test="${v.shoptype eq 1}">机构</c:when>
				<c:otherwise>个人</c:otherwise>
			</c:choose>
		</td>
		<td>http://www.kiklink.com/shop_${v.id}.html</td>
		<td>${v.id}</td>
		<td>${v.phoneno}</td>
	</tr>
	
	</c:forEach>
</table>
</div>
</body>
</html>