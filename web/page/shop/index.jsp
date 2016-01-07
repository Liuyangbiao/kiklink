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
<title>商家首页${my:config('title后缀','--开练网')}</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/member2.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="${ctx}/scripts/jquery-easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${ctx}/scripts/jquery-easyui/themes/icon.css">
<script type="text/javascript" src="${ctx }/scripts/jquery-easyui/jquery.easyui.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery.tips.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/form.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/comment.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery_scroll.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/date/My97DatePicker/WdatePicker.js"></script>
<!--[if lte IE 6]>
<script src="${ctx}/script/png.js" type="text/javascript"></script>
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


<div class="w993 pageNow"><em>当前位置：</em><a href="">首页</a><span>卖家会员</span></div>
<div class="w993">
<!--wal-->
<%@ include file="/page/centerleft.jsp" %>

<div class="fr w791">
      <div class="memberTitle"><h1>订单管理</h1>
      	<!-- 
            <div class="tips">新增3个订单，请及时确认！</div>
            -->
            <a href="" class="more">更多</a>
      </div>
      <div class="pageBox">
     <!-- 
      <div class="myCourse">
     
            <ul>
              <li><input type="text" class="input1" value="订单号" /></li>
              <li> 
              <div class="selectDiv"><span></span>
              <select name="">
                    <option value="">购买者</option>
                    <option value="">购买者</option>
                    <option value="">购买者</option>
              </select>
              </div>
              </li>
              <li><input type="text" class="input1 input2" value="开始时间" onClick="WdatePicker()" /></li>
              <li><span>至</span></li>
              <li><input type="text" class="input1 input2" value="结束时间" onClick="WdatePicker()" /></li>
              <li class="liBtn"><input type="button" class="btn1" value="搜索" /></li>
            </ul>
             
      </div>
      -->
      <div class="Orders">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
             <tr>
               <th width="111">订单产品号</th>
               <th width="111">课程</th>
               <th width="101">购买用户</th>
               <th width="73">单价</th>
               <th width="72">数量</th>
               <th width="71">总价</th>
               <th width="102">购买时间</th>
               <th class="th_01">操作</th>
             </tr>
             
             <c:forEach var="v" items="${map.orders}">
             <tr>
               <td>${v.orderid}-${v.id}</td>
               <td>
					<a class="easyui-tips" tooltip="${v.productName}">${my:maxleng(v.productName,8)}</a>
				</td>
               <td><a tooltip="${v.ext1},点击查看联系方式" class="btn easyui-tips" style="cursor:pointer;" onclick="showuserinfo('${v.userid}');">${v.ext1}</a></td>
               <td>${v.perPrice}</td>
               <td>${v.count}</td>
               <td>${v.perPrice * v.count}</td>
               <td>${my:transDate(v.createtimelong)}</td>
               <td>
               		<c:choose>
               		<c:when test="${v.status ge 20}">
               		<!-- 
               			<a href="${ctx}/kailian/KlShoppingShoppingcartproduct/closebyshop.do?id=${v.id}&pageno=${param.pageno}&pageNumber=${param.pageNumber}">关闭交易</a>
               		 -->
               		</c:when>
               		<c:when test="${v.status eq -41}">
               			关闭审核中
               		</c:when>
					<c:when test="${v.status eq -42}">
               			交易已关闭
               		</c:when>
               	</c:choose>
               		 <a href="javascript:;" class="lyLayerA" onclick="orderext(${v.productid},${v.userid},${v.orderid});">查看留言</a> 
               		&nbsp;
               		&nbsp;
               </td>
             </tr>
             </c:forEach>
           
