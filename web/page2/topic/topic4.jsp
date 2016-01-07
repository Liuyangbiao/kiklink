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
		<title>${map.topic.topicname} | 开练</title>
		<script src="${ctx}/page2/js/jquery-1.11.1.min.js"></script>
		<!-- Bootstrap -->
		<link href="${ctx }/page2/css/owl.carousel.css" rel="stylesheet" />
		<link href="${ctx }/page2/css/owl.theme.css" rel="stylesheet" />
		<link href="${ctx }/page2/css/popup.css" rel="stylesheet" />
		<link href="${ctx }/page2/css/style.css" rel="stylesheet" />

		<!-- 让IE6-8支持html5元素-->
		<!--[if lt IE 9]>
		<script src="js/html5shiv.min.js"></script>
		<![endif]-->
	</head>
	<body class="special special-4">
		<%@ include file="/page2/kailianheader.jsp" %>
		<div class="main">
			<div class="banner">
				<img src="${ctx }/${map.topic.bgimg1}" />
			</div>
			<c:forEach var="g" items="${map.list}" varStatus="vs">
				<c:choose>
					<c:when test="${vs.index eq 0}">
						<div class="products-wrap products-wrap-a" style="background-image: url(${ctx}/page2/images/bg_01_1920x1104.png);">
					</c:when>
					<c:when test="${vs.index eq 1}">
						<div class="products-wrap products-wrap-b" style="background-image: url(${ctx}/page2/images/bg_02_1920x1104.png);">
					</c:when>
					<c:otherwise>
						<div class="products-wrap products-wrap-c" style="background-image: url(${ctx}/page2/images/bg_03_1920x1104.png);">
					</c:otherwise>
				</c:choose>
					<h1 class="title"><div class="title-wrap">${g.groupname }</div></h1>
					<div class="container">
					<div class="row">
						<c:forEach var="info" items="${g.infoList}" varStatus="vs1">
							<c:choose>
								<c:when test="${vs1.index eq 0 || vs1.index eq 3}">
									<div class="col col-offset">
										<div class="product">
											<div class="pic">
												<img src="${ctx }/${info.ext2 }" width="320px" height="260px">
											</div>
											<div class="info">
												<dl class="intro">
													<dt>${info.coachName }</dt>
													<dd><i class="start">"</i>${info.personalDeclaration }<i class="end">"</i></dd>
												</dl>
												<dl class="address">
													<dt>[${info.ext3 }]</dt>
													<dd><i class="icon-32 icon-location"></i>${info.shopAdd }</dd>
												</dl>
												<a class="btn popup btn-heart" href="${ctx }/kailian/KlTopicCoach/showcoach.do?id=${info.id}&q=${param.q}"><i class="icon-32 icon-wheart"></i>马上约TA。。。</a>
											</div>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="col">
										<div class="product">
											<div class="pic">
												<img src="${ctx }/${info.ext2 }" width="320px" height="260px">
											</div>
											<div class="info">
												<dl class="intro">
													<dt>${info.coachName }</dt>
													<dd><i class="start">"</i>${info.personalDeclaration }<i class="end">"</i></dd>
												</dl>
												<dl class="address">
													<dt>[${info.ext3 }]</dt>
													<dd><i class="icon-32 icon-location"></i>${info.shopAdd }</dd>
												</dl>
												<a class="btn popup btn-heart" href="${ctx }/kailian/KlTopicCoach/showcoach.do?id=${info.id}&q=${param.q}"><i class="icon-32 icon-wheart"></i>马上约TA。。。</a>
											</div>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<%@ include file="/page2/kailiantail.jsp" %>
		<script src="${ctx }/page2/js/jquery-1.11.1.min.js"></script>
		<script src="${ctx }/page2/js/owl.carousel.min.js"></script>
		<script src="${ctx }/page2/js/jquery.bxslider.min.js"></script>
		<script src="${ctx }/page2/js/jquery.popup.js"></script>
		<script src="${ctx }/page2/js/function.js"></script>
		<script>
			$(".popup").popup({type:'ajax',afterOpen: function(){
				var form_popup = $(".popup").data('popup');
				$("#getTa").on('click',function(){
					$.ajax({
						cache: true,
					    type: "POST",
					    dataType: "json",
					    url: "${ctx }/kailian/CmsStRhppeople/regcoach.do?ajax=ajax",
					    data: $("#coachForm").serialize(),
					    async: false,
					    error: function(data) {
					    	alert("系统错误");
					    },
					    success: function(data) {
					    	if(data.re <= 0){
					    		alert(data.word);
					    		return;
					    	} else {
								form_popup.close();
								var yue_popup = new $.Popup({'type':'ajax'});
								yue_popup.open('${ctx}/page2/topic/success.jsp?url='+$('#ext5').val());
					    	}
					    }
					});
				});
			}});
		</script>
	</body>
</html>