<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<div class="popup-content-center">

	<h1>
		<img src="${ctx }/page2/images/popup_title_01_527x148.png" />
	</h1>
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
		<dd>${my:replaceall(map.c.topicCoachCapacity, '\\n','</dd><dd>') }</dd>
	</dl>
	<dl>
		<dt>
			约TA，你需要准备。。。
		</dt>
		<dd>${my:replaceall(map.c.topicNeed, '\\n','</dd><dd>') }</dd>
	</dl>
	<dl>
		<form id="coachForm" action="${ctx }/kailian/CmsStRhppeople/regcoach.do?ajax=ajax" method="post">
			<input type="hidden" name="ext6" id="ext5" value="${map.c.ext5 }"/>
			<input type="hidden" name="coachid" value="${param.id }"/>
			<input type="hidden" name="ext5" value="${param.q }"/>
		<dt>
			马上约TA！
		</dt>
		<c:if test="${map.loginuser eq null}">
				<dd class="form-group">
					<label class="sr-only" for="text-1"><span class="required">*</span>您的姓名：</label>
		    		<input type="text" class="form-control input1 input_hover" name="pname" id="text-1" placeholder="">
				</dd>
				<dd class="form-group">
					<label class="sr-only" for="text-2"><span class="required">*</span>您的电话：</label>
		    		<input type="text" class="form-control" name="mobile" id="text-2" placeholder="">
				</dd>
				<dd class="form-group">
					<label class="sr-only" for="text-3"><span class="required">&nbsp;&nbsp;</span>您的职业：</label>
		    		<input type="text" class="form-control" name="job" id="text-3" placeholder="">
				</dd>
<%--				<dd class="form-group">--%>
<%--					<label class="sr-only" for="text-4"><span class="required">&nbsp;&nbsp;</span>您的职位：</label>--%>
<%--		    		<input type="text" class="form-control" name="ext3" id="text-4" placeholder="">--%>
<%--				</dd>--%>
				<dd class="split">&nbsp;</dd>
		</c:if>
		<dd>${my:replaceall(map.c.nowInvite, '\\n','</dd><dd>') }</dd>
		</form>
	</dl>
	<div class="btn-group">
		<c:if test="${map.re lt 0 }">
		</c:if>
		<c:if test="${map.re gt 0 }">
			<button class="btn" id="getTa"> 提交 </button>
		</c:if>
	</div>
</div>
<div class="popup-content-bottom"></div>