<!--
             <tr>
               <td>10202023</td>
               <td>器械健身</td>
               <td>郭靖</td>
               <td>40</td>
               <td>5</td>
               <td>200</td>
               <td>2014-2-11</td>
               <td>关闭交易</td>
             </tr>
           
             <tr class="orderLayer5A">
               <td><span class="red">器械健身</span></td>
               <td><span class="red">分时课程</span></td>
               <td><span class="red">郭靖</span></td>
               <td><span class="red">20</span></td>
               <td><span class="red">3</span></td>
               <td><span class="red">60</span></td>
               <td><span class="red">2014-2-11</span></td>
               <td>关闭交易</td>
        -->
             </tr>
      </table>
      <!-- 
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <th width="120">订单产品号</th>
           <th width="120">课程名称</th>
           <th width="100">购买用户</th>
           <th width="62">单价</th>
           <th width="62">数量</th>
           <th width="62">总价</th>
           <th width="108">购买时间</th>
           <th>操作</th>
         </tr>
         <c:forEach var="v" items="${map.orders}">
         <tr>
           <td>${v.orderid}-${v.id}</td>
           <td>${v.productName}</td>
           <td>郭靖</td>
           <td>40</td>
           <td>5</td>
           <td>${v.perPrice}</td>
           <td>2014-2-11</td>
           <td><a href="">关闭交易</a><a href="">查看留言</a></td>
         </tr>
        </c:forEach>
          <tr>
           <td>10202023</td>
           <td>器械健身</td>
           <td>郭靖</td>
           <td>40</td>
           <td>5</td>
           <td>200</td>
           <td>2014-2-11</td>
           <td>关闭审核中</td>
         </tr>

         <tr class="orderLayer5A">
           <td><span class="blue">器械健身</span></td>
           <td><span class="blue">分时课程</span></td>
           <td><span class="blue">郭靖</span></td>
           <td><span class="blue">20</span></td>
           <td><span class="blue">3</span></td>
           <td><span class="blue">60</span></td>
           <td><span class="blue">2014-2-11</span></td>
           <td>关闭交易</td>
         </tr>
      </table>
       -->
      </div>
      </div>
      <div class="h14"></div>
      <!---->
      <div class="fl sellerPart1">
            <div class="memberTitle memberTitle2">
                  <div class="tab" style="left:12px;">
                  <ul>
                      <li class="liNow">课程预约</li>
                      <li>会员取消预约</li>
                  </ul>
                  </div>
                  <c:if test="${map.coachetimes.totalCount + map.coachetimes1.totalCount gt 0 }">
            		<div class="tips" style="left:250px;">已经有${map.coachetimes.totalCount+map.coachetimes1.totalCount}个用户新增/修改了预约日期，请确认！</div>
             	</c:if>

            </div>
            <div class="pageBox tabContentDiv">
                  <div class="tabContent Orders">
                 <table width="100%" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <th width="119">购买者</th>
           <th width="131">课程名称</th>
           <th width="161">预约时间</th>
           <th>操作</th>
         </tr>
         <c:forEach var="t" items="${map.coachetimes.result}">
         <tr>
           <td>${t.ext1}</td>
           <td>${t.productName}</td>
           <td><span class="blue">${my:coachTime(t.extInt3,t.extInt1,t.extInt2)}</span></td>
           <td><a href="${ctx}/kailian/KlShoppingCoachtime/updateStatus.do?pid=${t.id}&timestatus=1">确认</a>
           <a href="#" onclick="jujue(${t.id});">拒绝</a>	
           </td>
         </tr>
         </c:forEach>
        
      </table>
                  </div>
                  <div class="tabContent Orders">
       <table width="100%" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <th width="70">购买者</th>
           <th width="100">取消课程</th>
           <th width="155">课程时间</th>
           <th>操作</th>
         </tr>
         <c:forEach var="t" items="${map.coachetimes1.result}">         
         <tr>
           <td>${t.ext1}</td>
           <td>${t.productName}</td>
           <td><span class="blue">${my:coachTime(t.extInt3,t.extInt1,t.extInt2)}</span></td>
           <td><a href="${ctx}/kailian/KlShoppingCoachtime/updateStatus.do?pid=${t.id}&timestatus=-1">确认</a></td>
         </tr>
         </c:forEach>
       
      </table>
                  </div>
            </div>
      </div>
      <div class="fr sellerPart2">
            <div class="memberTitle memberTitle3">
                  <h1><a href="${ctx}/kailian/KlShoppingPiliangtime/piliangs.do">日程管理</a></h1>
            </div>
            <div id="sellerPart2"></div>
      </div>
<script>


//WdatePicker({eCont:'sellerPart2',onpicked:function(dp){alert('你选择的日期是:'+dp.cal.getDateStr())}})
WdatePicker({eCont:'sellerPart2',onpicked:function(dp){
	$('.dateLayer11').css('left',$('#sellerPart2').offset().left);
	$('.dateLayer11').css('top',$('#sellerPart2').offset().top);
	$('.dateLayer11').show();
	}})
</script>

