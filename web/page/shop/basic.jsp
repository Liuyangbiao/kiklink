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
<title>店铺基本信息${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/businesses.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<link rel="stylesheet" href="${ctx}/kindeditornew/themes/default/default.css" />
<link rel="stylesheet" href="${ctx}/kindeditornew/themes/default/businesses.css" />
<script src="${ctx}/kindeditornew/kindeditor.js"></script>
<script src="${ctx}/kindeditornew/lang/zh_CN.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>

<!-- Add jQuery library -->

	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="${ctx}/fancy/lib/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="${ctx}/fancy/source/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/jquery.fancybox.css?v=2.1.5" media="screen" />

	<!-- Add Button helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
	<script type="text/javascript" src="../source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="${ctx}/fancy/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" />
	<script type="text/javascript" src="../source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

	<!-- Add Media helper (this is optional) -->
	<script type="text/javascript" src="${ctx}/fancy/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>

	<script type="text/javascript">
	
		function dood() {
			alert(22);	
		}
	
		$(document).ready(function() {
			$("#fancybox-manual-b").click(function() {
				$.fancybox.open({
					href : '${ctx}/page/map.jsp',
					type : 'iframe',
					padding : 5
				});
			});
		});
		
		function useaddress(address, x, y	) {
			//$('#address').val(address);
			$('#mapx').val(x);
			$('#mapy').val(y);
		}
		
	</script>
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
      <div class="memberTitle"><h1>店铺管理 -  基本信息</h1></div>
      <div class="pageBox shop">
      <!--pageBox-->
      <form id="form1" action="${ctx}/kailian/KlSellerShop/basic.do" method="post">
      <div class="basic">
         
			<input id="id" name="id" value="${map.shop.id}" type="hidden" />
			<input id="mapx" name="mapx" value="${map.shop.mapx}" type="hidden" />
			<input id="mapy" name="mapy" value="${map.shop.mapy}" type="hidden" />
          <ul>
          		<li>
                  <h2>店名</h2>
                  <div class="input1 input3"><input name="shopName" id="shopName" value="${map.shop.shopName}" type="text" /></div>
                  <div class="clear_f"></div>
              </li>
           <script>
         		var editors = new Array();

         		var lth = editors.length;
         		editors[lth] = new Array();
         		editors[lth][0]='classtable';
         		
         		lth = editors.length;
         		editors[lth] = new Array();
         		editors[lth][0]='introduction';
         		
         		KindEditor.ready(function(K) {
         			editors[0][1] = K.create('textarea[name="classtable"]', 
         				{allowFileManager : true,uploadJson : '${ctx}/kindeditornew/jsp/upload_json2.jsp',fileManagerJson : '${ctx}/kindeditornew/jsp/file_manager_json.jsp'
         			});
         			editors[1][1] = K.create('textarea[name="introduction"]', 
         				{allowFileManager : true,uploadJson : '${ctx}/kindeditornew/jsp/upload_json2.jsp',fileManagerJson : '${ctx}/kindeditornew/jsp/file_manager_json.jsp'
         			});
         		});
         	
         		function doeditors() {
	for (var i = 0; i < editors.length; i ++) {
		var name = editors[i][0];
		var edt = editors[i][1];

		$('#' + name).text(edt.html());
	}
	return true;
}
         	
         	</script>
              <li>
                 <h2>商家介绍</h2>
                 <!-- 
                 <textarea id="introduction" name="introduction" cols="" rows="">${map.shop.introduction}</textarea>
                  -->
                  <textarea style="height:300px;" id="introduction" name="introduction" cols="" rows="">${map.shop.introduction}</textarea>
              </li>
              <!-- 
              <li>
                 <h2>服务人群</h2>
                 <textarea id="customtype" name="customtype" cols="" rows="">${map.shop.customtype}</textarea>
              </li>
               -->
               <li>
                 <h2>课表</h2>
                 <textarea style="height:200px;" id="classtable" name="classtable" cols="" rows="">${map.shop.classtable}</textarea>
              </li>
              <!--
              <li>
                 <h2>配套服务</h2>
                 <div class="input1"><input id="moreservice" name="moreservice" type="text" value="游泳|健身|跑步"/>${map.shop.moreservice}</div>
                 <div class="msg">该项目需要单独付费，需在项目前面增加 "￥|"</div>
              </li>
			-->
				<li>
                  <h2>详细地址</h2>
                  <div class="input1 input3"><input name="address" id="address" value="${map.shop.address}" type="text" /></div>
                  <input id="fancybox-manual-b" type="button" class="btn2" value="地 图..." />
                  <div class="clear_f"></div>
              </li>
              <li>
                  <h2>交通方式</h2>
                  <div class="input1 input3"><input name="ext9" id="ext9" value="${map.shop.ext9}" type="text" /></div>
                  <div class="clear_f"></div>
              </li>
              <li>
                  <h2>商家客服电话</h2>
                  <div class="input1 input3"><input name="phoneno" id="phoneno" value="${map.shop.phoneno}" type="text" /></div>
                  <div class="clear_f"></div>
              </li>
              <li>
                  <h2>电子邮箱</h2>
                  <div class="input1 input3"><input name="email" id="email" value="${map.shop.email}" type="text" /></div>
                  <div class="clear_f"></div>
              </li>
              <!--
              <li>
                  <h2>分店</h2>
                  <div class="input1 input2" style="margin-right:15px;"><input type="text" value="店名" /></div>
                  <div class="input1 input2"><input type="text" value="链接地址" /></div>
                  <div class="clear_f"></div>
                  <div class="msg"><a href="">添加更多分店</a></div>
              </li>
              -->
              <li>
                  <h2>店铺logo</h2>
                  <div class="input1 input3"><input type="text" name="logo" id="logo" value="${map.shop.logo}" /></div>
                  <input id="logobutton" type="button" class="btn2" value="浏 览..." />&nbsp;尺寸:200*200
                  <div class="clear_f"></div>
                  
              </li>
              <li>
                  <h2>微博二维码</h2>
                  <div class="input1 input3"><input type="text" name="weiboimg" id="weiboimg" value="${map.shop.weiboimg}" /></div>
                  <input id="weiboimgbutton" type="button" class="btn2" value="浏 览..." />&nbsp;尺寸:200*200
                  <div class="clear_f"></div>
                  
              </li>
              <li>
                  <h2>微信二维码</h2>
                  <div class="input1 input3"><input type="text" name="weixinimg" id="weixinimg" value="${map.shop.weixinimg}" /></div>
                  <input id="weixinimgbutton" type="button" class="btn2" value="浏 览..." />&nbsp;尺寸:200*200
                  <div class="clear_f"></div>
                  
              </li>
             </ul>
       </div>
      
      <%@ include file="/page/fuwusheshi.jsp" %>
      <div class="basic">
      	<ul>
      			<li>
                  <h2>其他免费设施</h2>
                  <div class="input1 input3"><input name="ext6" id="ext6" value="${map.shop.ext6}" type="text" placeholder="多个设施用逗号分隔" /></div>
                  <div class="clear_f"></div>
              </li>
              
               <li>
                  <h2>其他收费设施</h2>
                  <div class="input1 input3"><input name="ext7" id="ext7" value="${map.shop.ext7}" type="text" placeholder="多个设施用逗号分隔" /></div>
                  <div class="clear_f"></div>
              </li>
       	</ul>
       	
       <div class="basic">
              <li><input type="submit" class="btn1" value="提 交" />&nbsp;&nbsp;
              	<font color="red"><c:if test="${map.re eq 2}">${map.word}</c:if></font>
              </li>
           </ul>
           </div>
      </div>
      </form>
      <!--pageBoxEnd-->
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


<%@ include file="/page/kailiantail.jsp" %>


<script>
KindEditor.ready(function(K) {
				var editor = K.editor({
					allowFileManager : true
				});
				
				
				K('#weiboimgbutton').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,
							imageUrl : K('#resource').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#weiboimg').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				
				
				K('#weixinimgbutton').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,
							imageUrl : K('#resource').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#weixinimg').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				
				K('#logobutton').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,
							imageUrl : K('#resource').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#logo').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				
				
			});
			
</script>

</body>
</html>