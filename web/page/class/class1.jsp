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
<title>发布课程${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${ctx}/kindeditornew/themes/default/default.css" />
<script src="${ctx}/kindeditornew/kindeditor.js"></script>
<script src="${ctx}/kindeditornew/lang/zh_CN.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/date/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${ctx }/scripts/jquery-easyui/jquery.easyui.min.js"></script>

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
      <div class="memberTitle"><h1>课程发布-基本信息</h1></div>
      <div class="pageBox">
      <!--pageBox-->
      <div class="coursePublish">
             <div class="step"><img src="${ctx}/image/nimg682.png"/></div>
              <form id="form1" action="${ctx}/kailian/KlSellerProduct/class1.do" method="post">
             <div class="name">
             	<!-- 
                 <input id="name" name="name" type="text" value="<c:choose><c:when test="${param.value ne null}">${param.value}</c:when><c:otherwise>课程名称</c:otherwise></c:choose>" onclick="if($(this).val() == '课程名称') $(this).val('');" onblur="if($(this).val() == '') $(this).val('课程名称，据说越长越好哦');" title="" />
                 -->
                 <input id="name" name="name" type="text" value="${param.name}" placeholder="课程名称" />
                 <a href="" onmouseover="$('#tipcontent').html('请给您的产品起个名字吧。在此处填写您的产品名称标题，产品标题命名规则：品牌+品类+产品名称，如：XXX俱乐部 普拉提 一对一初级私教课程，一定要按照规则填写哦，否则审核很难通过的 (^o^)/~');" class="btn coursePublishA"><img src="${ctx}/image/nimg36.png"/></a>
                 <br/>
                 
             </div>
             <div class="form">
                
             		<input id="shopId" name="shopId" value="${map.shop.id}" type="hidden" />
                  <ul>
                    <li>
                        <em>副标题:</em>
                        <div class="input1"><input id="subname" name="subname" value="${param.subname}" type="text" /></div>
                        <div class="tips" onmouseover="$('#tipcontent').html('此处可以简短地描述您的产品，有助于让用户更好的了解您的产品哦。例如：国家专业级老师领课，零基础也可尽享普拉提魅力。');"><img class="coursePublishA" src="${ctx}/image/nimg21_3.png"/></div>
                       ${my:errordiv(map, 'subname')}
                    </li>
                    <li>
                        <em>价格:</em>
                        <div class="input1"><input id="price" name="price" value="${param.price}" type="text" class="easyui-numberbox" /></div>
                        <div class="tips" onmouseover="$('#tipcontent').html('给产品定个价吧！');"><img class="coursePublishA" src="${ctx}/image/nimg21_3.png"/>元</div>
                       ${my:errordiv(map, 'price')}
                    </li>
                    <!-- 
                    <li>
                        <em>课时:</em>
                        <div class="input1"><input id="classCount" name="classCount" value="${param.classCount}"  type="text" class="easyui-numberbox" /></div>
                        <div class="tips"><img class="coursePublishA" src="${ctx}/image/nimg21_3.png"/>节课</div>
                         ${my:errordiv(map, 'classCount')}
                    </li>
                     -->
                    <li>
                        <em>单课时时长:</em>
                        <div class="input1"><input id="ext8" name="ext8" value="${param.ext8}" class="" type="text"/>分钟</div>
                        <div class="tips"></div>
                         ${my:errordiv(map, 'ext8')}
                   </li>
                   <li>
                        <em>封面图片:</em>
                        <div class="input1"><input id="photo" name="photo" value="${param.photo}" type="text"/></div>
                        <div class="tips" onmouseover="$('#tipcontent').html('请给产品选一张漂亮的图片！一张好图片可以比的上千言万语哦！请记住一定要严格按照180*120的尺寸上传，否则图片会出现拉伸和扭曲哟！');"><img class="coursePublishA" src="${ctx}/image/nimg21_3.png"/></div>&nbsp;尺寸540*360
                         ${my:errordiv(map, 'photo')}
                   </li>
                   <!--
                   <li><a href="">添加图片</a></li>
                   -->
                   <li><input type="button" onclick="if ($('#name').val()== '' || $('#name').val()== '课程名称，据说越长越好哦' ) alert('请输入课程名称');else $('#form1').submit(); " class="btn2" value="下一步" />
                   		<c:if test="${map.re le 0}">
                   			<font color="red">${map.word}</font>
                   		</c:if>
                   		<br/>
                   		
                   </li>
           			  
                  </ul>
               		
             </div>
            </form>
           
      </div>
      <!--pageBoxEnd-->
      </div>
</div>

<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="pageLayer_1 coursePublishLayer">
<div class="bgT"></div>
<div class="bg">
      <div id="tipcontent" class="content">
对标案所填内容的说明文字对标案所填内容的说明文字对标案所填内容的说明文字对标案所填内容的说明文字对标案所填内容的说明文字对标案所填内容的说明文字对标案所填内
容的说明文字对标案所填内容的说明文字对标案所填内容的说明文字对标案所填内容的说明文字
      </div>
</div>
<div class="bgB"></div>
</div>

<%@ include file="/page/kailiantail.jsp" %>
<script>
KindEditor.ready(function(K) {
				var editor = K.editor({
					allowFileManager : true
				});
				
				
				K('#photo').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,
							imageUrl : K('#photo').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#photo').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				
				
				
				var classname = "KlSellerProduct";
		var paras = "price,classCount,perClassMinutes,photo,name";
		var pps = paras.split(",");
	
		for (var i = 0; i < pps.length; i ++ ) {
			$('#' + pps[i]).blur(function() {
				checkparam(classname, $(this).attr('id'));
			});
		}
				
				
			});
			
</script>
</body>
</html>