<!-- 
      <span class="clear_f"></span>
      <div class="h14"></div>

      <div class="memberTitle">
            <div class="tab" style="left:12px;">
            <ul>
              <li class="liNow">服务确认</li>
              <li>已经确认</li>
            </ul>
            </div>
      </div>
      <div class="pageBox tabContentDiv">
            <div class="tabContent Orders">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
               <tr>
                 <th width="119">课程名称</th>
                 <th width="131">课程类型</th>
                 <th width="78">学员</th>
                 <th width="129">授课时间</th>
                 <th width="58">课时</th>
                 <th width="62">费用</th>
                 <th width="61">状态</th>
                 <th>训练总结</th>
               </tr>
               <c:forEach var="v" items="${map.confirms}">
               <tr>
                 <td>${v.productName}</td>
                 <td>${my:showcont('KlSellerProduct','categoryid',v.classType, 0)}</td>
                 <td>${v.ext1}</td>
                 <td>${my:transDate(v.createtimelong)}</td>
                 <td>${v.count}</td>
                 <td>${v.price}</td>
                 <td>未确认</td>
                 <td>
                 <c:choose>
                 	<c:when test="${v.hastrainsummary eq 1}">
                 		有
                 	</c:when>
                 	<c:otherwise>
                 		无<a href="${ctx}/kailian/KlShoppingTrainningsummary/preshop.do?toUserId=${v.userid}&toProdId=${v.id}&toUsername=${v.ext1}">【添加】</a>
                 	</c:otherwise>
                 </c:choose>
                 </td>
               </tr>
              </c:forEach>
            </table>
            </div>
            <div class="tabContent Orders">
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
               <tr>
                 <th width="119">课程名称</th>
                 <th width="131">课程类型</th>
                 <th width="78">学员</th>
                 <th width="129">授课时间</th>
                 <th width="58">课时</th>
                 <th width="62">费用</th>
                 <th width="61">状态</th>
                 <th>训练总结</th>
               </tr>
               <c:forEach var="v" items="${map.confirmd}">
               <tr>
                 <td>${v.productName}</td>
                 <td>${my:showcont('KlSellerProduct','categoryid',v.classType, 0)}</td>
                 <td>${v.ext1}</td>
                 <td>${my:transDate(v.createtimelong)}</td>
                 <td>${v.count}</td>
                 <td>${v.price}</td>
                 <td>已确认</td>
                 <td>
                 <c:choose>
                 	<c:when test="${v.hastrainsummary eq 1}">
                 		有
                 	</c:when>
                 	<c:otherwise>
                 		无<a href="${ctx}/kailian/KlShoppingTrainningsummary/preshop.do?toUserId=${v.userid}&toProdId=${v.id}&toUsername=${v.ext1}">【添加】</a>
                 	</c:otherwise>
                 </c:choose>
                 </td>
               </tr>
              </c:forEach>
            </table>
			
			</div>
      </div>
</div>
 -->
<span class="clear_f"></span>
<!--walEnd-->
</div>
<div class="h20"></div>

<div class="dateLayer11">
      <h5>上午</h5>
      <div class="list">
            <ul>
              <li><em>7</em>
                  <div><span class="spanNow"></span><span></span></div>
              </li>
              <li><em>8</em>
                  <div><i></i><i></i></div>
              </li>
              <li><em>9</em>
                  <div><span></span><span></span></div>
              </li>
              <li><em>10</em>
                  <div><span></span><i></i></div>
              </li>
              <li><em>11</em>
                  <div><span></span><span></span></div>
              </li>
              <li><em>12</em>
                  <div><i></i><i></i></div>
              </li>
            </ul>
            <span class="clear_f"></span>
      </div>
      <h5>下午</h5>
      <div class="list">
            <ul>
              <li><em>13</em>
                  <div><span class="spanNow"></span><span></span></div>
              </li>
              <li><em>14</em>
                  <div><span></span><span></span></div>
              </li>
              <li><em>15</em>
                  <div><span></span><span></span></div>
              </li>
              <li><em>16</em>
                  <div><i></i><i></i></div>
              </li>
              <li><em>17</em>
                  <div><span></span><span></span></div>
              </li>
              <li><em>18</em>
                  <div><span></span><i></i></div>
              </li>
            </ul>
            <span class="clear_f"></span>
      </div>
      <h5>晚上</h5>
      <div class="list">
            <ul>
              <li><em>19</em>
                  <div><span class="spanNow"></span><span></span></div>
              </li>
              <li><em>20</em>
                  <div><span></span><i></i></div>
              </li>
              <li><em>21</em>
                  <div><span></span><span></span></div>
              </li>
              <li><em>22</em>
                  <div><i></i><i></i></div>
              </li>
            </ul>
            <span class="clear_f"></span>
      </div>
</div>

