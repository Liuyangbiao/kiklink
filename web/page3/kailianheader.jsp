<%@ page contentType="text/html;charset=UTF-8" %>
<%
	request.setAttribute("loginuser", request.getSession().getAttribute("user"));
	request.setAttribute("vEnter", "\n");
%>
<!-- 
 <script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=2637237141" type="text/javascript" charset="utf-8"></script>
 
<script type="text/javascript"
src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="101141533" data-redirecturi="${ctx}/kailian/CmsUserInfo/prelogin.do" charset="utf-8"></script>
 -->
<div class="topDiv">
<div class="wal">
      <div class="fl">
      <c:if test="${loginuser.username ne null}">
      	<a href="${ctx}/kailian/KlShoppingShoppingcartproduct/userindex.do">${loginuser.username}</a>&nbsp;,
      </c:if>
      欢迎来到开练网
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${ctx}//kailian/KlShoppingShoppingcartproduct/shopuserindex.do?center=center">卖家中心</a>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${ctx}/kailian/KlSellerCard/siteIndex.do">开练卡</a>

      </div>
      <div class="fr btn">
         <ul>
           <li><a href="http://weibo.com/u/5221004039" target="_blank"><img src="${ctx}/image/topBtn1.gif"/></a></li>
         <!--   
           <li><a href="http://weibo.com/u/5221004039" target="_blank"><img src="${ctx}/image/topBtn2.gif"/></a></li>
          -->
         </ul>
      </div>
      <div class="fr list">
          <ul>
          	<li id="li_login"><a href="${ctx}/kailian/CmsUserInfo/prelogin.do">立即登录</a></li>
            <li id="li_reg"><a href="${ctx}/kailian/CmsUserInfo/preregist.do">注册账号</a></li>
            <li id="qq_logout" style="display:none;"><a href="#1" onclick="QC.Login.signOut();">退出登录</a></li>
            <li id="weibo_logout" style="display:none;"><a href="#2" onclick="weibologout();">退出登录</a></li>
            <li id="li_logout" style="display:none;"><a href="${ctx}/kailian/CmsUserInfo/logout.do">退出登陆</a></li>
            <li id="li_uc" style="display:none;"><a href="${ctx}/kailian/KlShoppingShoppingcartproduct/userindex.do">用户中心</a></li>

            <li><a href="${ctx}/page/help.jsp?name=fuwuzhongxin">客服中心</a></li>
            <li><a href="javascript:addBookmark();">收藏开练<img src="${ctx}/image/nimg15.png"/></a></li>
          </ul>
      </div>
</div>
</div>
<!---->
<div class="headDiv">
<div class="wal">
      <a href="${ctx}/index.html" class="logo"><img src="${ctx}/image/logo.png"/></a>
      <div class="topSearch">
      	<form action="${ctx}/kailian/KlSellerProduct/search.do" target="_blank">
            <div id="stypediv">
				<c:choose>
					<c:when test="${param.stype eq 2}">搜店铺</c:when>
					<c:when test="${param.stype eq 3}">搜教程</c:when>
					<c:otherwise>搜课程</c:otherwise>
				</c:choose>
			</div>
            <input type="hidden" name="stype" id="stype" value="${param.stype}" />
            <input type="text" name="name" class="input1" value="${map.name}" />
            <input type="submit" class="btn1" value="搜索" />
         </form>
      </div>
      <a href="${ctx}/kailian/KlSellerProduct/map.do" class="mapA">地图搜索</a>
      <div class="btnDiv">
          <ul>
            <li><a href="${ctx}/kailian/KlShoppingShoppingcartproduct/userindex.do"><img src="${ctx}/image/nimg20_1.gif"/>我的开练</a></li>
            <li><a href="${ctx}/kailian/KlShoppingShoppingcartproduct/shopCar.do" class="topCartLayerA" onmouseover=""><img src="${ctx}/image/nimg20_2.gif"/>去购物车结算</a></li>
          </ul>
      </div>
      <div class="num" id="ordernum"></div>
</div>
</div>
<div class="topSearchLayer">
        <ul>
          <li><a href="#" onclick="$('#stypediv').html('搜课程');$('#stype').val(1);$('.topSearchLayer').hide();">搜课程</a></li>
          <li><a href="#" onclick="$('#stypediv').html('搜店铺');$('#stype').val(2);$('.topSearchLayer').hide();">搜店铺</a></li>
          <!--
          	<li><a href="#" onclick="$('#stypediv').html('搜教程');$('#stype').val(3);$('.topSearchLayer').hide();">搜教程</a></li>
          -->
        </ul>
