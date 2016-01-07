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
<title>我的训练记录${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<script>
var host3 = "${ctx}";
</script>
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/member.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${ctx}/kindeditornew/themes/default/default.css" />
<script src="${ctx}/kindeditornew/kindeditor.js"></script>
<script src="${ctx}/kindeditornew/lang/zh_CN.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/comment.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery_scroll.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/date/My97DatePicker/WdatePicker.js"></script>

	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="${ctx}/fancy/lib/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="${ctx}/fancy/source/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/jquery.fancybox.css?v=2.1.5" media="screen" />

	<!-- Add Button helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
	<script type="text/javascript" src="${ctx}/fancy/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" />
	<script type="text/javascript" src="${ctx}/fancy/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

	<!-- Add Media helper (this is optional) -->
	<script type="text/javascript" src="${ctx}/fancy/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>


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
      <div class="memberTitle"><h1>训练记录</h1><a href="javascript:;" class="btn trainLayerA"><img src="${ctx}/image/nimg17_3.png" />写记录</a></div>
      <div class="pageBox">
      <!--pageBox-->
      <div class="train">
              <ul>
               <c:forEach var="v" items="${map.page.result}">
                <li style="">
                   <div class="imgDiv"><img src="${ctx}/${my:showHead(request,'user',v.userid)}" style="width:60px;height:60px;" /></div>
                   <h5><a href="">${v.username}</a><span>${my:transDate(v.createtimelong)}</span></h5>
                   <div class="content">${v.content}</div>
                   
                   	<c:if test="${v.addition ne null and v.addition ne ''}">
                   		<dl>
                   		<c:set value="${ fn:split(v.addition, ',') }" var="photos" />
                   		<c:forEach var="p" items="${photos}">
                   			<c:if test="${p ne ''}">
                   			<dd>
                   				<a class="fancybox-thumbs" data-fancybox-group="thumb" href="${ctx}/${p}">
                   				<img src="${ctx}/${p}" style='width:140px;height:93px;' />
                   				</a>
                   			</dd>
                   			</c:if>
                   		</c:forEach>
                   		 </dl>
                   	</c:if>
        
                  
                   <span class="clear_f"></span>
                </li>
               </c:forEach>
            </ul>
           <!--
            <div class="btn"><a href="">点击查看更多 >></a></div>
            -->
      </div>
      <!--pageBoxEnd-->
       ${my:drawpage(map.page, pageContext.request,  null)}
      </div>
</div>
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="orderLayer trainLayer">
<div class="bgT"></div>
<div class="bg">
      <h5>写记录<a href="javascript:;" class="close"></a></h5>
      <div class="form">
      <form id="form1" action="${ctx}/kailian/KlTrainningRecord/myrecords.do" method="post">
      	<input type="hidden" id="photos" name="photos" />
          <textarea name="content" cols="" rows=""></textarea>
          <div class="inputDiv">
              <span>添加图片：</span>
              <input type="text" class="input1" />
              <input id="photo_button" type="button" class="btn2" value="上传" />
          </div>
      </div>
      <div id="upphotos">

      </div>
      <div class="btnDiv"><input type="button" onclick="$('#photos').val(upedphotos.join(','));$('#form1').submit();" value="发 布" /></div>
     </form>
</div>
<div class="bgB"></div>
</div>

<%@ include file="/page/kailiantail.jsp" %>
<script>
KindEditor.ready(function(K) {
				var editor = K.editor({
					allowFileManager : true
				});
				
				
				K('#photo_button').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,
							clickFn : function(url, title, width, height, border, align) {
								//alert(url);
								uploaded(url);
								editor.hideDialog();
							}
						});
					});
				});
				
				
			});
			
			
			
		$('.fancybox-thumbs').fancybox({
				prevEffect : 'none',
				nextEffect : 'none',

				closeBtn  : false,
				arrows    : true,
				nextClick : true,

				helpers : {
					thumbs : {
						width  : 50,
						height : 50
					}
				}
			});	
			
</script>
</body>
</html>