<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>免费|18位男神女神私教带你做运动</title>

    <link href="${ctx }/mobile/css/style.css" rel="stylesheet">
	<script src="${ctx}/page2/js/jquery-1.11.1.min.js"></script>
  </head>
  <body class="special special-index">
    <header>
    	<div class="banner">
    		<img class="img-responsive" src="${ctx }/mobile/images/banner_01_640x320.jpg" />
    	</div>
    </header>
    <div class="container-fluid container-products">
    	<c:forEach var="g" items="${map.list}" varStatus="vs">
   			<c:choose>
				<c:when test="${vs.index eq 0}">
			    	<div class="row">
			    		<div class="col-xs-12">
							<h1><img class="img-responsive" src="${ctx }/mobile/images/title_01_640x99.png"/></h1>
						</div>
					</div>
					<div class="row products-a">
				</c:when>
				<c:when test="${vs.index eq 1}">
					<div class="row">
			    		<div class="col-xs-12">
							<h1><img class="img-responsive" src="${ctx }/mobile/images/title_02_640x99.png"/></h1>
						</div>
					</div>
					<div class="row products-b">
				</c:when>
				<c:otherwise>
					<div class="row">
			    		<div class="col-xs-12">
							<h1><img class="img-responsive" src="${ctx }/mobile/images/title_03_640x99.png"/></h1>
						</div>
					</div>
					<div class="row products-c">
				</c:otherwise>
			</c:choose>
			<c:forEach var="info" items="${g.infoList}" varStatus="vs1">
				<c:if test="${g.id eq info.ext1 }">
					<c:choose>
						<c:when test="${vs1.index eq 0}">
							<div class="col-xs-6">
						</c:when>
						<c:when test="${vs1.index eq 3}">
							</div>
							<div class="col-xs-6">
						</c:when>
					</c:choose>
					<div class="product">
	    				<div class="pic">
	    					<img class="img-responsive" src="${ctx }/${info.ext2 }" width="314px" height="260px"/>
	    				</div>
	    				<div class="info">
		    				<h2>${info.coachName }</h2>
		    				<p>${info.personalDeclaration } </p>
		    				<h3>[${info.ext3 }]</h3>
		    				<address><i class="icon icon-12 icon-addr"></i>
		    				<c:choose>
								<c:when test="${fn:length(info.shopAdd) ge 18}">
									${info.shopAdd }
								</c:when>
								<c:when test="${fn:length(info.shopAdd) lt 18}">
									${info.shopAdd }<br/>&nbsp;
								</c:when>
							</c:choose></address>
		    				<a class="btn" href="javascript:void(0);" onclick="goCoachInfo('${info.id}')"><i class="icon icon-16 icon-heart"></i>马上约TA</a>
	    				</div>
	    			</div>
	    			<c:if test="${vs1.index eq 5 }">
	    				</div>
	    			</c:if>
				</c:if>
			</c:forEach>
			</div>
    	</c:forEach>
	    </div>
    <footer>
    	<img class="img-responsive" src="${ctx }/mobile/images/weixin.jpg" />
    </footer>
    <script>
    function goCoachInfo(id){
    	window.location.href="${ctx}/kailian/KlTopicCoach/mobileShow.do?id="+id+"&q=${param.q}&mob=mob";
    }
    </script>
  </body>
</html>