</div>
<div class="topCartLayer">
<div class="bgT"></div>
<div class="bg">
      <h5>购物车</h5>
      <div class="list">
            <ul id="tul">
            <!-- 
              <li>
                   <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg77.jpg"/></a></div>
                   <div class="name"><a href="">游泳培训提高班一对多</a></div>
                   <div class="content">
                   简单介绍阐述文字，简单介绍阐述文字，简单介绍阐述文字...
                   </div>
                   <div class="red price">￥100元/节*2</div>
                   <a href="" class="blue btn">[删除]</a>
              </li>
              <li><div class=\"imgDiv\"><a href=\"\"><img src=\"${ctx}/image/nimg77.jpg\"/></a></div><div class=\"name\"><a href=\"\">游泳培训提高班一对多</a></div><div class=\"content\">简单介绍阐述文字，简单介绍阐述文字，简单介绍阐述文字...</div>
                   <div class=\"red price\">￥100元/节*2</div><a href=\"\" class=\"blue btn\">[删除]</a></li>
             -->
            </ul>
      </div>
      <div class="btnDiv"><a href="${ctx}/kailian/KlShoppingShoppingcartproduct/shopCar.do">去结算</a></div>
</div>
<div class="bgB"></div>
</div>
<script>
//获取购物车内容
 var gotorders = 0;
 
 $(function() {
 	$('#ordernum').hide();
 	getorders();
 })
 
 
function getorders() {
if (gotorders > 0)
return;
gotorders =1;
	$.ajax({
            type: 'POST',
            url: '${ctx}/kailian/KlShoppingShoppingcartproduct/shopCar.do?ajax=ajax',
            dataType: 'json',
            data: {
            
            },
            success: function (data) {
            	if (data['re'] > 0 && data['products'].length > 0) {
            		var cont = "";
            		var total = 0;
            		for (var i = 0; i < data['products'].length; i ++) {
            			var o = data['products'][i];
            			var photo = o['ext5'];
            			var des = o['addition'];
            			if (des == undefined)
            				des = '';
            			var shopName = o['shopName'];
            			var productName = o['productName'];
            			var pid = o['productid'];
            			var perPrice = o['perPrice'];
            			var count = o['count'];
            			var lid = o['id'];
            			
            			cont = cont + "<li><div class=\"imgDiv\"><a href=\"${ctx}/kailian/KlSellerProduct/index.do?id=" + pid + "\"><img style='width:77px;height:52px;' src=\"${ctx}/" + photo + "\"/></a></div><div class=\"name\"><a href=\"${ctx}/kailian/KlSellerProduct/index.do?id=" + pid + "\">" + productName + "</a></div><div class=\"content\">" + des + "</div>";
            			cont = cont + "<div class=\"red price\">￥" + perPrice + "元/节*" + count + "</div><a href=\"${ctx}/kailian/KlShoppingShoppingcartproduct/shopCar.do?delids=" + lid + "\" class=\"blue btn\">[删除]</a></li>";
            			total = perPrice * count + total;
            		
            		
            		}
            		$('#tul').html(cont);
            		$('#ordernum').show().html(data['products'].length);
            		
            	}
            	
            	//alert(data['thirdType']);
            	if (data['re'] > 0) {
            		var thirdType = data['thirdType'];
            		$('#li_login').hide();
            		$('#li_reg').hide();
            		$('#li_uc').css('display','block');
            		if (thirdType == 'qq' || thirdType == 'tencent') {
            			$('#qq_logout').css('display','block');	
            		}
            		else if (thirdType == 'weibo') {
            			$('#weibo_logout').css('display','block');	
            		}
            		else {
            			$('#li_logout').css('display','block');	
            		}
            	}
            }
           });
}


function addBookmark(){
    var ctrl = (navigator.userAgent.toLowerCase()).indexOf('mac') != -1 ? 'Command/Cmd': 'CTRL';
    try{
        if (document.all) { //IE类浏览器
            try {
                window.external.toString(); //360浏览器不支持window.external，无法收藏
                window.alert("国内开发的360浏览器等不支持主动加入收藏。\n您可以尝试通过浏览器菜单栏 或快捷键 ctrl+D 试试。");
            }
            catch (e){
                try{
                    window.external.addFavorite(window.location, document.title);
                }
                catch (e){
                    window.external.addToFavoritesBar(window.location, document.title);  //IE8
                }
            }
        }
        else if (window.sidebar) { //firfox等浏览器
            window.sidebar.addPanel(document.title, window.location, "");
        }
        else {
            alert('您可以尝试通过快捷键' + ctrl + ' + D 加入到收藏夹~');
        }
    }
    catch (e){
        window.alert("因为IE浏览器存在bug，添加收藏失败！\n解决办法：在注册表中查找\n HKEY_CLASSES_ROOT\\TypeLib\\{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}\\1.1\\0\\win32 \n将 C:\\WINDOWS\\system32\\shdocvw.dll 改为 C:\\WINDOWS\\system32\\ieframe.dll ");
    }
}




</script>