<div class="orderLayer sellerPart2Layer">
<div class="bgT"></div>
<div class="bg">
<form id="formx" action="${ctx}/kailian/KlShoppingPiliangtime/piliang.do" method="post">
      <h5>批量设置日程<a href="javascript:;" class="close"></a></h5>
      <div class="form">
      
            <ul>
              <li>
              	<em>日  期</em>
              	&nbsp;&nbsp;
              	<input class="datefrom" id="datefroms" name="datefroms" type="text" id="d28" onClick="WdatePicker({dateFmt:'yyyy/MM/dd'})" style="width:80px;" placeholder="开始日期" />
              	到&nbsp;&nbsp;
              	<input class="dateto" id="datetos" name="datetos" type="text" id="d28" style="width:80px;" placeholder="结束日期" />
              	&nbsp;&nbsp;
              	<input id="quanri" type="checkbox" onclick="allday();" />全周
              </li>
              <li>
              	<c:forEach var="v" begin="1" end="7">
              		<c:if test="${v ne 7}">
              			<input name="weekdays" type="checkbox" class="timeday" value="${v}" />星期${v}
              		</c:if>
              		<c:if test="${v eq 7}">
              			<input name="weekdays" type="checkbox" class="timeday" value="${v}" />星期日
              		</c:if>
              	</c:forEach>
              </li>
              <li><em>时间段</em>
              	<select name="timefrom" id="timefrom">
              	<c:forEach var="v" begin="0" end="23">
              		<option value="${v * 100}">${v}:00</option>
              		<option value="${v * 100 + 30}">${v}:30</option>
              	</c:forEach>
              	</select><em>到</em><select name="timeto" id="timeto">
				<c:forEach var="v" begin="0" end="23">
              		
              		<option value="${v * 100 + 30}">${v}:30</option>
              		<option value="${v * 100 + 100}">${v+1}:00</option>
              	</c:forEach>
				</select></li>
            </ul>
           
      </div>
      <!-- 
      <div class="btnDiv1"><a href="" class="btn">添加更多天</a></div>
      
      <div class="inputDiv"><input name="canuse" type="radio" value="1" checked="" />可用时间　　<input name="canuse" type="radio" value="0" />不可用时间</div>
       -->
      <div class="btnDiv"><input style="cursor:pointer;" type="submit" value="发 布" /></div>
      </form>
</div>
<div class="bgB"></div>
</div>




<div class="orderLayer trainLayer">
<div class="bgT"></div>
<div class="bg">
      <h5>写记录<a href="javascript:;" class="close"></a></h5>
      <div class="form">
          <textarea name="" cols="" rows=""></textarea>
          <div class="inputDiv">
              <span>添加图片：</span>
              <input type="text" class="input1" />
              <input type="button" class="btn2" value="浏览..." />
              <input type="button" class="btn2" value="上传" />
          </div>
      </div>
      <div class="btnDiv"><input type="button" value="发 布" /></div>
</div>
<div class="bgB"></div>
</div>

<div class="orderLayer orderLayer1">
<div class="bg">
     <h5>培训确认<a href="javascript:;" class="close"></a></h5>
     <div class="content">
张三教练与2014-2-22日发来初级游泳的培训确认，您已经进行到"第三课时"了。
如果没有异议请确认，若有异议请投诉
     </div>
     <div class="btnDiv"><a href="">确 认</a></div>
</div>
</div>
<!---->
<div class="orderLayer orderLayer2">
<div class="bg">
     <h5>查看<a href="javascript:;" class="close"></a></h5>
     <dl>
       <dt><a href=""><img src="${ctx}/image/nimg60.png"/></a></dt>
       <dd>
         <div class="name"><b><a href="">张三教练</a></b>　　2014-1-24</div>
         <div class="content">
            今天训练结构不错，一定要坚持下去！！！！
         </div>
       </dd>
     </dl>
     <div class="list">
         <ul>
           <li><img src="${ctx}/image/nimg142_5.jpg"/></li>
           <li><img src="${ctx}/image/nimg142_6.jpg"/></li>
           <li><img src="${ctx}/image/nimg142_7.jpg"/></li>
         </ul>
     </div>
     <div class="btnDiv"><a href="">点击查看更多</a></div>
