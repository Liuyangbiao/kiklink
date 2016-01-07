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
<title>开练卡${my:config('title后缀','--开练网')}</title>
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/page1.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<!--[if lte IE 6]>
<script src="${ctx}/script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
<style type="text/css">
body{background:#f6f5f3;}
.jianBtn {
	cursor:pointer;border:0px solid blue;position:absolute;left:1px;width:15px;height:20px;
}
.jiaBtn {
	cursor:pointer;border:0px solid blue;position:absolute;left:70px;width:15px;height:20px;
}
.thenuminput {
	margin-left:15px;border:0px solid green;
}
</style>
</head>

<body>
<div class="selectLayer">
  <ul></ul>
</div>
<%@ include file="/page/kailianheader.jsp" %>

<!--顶部end-->
<!-- 
<div class="sideBar">
      <ul>
        <li><a href="#"></a></li>
        <li><a href="#"></a></li>
        <li><a href="#"></a></li>
      </ul>
</div>
 -->
<div class="h25"></div>
<div class="wal">
<!--wal-->
<div class="pageBox card2Part1" style="border-top:0px;">
      <h1>电子开练卡</h1>
      <div class="imgDiv"><img src="${ctx}/image/nimg232.png"/></div>
      <div class="bgT">
      <div class="table">
          <table width="100%" border="0" cellpadding="0" cellspacing="0">
          	<tr align="left">
          		<td width="66"></td>
          		<td width="252">卡名</td>
          		<td width="152">价格(元)</td>
          		<td colspan="2"></td>
          	</tr>
              <c:forEach var="v" items="${pg.result}" varStatus="vs">
	              <tr>
	                <td width="66"><div class="num">0${vs.index+1}</div></td>
	                <td width="252">${v.cardName }</td>
	                <td width="152"><b>${v.price}</b></td>
	                <td width="69">我要买：</td>
	                <td>
	                 	<div class="inputDiv numInput" style="position:relative;">
	             			<span class="jianBtn" onmouseup="ar[${vs.index}] = [${v.price}, (parseInt($('#countt${vs.index}').val())-1)];paramArray[${vs.index }]=[${v.id },(parseInt($('#countt${vs.index}').val())-1)];countMoney();" style=""></span>
	             			<input class="thenuminput" onkeydown="jianQian(this)" onkeyup="calPri(this, false);" type="text" pri="${v.price }" id="countt${vs.index}" name="name33" value="0" style="" />
	            			<span class="jiaBtn" onmouseup="ar[${vs.index}] = [${v.price}, (parseInt($('#countt${vs.index}').val())+1)];paramArray[${vs.index }]=[${v.id },(parseInt($('#countt${vs.index}').val())+1)];countMoney();" style="">&nbsp;&nbsp;&nbsp;</span>
	             		</div>
	                </td>
	              </tr>
             </c:forEach>
            
            </table>
            <div class="btnDiv" style="height:100px;">
               <i>总计：</i><input type="text" id="zongji" class="input2" readonly="readonly" value="0" /><i>元</i>
               <input type="botton" class="btn1" value="去结算" onclick="jiesuan();" />
            </div>
      </div>
      <div class="bgB"></div>
      </div>
</div>
<div class="h10"></div>
<!--
<div class="tab cardTab">
         <h1>实体开练卡</h1>
         <ul>
           <li class="liNow">经典卡</li>
           <li>现代庆典卡</li>
           <li>传统庆典卡</li>
           <li>爱情亲情卡</li>
           <li>致敬卡</li>
           <li>时尚欢乐卡</li>
         </ul>
</div>
<div class="pageBox tabContentDiv" style="border-top:0px;">
          <div class="tabContent card2List">
                <ul>
                   <li>
                      <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg119_1.jpg"/></a></div>
                      <h2><span>开练卡: </span>￥200.00</h2>
                      <div class="inputDiv"><span></span><input type="text" /><span></span></div>
                   </li>
                   <li>
                      <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg119_2.jpg"/></a></div>
                      <h2><span>开练卡: </span>￥500.00</h2>
                      <div class="inputDiv"><span></span><input type="text" /><span></span></div>
                   </li>
                   <li>
                      <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg119_3.jpg"/></a></div>
                      <h2><span>开练卡: </span>￥800.00</h2>
                      <div class="inputDiv"><span></span><input type="text" /><span></span></div>
                   </li>
                   <li>
                      <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg119_4.jpg"/></a></div>
                      <h2><span>开练卡: </span>￥1000.00</h2>
                      <div class="inputDiv"><span></span><input type="text" /><span></span></div>
                   </li>
                   <li>
                      <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg119_5.jpg"/></a></div>
                      <h2><span>开练卡: </span>￥200.00</h2>
                      <div class="inputDiv"><span></span><input type="text" /><span></span></div>
                   </li>
                   <li>
                      <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg119_6.jpg"/></a></div>
                      <h2><span>开练卡: </span>￥500.00</h2>
                      <div class="inputDiv"><span></span><input type="text" /><span></span></div>
                   </li>
                   <li>
                      <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg119_1.jpg"/></a></div>
                      <h2><span>开练卡: </span>￥200.00</h2>
                      <div class="inputDiv"><span></span><input type="text" /><span></span></div>
                   </li>
                   <li>
                      <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg119_2.jpg"/></a></div>
                      <h2><span>开练卡: </span>￥500.00</h2>
                      <div class="inputDiv"><span></span><input type="text" /><span></span></div>
                   </li>
                   <li>
                      <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg119_3.jpg"/></a></div>
                      <h2><span>开练卡: </span>￥800.00</h2>
                      <div class="inputDiv"><span></span><input type="text" /><span></span></div>
                   </li>
                   <li>
                      <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg119_4.jpg"/></a></div>
                      <h2><span>开练卡: </span>￥1000.00</h2>
                      <div class="inputDiv"><span></span><input type="text" /><span></span></div>
                   </li>
                   <li>
                      <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg119_5.jpg"/></a></div>
                      <h2><span>开练卡: </span>￥200.00</h2>
                      <div class="inputDiv"><span></span><input type="text" /><span></span></div>
                   </li>
                   <li>
                      <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg119_6.jpg"/></a></div>
                      <h2><span>开练卡: </span>￥500.00</h2>
                      <div class="inputDiv"><span></span><input type="text" /><span></span></div>
                   </li>
                </ul>
                <span class="clear_f"></span>
                <div class="btnDiv">
                   总计：<input type="text" class="input2" value="0" />元
                   <input type="botton" class="btn1" value="去结算" />
                </div>
          </div>
          <div class="tabContent card2List">
                现代庆典卡--暂无
          </div>
          <div class="tabContent card2List">
                传统庆典卡--暂无
          </div>
          <div class="tabContent card2List">
                爱情亲情卡--暂无
          </div>
          <div class="tabContent card2List">
                致敬卡--暂无
          </div>
          <div class="tabContent card2List">
                时尚欢乐卡--暂无
          </div>
</div>
<div class="h10"></div>
<!---->
<div class="pageBox card2Part3">
     <h1 class="red">温馨提示：</h1>
     <div class="content">
1、开练卡激活有效期为自购卡之日起30天；开练卡不记名、不挂失、不兑现、不可修改密码。请妥善保管卡号及密码。<br />
2、购买开练卡时不能使用优惠劵，不能与其他商品同订单购买，开练卡暂不支持团购。<br />
3、发生退款时，开练卡支付部分自动退回卡内。<br />
     </div>
     <div class="imgDiv"><a href=""><img src="${ctx}/image/nimg175.png"/></a></div>
</div>
<div class="h10"></div>
<!---->
<div class="cardTab"><h1>线下购买方式</h1></div>
<div class="pageBox card2List1" style="border-top:0px;">
         <ul>
           <li>
              <div class="imgDiv"><img src="${ctx}/image/nimg58_1.png"/></div>
              <div class="name">电话购买</div>
              <div class="msg">销售电话：400-0620600</div>
           </li>
           <li class="li_01">
              <div class="imgDiv"><img src="${ctx}/image/nimg58_2.png"/></div>
              <div class="name">邮件订购</div>
              <div class="msg">销售邮箱：wangqian@kiklink.com</div>
           </li>
           <li style="margin:0px;">
              <div class="imgDiv"><img src="${ctx}/image/nimg58_3.png"/></div>
              <div class="name">在线留言</div>
              <div class="msg"><a href="${ctx}/page/help.jsp?name=fuwuzhongxin">留言点击</a></div>
           </li>
         </ul>
         <span class="clear_f"></span>
         <div class="content">
         1、我们的工作时间是：周一至周五09:30-18:00 ；<br />
    2、如不方便电话或邮件，可点击留言，我们会在第一时间与您联系，谢谢！
         </div> 
         <div class="content content1">
         
         </div>
</div>
<div class="h10"></div>
<!---->
<div class="tab cardTab">
         <ul>
           <li class="liNow">常见问题</li>
           <li>使用帮助</li>
           <!-- 
           <li>绑定帮助</li>
            -->
           <li>规则说明</li>
         </ul>
</div>
<div class="pageBox tabContentDiv" style="border-top:0px;">
          <div class="tabContent card2List2">
                      <ul>
                        <li>
                            <div class="name"><span>问</span>：开练网是什么？</div>
                            <div class="msg">
                            答：开练网是一个致力于私人健身教学的网站，我们为全国的私人健身教练和健身培训机构提供一个免费的课程展示平台.
                            </div>
                        </li>
                        <li>
                            <div class="name"><span>问</span>：如何购买？</div>
                            <div class="msg">
                            答：只需在开练卡页面选择相应的数量,然后点击"去结算"按钮即可.
                            </div>
                        </li>
                        
                       
                        <li>
                            <div class="name"><span>问</span>：都有哪些支付方式？</div>
                            <div class="msg">
                            答：目前支持支付宝付费.
                            </div>
                        </li>
                      </ul>
          </div>
          <div class="tabContent card2List2">
                <ul>
                        <li>
                            <div class="msg">
                            1、购买开练卡之后,点击网站上方的"用户中心",进入用户后台.
                            <br/><br/>
                            2、点击左侧菜单的"开练卡",进入开练卡管理界面.
                            <br/><br/>
                            3、这里列出了您购买的所有开练卡信息.点击右侧对应的"激活"链接,开练卡相应金额则被充入您的开练账户.
                            <br/><br/>
                            4、点击密码栏对应的六个星号,可以查看该开练卡密码;您可以将卡号与密码转赠他人.
                            <br/><br/>
                            5、如果您收到他人赠送的开练卡账号与密码,可以在页面上方的激活栏目激活该卡,则相应金额会被充入您的开练账户.
                            <br/><br/>
                            <img src="${ctx}/image/kailianka.png" style="width:900px" />
                            </div>
                        </li>
                        
                      </ul>
          </div>
          <!-- 
          <div class="tabContent card2List2">
                绑定帮助--暂无
          </div>
           -->
          <div class="tabContent card2List2">
               <ul>
                        <li>
                            <div class="msg">
                           1、开练卡激活有效期为自购卡之日起30天；开练卡不记名、不挂失、不兑现、不可修改密码。请妥善保管卡号及密码。<br /><br/>
2、购买开练卡时不能使用优惠劵，不能与其他商品同订单购买，开练卡暂不支持团购。<br /><br/>
3、发生退款时，开练卡支付部分自动退回卡内。<br /><br/>
                            </div>
                        </li>
                        
                      </ul>
          </div>
</div>
<!--walEnd-->
</div>
<div class="h20"></div>
<script>
var ar = [];
var paramArray = [];
var param = "";
var init1;
<c:forEach var="p" items="${pg.result}">
ar[ar.length] = [${p.price}, 0];
</c:forEach>
<c:forEach var="p" items="${pg.result}">
paramArray[paramArray.length] = [${p.id}, 0];
</c:forEach>
function jiesuan() {
	var price = parseInt($('#zongji').val());
	for(var i = 0; i < paramArray.length; i ++){
		param += paramArray[i][0]+","+paramArray[i][1]+"~";
	}
	if (price <= 0)
		alert("您没有选择开练卡");
	else 
		window.location.href='${ctx}/kailian/KlShoppingShoppingcartproduct/waitpayForCard.do?param=' + param;
}

function countMoney() {
	var t = 0.0;
	for (var i = 0; i < ar.length; i ++) {
		if(ar[i][1] >= 0){
			pre = ar[i][0] * ar[i][1];
			t += pre;
		}
	}
	$('#zongji').val(t);
}
</script>



<!--底部start-->
<%@ include file="/page/kailiantail.jsp" %>
</body>
</html>

