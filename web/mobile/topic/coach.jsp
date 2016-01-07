<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>专题约运动-SmartPhone</title>

    <link href="${ctx }/mobile/css/style.css" rel="stylesheet">
	<script src="${ctx}/page2/js/jquery-1.11.1.min.js"></script>
  </head>
  <body class="special special-form">
    <div class="container-form">
    	<div class="form-title">
    		<img class="img-responsive" src="${ctx }/mobile/images/title_04_640x218.png" />
    	</div>
	    <div class="form-content">
			<dl>
				<dt>
					关于课程
				</dt>
				<dd>
					${map.c.coachName }
				</dd>
				<dd>
					${my:replaceall(map.c.topicAboutCoach, '\\n','</dd><dd>') }
				</dd>
			</dl>
			<dl>
				<dt>
					关于教练
				</dt>
				<dd>
				${my:replaceall(map.c.topicCoachCapacity, '\\n','</dd><dd>') }</dd>
			</dl>
			<dl>
				<dt>
					约TA，你需要准备。。。
				</dt>
				<dd>
				
				${my:replaceall(map.c.topicNeed, '\\n','</dd><dd>') }</dd>
			</dl>
			<dl>
				<dt>
					马上约TA！
				</dt>
				<dd class="form-horizontal">
					<form id="coachForm" action="${ctx }/kailian/CmsStRhppeople/regcoach.do?ajax=ajax" method="post">
						<div class="form-group">
							<label for="name" class="col-xs-3 control-label"><span class="required">*</span>您的姓名</label>
						    <div class="col-xs-8">
						    	<input type="hidden" name="coachid" value="${param.id }"/>
								<input type="hidden" name="ext5" id="ext5" value="${param.q }"/>
						    	<input type="text" class="form-control" name="pname" id="pname" />
						    </div>
						</div>
						<div class="form-group">
							<label for="phone" class="col-xs-3 control-label"><span class="required">*</span>手机号码</label>
						    <div class="col-xs-8">
						    	<input type="text" class="form-control" name="mobile" id="phone" />
						    </div>
						</div>
						<div class="form-group">
							<label for="job" class="col-xs-3 control-label">职业</label>
						    <div class="col-xs-8">
						    	<input type="text" class="form-control" name="job" id="job" />
						    </div>
						</div>
<%--						<div class="form-group">--%>
<%--							<label for="office" class="col-xs-3 control-label">职位</label>--%>
<%--						    <div class="col-xs-8">--%>
<%--						    	<input type="text" class="form-control" name="ext3" id="office" />--%>
<%--						    </div>--%>
<%--						</div>--%>
					</form>
				</dd>
				<dd>
					${my:replaceall(map.c.nowInvite, '\\n','</dd><dd>') }</dd>
			</dl>
			<div class="btn-group">
				<button class="btn"> 提交 </button>
			</div>
		</div>
		<div class="form-content-bottom"></div>
    </div>
    <footer>
    	<img class="img-responsive" src="${ctx }/mobile/images/weixin.jpg" />
    </footer>
    <script>
    	$(function(){
    		$(".btn").click(function(){
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
					    	window.location.href="${ctx}/mobile/topic/success.jsp";
				    	}
				    }
				});
    		});
    	});
    </script>
  </body>
</html>