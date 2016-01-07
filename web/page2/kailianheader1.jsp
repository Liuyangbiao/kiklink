<%@ page contentType="text/html;charset=UTF-8" %>
<%
	request.setAttribute("loginuser", request.getSession().getAttribute("user"));
	request.setAttribute("vEnter", "\n");
%>
 <script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=2637237141" type="text/javascript" charset="utf-8"></script>
 
<script type="text/javascript"
src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="101141533" data-redirecturi="${ctx}/kailian/CmsUserInfo/prelogin.do" charset="utf-8"></script>
<nav class="navbar navbar-fixed-top">
			<div class="container">
				<span class="welcome"><c:if test="${loginuser.username ne null}">
      	<font id="usersname"></font>
      </c:if>欢迎来到开练网，先逛逛吧～</span>
				<span class="login-reg"> <i class="icon-32 icon-hi">&nbsp;</i> 
					<a id="li_login" href="${ctx}/kailian/CmsUserInfo/prelogin.do">请登录</a>
					 <i id="split1" class="split">|</i> 
					 <a id="li_reg" href="${ctx}/kailian/CmsUserInfo/preregist.do">快速注册</a> 
					 
					 <a id="qq_logout" style="display:none;" href="#1" onclick="QC.Login.signOut();">退出登录</a>
            <a id="weibo_logout" style="" href="#2" onclick="weibologout();">退出登录</a>
            <a id="li_logout" style="" href="${ctx}/kailian/CmsUserInfo/logout.do">退出登陆</a>
            <i id="split2" style="" class="split">|</i> 
            <a id="li_uc" style="" href="${ctx}/kailian/KlShoppingShoppingcartproduct/userindex.do">用户中心</a>
					 
					
					 
					 
					 </span>
				<span class="nav-r pull-right"> <a href="${ctx}//kailian/KlShoppingShoppingcartproduct/shopuserindex.do?center=center">卖家中心</a> <i class="split">|</i> 
<a href="${ctx}/kailian/KlSellerCard/siteIndex.do">开练卡</a> <i class="split">|</i>
				<a href="${ctx}/page/help.jsp?name=fuwuzhongxin">客服中心</a> <i class="split">|</i> <i class="icon-32 icon-fav">&nbsp;</i> <a href="javascript:addBookmark();">收藏开练</a> <i class="split">|</i> <i class="icon-32 icon-tel">&nbsp;</i> <a class="tel" href="#">400-0620600</a> </span>
			</div>
		</nav>
		<header>
			<div class="container head-wrap">
				<div class="row">
					<div class="col-logo">
						<a href="${ctx}/index.html"><img src="${ctx}/page2/images/logo.png" /></a>
					</div>

					<div class="col-search">
						<div class="col-search-wrap">
							<div class="search-tab clearfix">
								<ul>
									<li class="active" onclick="$('#stype').val(1);">
										课程
									</li>
									<li onclick="$('#stype').val(2);">
										店铺
									</li>
								</ul>
							</div>
							<div class="search-box">
								<form action="${ctx}/kailian/KlSellerProduct/search.do">
								<input type="hidden" name="stype" id="stype" value="" />
								<div class="search-button">
									<button class="btn-search" type="submit"></button>
								</div>
								<input class="search-input-text" placeholder="瑜伽" type="text" name="name" autocomplete="off">
								</input>
								</form>
							</div>
							<div class="search-hotword">
								<a href="${ctx}/kailian/KlSellerProduct/search.do?stype=&name=健身">健身</a>
								<i class="icon-16 icon-split"></i>
								<a href="${ctx}/kailian/KlSellerProduct/search.do?stype=&name=健美">健美</a>
								<i class="icon-16 icon-split"></i>
								<a href="${ctx}/kailian/KlSellerProduct/search.do?stype=&name=瑜伽">瑜伽</a>
								<i class="icon-16 icon-split"></i>
								<a href="${ctx}/kailian/KlSellerProduct/search.do?stype=&name=儿童">儿童</a>
								<i class="icon-16 icon-split"></i>
								<a href="${ctx}/kailian/KlSellerProduct/search.do?stype=&name=攀岩">攀岩</a>
								<i class="icon-16 icon-split"></i>
								<a href="${ctx}/kailian/KlSellerProduct/search.do?stype=&name=摩托">摩托</a>
								<i class="icon-16 icon-split"></i>
								<a href="${ctx}/kailian/KlSellerProduct/search.do?stype=&name=格斗">格斗</a>
								<i class="icon-16 icon-split"></i>
								<a href="${ctx}/kailian/KlSellerProduct/search.do?stype=&name=拳击">拳击</a>
								<i class="icon-16 icon-split"></i>
								<a href="${ctx}/kailian/KlSellerProduct/search.do?stype=&name=巴西柔术">巴西柔术</a>
								<i class="icon-16 icon-split"></i>
								<a href="${ctx}/kailian/KlSellerProduct/search.do?stype=&name=" class="more">更多</a>
							</div>
						</div>
					</div>
					<div class="col-right">
						<a href="${ctx}/kailian/KlSellerProduct/map.do" class="map-search pull-left">地图检索</a>
						<div class="cart-wrap pull-right">
							
							<i class="icon-32 icon-cart icon-cart-full"></i>
							<span class="label">2</span>
							<p style="cursor:pointer;" onclick="window.location.href='${ctx}/kailian/KlShoppingShoppingcartproduct/shopCar.do';">
								去购物车结算<i class="icon-32 icon-down"></i>
							</p>
							<div class="cart-dialog full">
								<i class="topicon"></i>
								<div id="gouwuche">
				
								</div>
								<div class="btn-group" id="zongjia1">
									<dl>
										<dt>总价：</dt>
										<dd><span class="price" id="zongjia"></span></dd>
									</dl>
									<a class="btn" href="${ctx}/kailian/KlShoppingShoppingcartproduct/shopCar.do">去结算</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<c:if test="${map.topic.ext1 ne null}">
			<div class="banner" style="cursor:pointer;" onclick="window.open('${map.topic.ext1}','_blank');">
				<img src="${ctx}/${map.topic.headimg}" />
			</div>
				</c:if>

			</div>
		</header>
		<script>