</div>
</div>
<!---->
<div class="orderLayer orderLayer3">
<div class="bg">
     <h5>评分<a href="javascript:;" class="close"></a></h5>
     <div class="list">
        <ul>
          <li>
              <em>服务与描述相符度:</em>
              <img src="${ctx}/image/nimg117.jpg"/>
              <span><b class="red">10分</b> - 非常好，锻炼效果最佳，非常满意</span>
          </li>
          <li><em>专业程度：</em>
              <img src="${ctx}/image/nimg117_2.jpg"/>
              <span><b class="red">7分</b> - 教练专业程度较高，完全超出期望值</span>
          </li>
          <li><em>服务态度：</em>
              <img src="${ctx}/image/nimg45.jpg"/>
              <span><b class="red">4分</b> - 服务太多有点凶</span>
          </li>
          <li><em>预约成功率：</em>
              <img src="${ctx}/image/nimg117_3.jpg"/>
              <span><b class="red">7分</b> - 预约成功率较高</span>
          </li>
          <li>
              <em>服务态度：</em>
              <input name="" type="radio" class="radio" />好评　
              <input name="" type="radio" class="radio" />中评　
              <input name="" type="radio" class="radio" />差评
          </li>
          <li class="li_01"><em>服务评价：</em>
              <textarea name="" cols="" rows=""></textarea>
          </li>
          <li>
             <input type="button" class="btn1" value="提 交" />
             <input type="button" class="btn1 btn2" value="删除评论" />
          </li>
        </ul>
     </div>
</div>
</div>

<div class="timeLayer">
      <h5>预约时间列表</h5>
      <a href="" class="btn">确定</a>
      <div class="list">
            <ul>
              <li><input type="checkbox" />3月22日上午9点——10点</li>
              <li><input type="checkbox" />3月22日上午9点——10点</li>
              <li><input type="checkbox" />3月22日上午9点——10点</li>
              <li><input type="checkbox" />3月22日上午9点——10点</li>
              <li><input type="checkbox" />3月22日上午9点——10点</li>
              <li><input type="checkbox" />3月22日上午9点——10点</li>
              <li><input type="checkbox" />3月22日上午9点——10点</li>
              <li><input type="checkbox" />3月22日上午9点——10点</li>
              <li><input type="checkbox" />3月22日上午9点——10点</li>
              <li><input type="checkbox" />3月22日上午9点——10点</li>
            </ul>
      </div>
</div>
<div class="pageLayer lyLayer">
<div class="bgT"></div>
<div class="bg">
      <h5>用户的留言内容<a href="javascript:;" class="close"></a></h5>
      <div id="liuyan" class="content">
　　
      </div>
</div>
<div class="bgB"></div>
</div>
<div class="pageLayer pageLayer2 orderLayer5">
<div class="bgT"></div>
<div class="bg">
      <h5 style="background:none;"><a href="javascript:;" class="close"></a></h5>
      <div class="table">
          <table width="100%" cellpadding="0" cellspacing="0" border="0">
                <tr>
                  <th width="80">编号</th>
                  <th width="110">课程类型</th>
                  <th width="140">课程类型</th>
                  <th width="103">购买者</th>
                  <th width="93">课时</th>
                  <th width="80">价格</th>
                  <th>操作</th>
                </tr>
                <tr>
                  <td>10202023</td>
                  <td>器械健身</td>
                  <td>普通分时课程</td>
                  <td>郭靖</td>
                  <td>5</td>
                  <td>200</td>
                  <td><a href="">隐藏</a>　<a href="">投诉</a></td>
                </tr>
                <tr>
                  <td>10202023</td>
                  <td>器械健身</td>
                  <td>普通分时课程</td>
                  <td>郭靖</td>
                  <td>5</td>
                  <td>200</td>
                  <td><a href="">隐藏</a>　<a href="">投诉</a></td>
                </tr>
                <tr>
                  <td>10202023</td>
                  <td>器械健身</td>
                  <td>普通分时课程</td>
                  <td>郭靖</td>
                  <td>5</td>
                  <td>200</td>
                  <td><a href="">隐藏</a>　<a href="">投诉</a></td>
                </tr>
                <tr>
                  <td>10202023</td>
                  <td>器械健身</td>
                  <td>普通分时课程</td>
                  <td>郭靖</td>
                  <td>5</td>
                  <td>200</td>
                  <td><a href="">隐藏</a>　<a href="">投诉</a></td>
                </tr>
          </table>
     </div>
</div>
<div class="bgB"></div>
</div>

<form id="form2" action="${ctx}/kailian/KlShoppingCoachtime/updateStatus.do" method="post">
	<input type="hidden" id="pid" name="pid" value="" />
	<input type="hidden" id="timestatus" name="timestatus" value="-10" />
	<input type="hidden" id="word" name="word" value="-1" />
</form>

<%@ include file="/page/kailiantail.jsp" %>
<script>
//${ctx}/kailian/KlShoppingCoachtime/updateStatus.do?pid=${t.id}&timestatus=-10
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

	var host3 = "${ctx}";
</script>
</body>
</html>