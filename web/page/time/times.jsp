<%@page import="com.kailian.glo.model.*" %>
<%@page import="com.yebucuo.util.*" %>
<%@page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>开练网${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/date/My97DatePicker/WdatePicker.js"></script>
<!--[if lte IE 6]>
<script src="script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
</head>

<body>
<div class="selectLayer">
  <ul></ul>
</div>
<%@ include file="/page/kailianheader.jsp" %>


<div class="h25"></div>
<div class="w993">
<!--wal-->
<%@ include file="/page/centerleft.jsp" %>

<div class="fr w791">
      <div class="memberTitle"><h1>预约管理</h1>
            <div class="tab">
              <ul>
                <li class="liNow">课程预约</li>
                <li>会员取消预约</li>
              </ul>
            </div>
            <c:if test="${map.page.totalCount + map.page1.totalCount gt 0}">
            	<div class="tips" style="left:365px;">已经有${map.page.totalCount+map.page1.totalCount}个用户新增/修改了预约日期，请确认！</div>
             </c:if>
      </div>
      <div class="pageBox tabContentDiv">
      <!--pageBox-->
      <div class="Orders appointment4 tabContent">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <th width="119">购买者</th>
           <th width="131">
           	<select id="productid" name="productid" onchange="window.location.href='${ctx}/kailian/KlShoppingCoachtime/shoptimes.do?productid='+$('#productid').val();">
           		<option value="">课程名称</option>
           		<c:forEach var="v" items="${map.products}">
           			<option value="${v.id}">${my:maxleng(v.name,10)}</option>
           		</c:forEach>
           	</select>
           </th>
           <th width="161">预约时间</th>
           <th>操作</th>
         </tr>
         <c:forEach var="t" items="${map.page.result}">
         <tr>
           <td>${t.ext1}</td>
           <td>${my:maxleng(t.productName,10)}</td>
           <td><span class="blue">${my:coachTime(t.extInt3,t.extInt1,t.extInt2)}</span></td>
           <td>
           		<a href="${ctx}/kailian/KlShoppingCoachtime/updateStatus.do?productid=${param.productid}&day=${param.day}&pid=${t.id}&timestatus=1">确认</a>
           		<a href="#" onclick="jujue(${t.id});">拒绝</a>		
           	</td>
         </tr>
         </c:forEach>
        
      </table>
      </div>
      <div class="Orders appointment4 tabContent">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <th width="70">购买者</th>
           <th width="100">取消课程</th>
           <th width="155">课程时间</th>
           <th>操作</th>
         </tr>
         <c:forEach var="t" items="${map.page1.result}">         
         <tr>
           <td>${t.ext1}</td>
           <td>${t.productName}</td>
           <td><span class="blue">${my:coachTime(t.extInt3,t.extInt1,t.extInt2)}</span></td>
           <td><a href="${ctx}/kailian/KlShoppingCoachtime/updateStatus.do?productid=${param.productid}&day=${param.day}&pid=${t.id}&timestatus=-1">确认</a></td>
         </tr>
         </c:forEach>
       
      </table>
      </div>
      <div class="fr sellerPart2">
        <div class="memberTitle memberTitle3">
              <h1><a href="${ctx}/kailian/KlShoppingPiliangtime/piliangs.do">日程管理</a></h1>
        </div>
        <div id="sellerPart2"></div>
      </div>
<script>
WdatePicker({eCont:'sellerPart2',onpicked:function(dp){
	//alert('你选择的日期是:'+dp.cal.getDateStr())
		window.location.href="${ctx}/kailian/KlShoppingCoachtime/shoptimes.do?productid=${productid}&day=" + dp.cal.getDateStr();
	}})
</script>
      <span class="clear_f"></span>
      <!--pageBoxEnd-->
       ${my:drawpage(map.page, pageContext.request,  null)}
      </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="pageLayer serviceLayer">
<div class="bgT"></div>
<div class="bg">
      <h5>添加教练<a href="javascript:;" class="close"></a></h5>
      <div class="form">
          <ul>
            <li>
               <em>照片：</em>
               <select name=""><option value="">请选择</option></select>
            </li>
            <li>
               <em>添加照片：</em>
               <input name="" type="text" class="input1" />
               <input name="" type="button" class="btn2" value="浏览..." />
               <input name="" type="button" class="btn2" value="上传" />
            </li>
            <li class="li_02">
               <em>照片说明：</em>
               <textarea name="" cols="" rows=""></textarea>
               <input name="" type="button" class="btn2" value="添加多张图片" />
            </li>
          </ul>
      </div>
      <div class="btnDiv"><input name="" type="button" value="添 加" /></div>
</div>
<div class="bgB"></div>
</div>

<form id="form2" action="${ctx}/kailian/KlShoppingCoachtime/updateStatus.do?productid=${param.productid}&day=${param.day}" method="post">
	<input type="hidden" id="pid" name="pid" value="" />
	<input type="hidden" id="timestatus" name="timestatus" value="-10" />
	<input type="hidden" id="word" name="word" value="-1" />
</form>

<%@ include file="/page/kailiantail.jsp" %>
<script>
//${ctx}/kailian/KlShoppingCoachtime/updateStatus.do?pid=${t.id}&timestatus=-10
	$(document).ready(function(){
		$("#productid option[value='${param.productid}']").attr("selected", true);
	});
	
	function jujue(pid) {
		var reason=prompt("请输入拒绝的理由：");
          		if (reason == null || reason== "")
          		{
          			alert("请输入拒绝原因");
          			return;
          		}

				$('#word').val(reason);
				$('#pid').val(pid);
			   $('#form2').submit();
	}
</script>
</body>
</html>