<script type="text/javascript">
	function weibologout() {
		
		if (WB2.checkLogin()) {
			WB2.logout(function() {
		//		alert(2);
				window.location.href="${ctx}/kailian/CmsUserInfo/logout.do";
			}
			);
		}
		else {
			window.location.href="${ctx}/kailian/CmsUserInfo/logout.do";
		}
		
	}
	
	function selfwblogin() {
		WB2.login(function(o) {
    		alert(o);
    	});
	}

	function wblogin(o) {
		//alert(22);
		var openId = o.idstr;				
		$.ajax({
            type: 'POST',
            url: '${ctx}/kailian/CmsUserInfo/third.do',
            data: {
               thirdType:'weibo',
               openid:openId,
               username:o.screen_name,
               ajax:'ajax'
            },
            success: function (data) {
            	//alert(data['word']);
				if (data['re'] > 0) {
					window.location.href='${ctx}/kailian/KlShoppingShoppingcartproduct/userindex.do?ll=ll';
				}
				else {
					alert(data['word']);
				}
            },
            dataType: 'json'
        });
	}
	
	   //调用QC.Login方法，指定btnId参数将按钮绑定在容器节点中
   QC.Login({
       //btnId：插入按钮的节点id，必选
       btnId:"qqLoginBtn",    
       //用户需要确认的scope授权项，可选，默认all
       scope:"all",
       //按钮尺寸，可用值[A_XL| A_L| A_M| A_S|  B_M| B_S| C_S]，可选，默认B_S
       size: "A_S"
   }, function(reqData, opts){//登录成功
   		//alert(reqData.nickname);
   		var sex1 = "女" == reqData.gender ? "2" : "1";
   		<c:if test="${loginuser eq null}">
   		QC.Login.getMe(function(openId, accessToken){
       		$.ajax({
            type: 'POST',
            url: '${ctx}/kailian/CmsUserInfo/third.do',
            data: {
               thirdType:'qq',
               openid:openId,
               username:reqData.nickname,
               sex:sex1,
               ajax:'ajax'
            },
            success: function (data) {
            	//alert(data['word']);
				if (data['re'] > 0) {
					window.opener.jumpindex();
					//window.location.href='${ctx}/kailian/KlShoppingShoppingcartproduct/userindex.do';
				}
				else {
					alert(data['word']);
				}
            },
            dataType: 'json'
        });
       })
   	</c:if>
   
       //根据返回数据，更换按钮显示状态方法
       /*
       var dom = document.getElementById(opts['btnId']),
       _logoutTemplate=[
            //头像
            '<span><img src="{figureurl}" class="{size_key}"/></span>',
            //昵称
            '<span>{nickname}</span>',
            //退出
            '<span><a href="javascript:QC.Login.signOut();">退出</a></span>'    
       ].join("");
       dom && (dom.innerHTML = QC.String.format(_logoutTemplate, {
           nickname : QC.String.escHTML(reqData.nickname), //做xss过滤
           figureurl : reqData.figureurl
       }));
       */
   }, function(opts){//注销成功
         //alert('QQ登录 注销成功');
         window.location.href="${ctx}/kailian/CmsUserInfo/logout.do";
   }
);


function jumpindex() {
	window.location.href='${ctx}/kailian/KlShoppingShoppingcartproduct/userindex.do?ll=ll';
}

</script>

<!---->
<!--
<div class="nav">
<div class="wal">
      <ul>
         <li><a <c:if test="${param.cid eq 0 or param.cid eq null and map.product eq null and map.shop eq null}">class="aNow"</c:if> href="${ctx}/index.html">首页</a></li>
         <li><a <c:if test="${param.cid eq 10 or map.product.categoryid eq 10}">class="aNow"</c:if> href="${ctx}/channel_10.html">球类</a></li>
         <li><a <c:if test="${param.cid eq 20 or map.product.categoryid eq 20}">class="aNow"</c:if> href="${ctx}/channel_20.html" class="sNavA">健身瑜伽</a></li>
         <li><a <c:if test="${param.cid eq 30 or map.product.categoryid eq 30}">class="aNow"</c:if> href="${ctx}/channel_30.html">运动恢复</a></li>
         <li><a <c:if test="${param.cid eq 40 or map.product.categoryid eq 40}">class="aNow"</c:if> href="${ctx}/channel_40.html">水上/冰上 </a></li>
         <li><a <c:if test="${param.cid eq 50 or map.product.categoryid eq 50}">class="aNow"</c:if> href="${ctx}/channel_50.html">极限/户外</a></li>
         <li><a <c:if test="${param.cid eq 60 or map.product.categoryid eq 60}">class="aNow"</c:if> href="${ctx}/channel_60.html">舞蹈</a></li>
         <li><a <c:if test="${param.cid eq 70 or map.product.categoryid eq 70}">class="aNow"</c:if> href="${ctx}/channel_70.html">射击/搏击/格斗</a></li>
      </ul>
      <div class="tel"><img src="${ctx}/image/navTel.png" /></div>
</div>
</div>
-->
<!--顶部end-->