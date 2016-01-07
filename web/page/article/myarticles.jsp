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
<title>开练网</title>
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
<form id="form1" action="${ctx}/kailian/CmsArticle/myArticles.do" method="post">
      <div class="memberTitle"><h1>教程管理</h1><a href="${ctx}/kailian/CmsArticle/preArticle.do" class="btn"><img src="${ctx}/image/limg16.png" />发布教程</a></div>
      <div class="pageBox">
      <!--pageBox-->
      <div class="myCourse">
      	 
      
            <ul>
              <li><input type="text" class="input1 input3" id="title" name="title" placeholder="标题" value="${my:setvalue(param.title,'')}" /></li>
              <li><input type="text" id="startd" name="startd" class="input1 input2" value="${my:setvalue(param.startd,'开始时间')}" onClick="WdatePicker()" /></li>
              <li><span>至</span></li>
              <li><input type="text" id="endd" name="endd" class="input1 input2"  value="${my:setvalue(param.endd,'结束时间')}" onClick="WdatePicker()" /></li>
              <li class="liBtn"><input type="button" onclick="subit();" class="btn1" value="搜索" /></li>
            </ul>
          
      </div>
      <div class="TutorialsTable">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
      <c:forEach var="v" items="${map.page.result}">
        <tr>
          <td width="597">
              <div class="name"><input type="checkbox" class="checkbox" name="delids" value="${v.id}" /><a href="">${v.titile}</a></div>
          </td>
          <td width="108">${my:transDate(v.createtimelong)}</td>
          <td><a href="${ctx}/kailian/CmsArticle/preArticle.do?id=${v.id}">编辑</a>
          <a href="${ctx}/kailian/CmsArticle/myArticles.do?delid=${v.id}">删除</a></td>
        </tr>
       </c:forEach>
   
        
      </table>
      <div class="pageNum">
          <div class="fl"><a href="" class="btn" onclick="subit();">删　除</a></div>
          <div class="fr">
           ${my:drawpage(map.page, pageContext.request,  null)}
          </div>
      </div>
      </div>
      <!--pageBoxEnd-->
      </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="pageLayer lyLayer">
<div class="bgT"></div>
<div class="bg">
      <h5>用户的留言内容<a href="javascript:;" class="close"></a></h5>
      <div class="content">
　　用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息，用户留言内容文字信息。
      </div>
</div>
<div class="bgB"></div>
</div>

<div class="pageLayer pageLayer2 orderLayer5">
<div class="bgT"></div>

<div class="bgB"></div>
 </form>
</div>

<%@ include file="/page/kailiantail.jsp" %>

</body>
<script>
	function subit() {
		//alert(1);
		if ($('#title').val() == '标题')
			$('#title').val('');
		if ($('#startd').val() == '开始时间')
			$('#startd').val('');
		if ($('#endd').val() == '结束时间')
			$('#endd').val('');
			
		$('#form1').submit();
	}
</script>
</html>