//获取购物车内容
 var gotorders = 0;
 
 $(function() {
 	//alert(2);
 	 $('#qq_logout').hide();
					 $('#weibo_logout').hide();
					 $('#li_logout').hide();
					 $('#li_uc').hide();
					  $('#split2').hide();
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
            			if (productName.length > 10 )
            				productName = productName.substring(0,10) + "...";
            			var pid = o['productid'];
            			var perPrice = o['perPrice'];
            			var count = o['count'];
            			var lid = o['id'];
            			
            			if (i < data['products'].length - 1)
            				cont +=  "<dl><dt>" + productName + "</dt><dd><span class='price'>¥" + perPrice + "</span><b>×</b>" + count + "</dd></dl>";
            			else 
            				cont +=  "<dl class='last'><dt>" + productName + "</dt><dd><span class='price'>¥" + perPrice + "</span><b>×</b>" + count + "</dd></dl>";
            			/*
            			 <dl><dt>张岳鹏双人瑜伽[普拉提]</dt><dd><span class="price">¥120</span><b>×</b>2</dd></dl>
            			 */
            			//cont = cont + "<li><div class=\"imgDiv\"><a href=\"${ctx}/kailian/KlSellerProduct/index.do?id=" + pid + "\"><img style='width:77px;height:52px;' src=\"${ctx}/" + photo + "\"/></a></div><div class=\"name\"><a href=\"${ctx}/kailian/KlSellerProduct/index.do?id=" + pid + "\">" + productName + "</a></div><div class=\"content\">" + des + "</div>";
            			//cont = cont + "<div class=\"red price\">￥" + perPrice + "元/节*" + count + "</div><a href=\"${ctx}/kailian/KlShoppingShoppingcartproduct/shopCar.do?delids=" + lid + "\" class=\"blue btn\">[删除]</a></li>";
            			total = perPrice * count + total;
            			
            		
            		}
            		$('#zongjia').html("￥" + total);
            		$('#gouwuche').html(cont);
            		
            	}
            	else {
            		var cont =  "<dl class='last'><dt>" + "暂无商品" + "</dt><dd><span class='price'></span><b></b>" +"</dd></dl>";
            		$('#zongjia').html("￥" + '0');
            		$('#gouwuche').html(cont);
            	}
            	
            	//alert(data['re']);
            	if (data['re'] > 0) {
            	var usersname = data['user'];
            		if (usersname != null && usersname != undefined)
            		{
            			usersname = usersname['username'];
            			$('#usersname').html(usersname + ",");
            		}
            		var thirdType = data['thirdType'];
            		$('#li_login').hide();
            		$('#li_reg').hide();
            		$('#split1').hide();
            		$('#split2').show();
            		//alert(11);
            		$('#li_uc').show();;
            		if (thirdType == 'qq' || thirdType == 'tencent') {
            			$('#qq_logout').show();	
            		}
            		else if (thirdType == 'weibo') {
            			$('#weibo_logout').show();	
            		}
            		else {
            			$('#li_logout').show();	
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
					window.location.href='${ctx}/kailian/KlShoppingShoppingcartproduct/userindex.do#323';
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
	window.location.href='${ctx}/kailian/KlShoppingShoppingcartproduct/userindex.do';
}

</script>
