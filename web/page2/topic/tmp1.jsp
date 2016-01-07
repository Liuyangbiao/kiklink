<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<!DOCTYPE html>
<html lang="zh-cn">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>KMG女子防身术 | 开练</title>
		<script src="${ctx}/page2/js/jquery-1.11.1.min.js"></script>

		<!-- Bootstrap -->
		<link href="${ctx}/page2/css/owl.carousel.css" rel="stylesheet" />
		<link href="${ctx}/page2/css/owl.theme.css" rel="stylesheet" />
		<link href="${ctx}/page2/css/style.css" rel="stylesheet" />

		<!-- 让IE6-8支持html5元素-->
		<!--[if lt IE 9]>
		<script src="js/html5shiv.min.js"></script>
		<![endif]-->
	</head>
	<body class="special special-1">
		<%@ include file="/page2/kailianheader1.jsp" %>
		
		
		
		
		<div class="main" onclick="" style="position:relative;background-image: url(${ctx}/image/tmpbg1.jpg);background-repeat:no-repeat;background-position:center top;no-repeat center top;height:2609px;">
			<div class="main" id="fukuang" style="text-align:center;z-Index:100;position:absolute;left:0px;top:0px;width:100%;height:64px;background-image: url(${ctx}/image/tmpbg2.png);background-repeat:no-repeat;background-position:center top;no-repeat center top;height:64px;">
			<div style="margin:0 auto;width:300px;height:64px;cursor:pointer;" onclick="window.location.href='http://www.kiklink.com/product_392.html';"></div>
			
			</div>	
			
			<div class="" id="fukuang" style="text-align:center;z-Index:100;position:absolute;left:0px;top:802px;width:100%;height:64px;height:64px;">
				<div style="margin:0 auto;width:300px;height:64px;cursor:pointer;" onclick="window.location.href='http://www.kiklink.com/product_392.html';"></div>
			</div>			
		</div>
	<%@ include file="/page2/kailiantail.jsp" %>
		<script src="${ctx}/page2/js/owl.carousel.min.js"></script>
		<script src="${ctx}/page2/js/jquery.bxslider.min.js"></script>
		<script src="${ctx}/page2/js/function.js"></script>
	</body>
	<script>
	 $(function() {
	 	$('#fukuang').hide();
	 	
	 	$(window).scroll(function () {
	 		//alert($(window).scrollTop());
	 	
	 		var top1 = parseInt($(window).scrollTop());
	 		if (top1 >= 942) {
	 			//alert(top);
	 			$('#fukuang').show();
	 			$('#fukuang').css({top:(top1-173+30) + "px"});
	 		}
	 		else {
	 			
	 			$('#fukuang').hide();
	 		}
	 	})
	 	
	 })
	</script>
	
</html>
