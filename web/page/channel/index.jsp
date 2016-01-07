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
<title>开练，0门槛开启新运动</title>
<meta name="keywords" content="${my:config('关键词','开练网')}" /> 
<meta name="description" content="${my:config('metadata','开练网')}" /><link rel="shortcut icon" href="${ctx}/favicon.ico" /> 
<link href="${ctx}/style/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/style/index.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="${ctx}/script/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/js.js"></script>
<script language="javascript" type="text/javascript" src="${ctx}/script/fun.js"></script>
<!--[if lte IE 6]>
<script src="${ctx}/script/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]--> 
</head>

<body>
<%@ include file="/page/kailianheader.jsp" %>

<!-- 
<div class="sNav">
<div class="wal">
      <div class="fl list">
        <h2><a href="">有氧运动</a></h2>
        <ul>
          <li><a href="">普拉提</a></li>
          <li><a href="">慢跑</a></li>
          <li><a href="">有氧操</a></li>
          <li><a href="">瑜伽</a></li>
          <li><a href="">有氧拉丁</a></li>
          <li><a href="">舞蹈</a></li>
          <li><a href="">有氧搏击</a></li>
          <li><a href="">动感单车</a></li>
          <li><a href="">有氧舞</a></li>
          <li><a href="">蹈芭蕾</a></li>
        </ul>
      </div>
      <div class="fl list">
        <h2><a href="">无氧运动</a></h2>
        <ul>
          <li><a href="">瑜伽</a></li>
          <li><a href="">有氧拉丁</a></li>
          <li><a href="">舞蹈</a></li>
          <li><a href="">有氧搏击</a></li>
          <li><a href="">动感单车</a></li>
          <li><a href="">普拉提</a></li>
          <li><a href="">慢跑</a></li>
          <li><a href="">有氧操</a></li>
          <li><a href="">有氧舞</a></li>
          <li><a href="">蹈芭蕾</a></li>
        </ul>
      </div>
      <div class="fr"><a href=""><img src="${ctx}/image/img206.png" alt="" /></a></div>
</div>
</div>
 -->
<div class="indexFlash">
     <div class="list fadeFlash">
         <a href="javascript:;" class="leftBtn"></a>
         <a href="javascript:;" class="rightBtn"></a>
         <ul>
         	<c:forEach var="f" items="${map.focus}">	
             <li><a href="${my:jvalue(f.content, 'lianjie')}" target="_blank" style="background:url(${ctx}/${my:jvalue(f.content, 'tupianimg')}) center top no-repeat;"></a></li>
            </c:forEach>
         </ul>
         <div class="btnDiv">
         <c:forEach var="f" items="${map.focus}" varStatus="st">	
         	<span<c:if test="${st.index eq 0}"> class="spanNow"</c:if>></span>
         </c:forEach>
         </div>
     </div>
     <div class="listDiv">
          <h1>店铺排行榜</h1>   
          
          <c:forEach var="s" items="${map.shops}" varStatus="st">	
          	<c:choose>
          		<c:when  test="${st.index eq 0}">
          			<dl>
              <dt><a href="${my:jvalue(s.content, 'link')}"><img src="${ctx}/${my:jvalue(s.content, 'img')}" alt="" /></a></dt>
              <dd><span>1</span><a href="${my:jvalue(s.content, 'link')}">${s.title}</a></dd>
         			 </dl>
          		</c:when>
          		<c:otherwise>
          			<c:if test="${st.index eq 1}">
          				 <div class="list2">
             				 <ul>
          			</c:if>
          			 
          			<li><span>${st.index + 1}</span><a href="${my:jvalue(s.content, 'link')}">${s.title}</a></li>
          			
          			<c:if test="${st.index eq fn:length(map.shops)-1}">
          				</ul>
          			</div>
          			</c:if> 
          		</c:otherwise>
          	</c:choose>
          </c:forEach>
           
          <div class="list2">
              <ul>
                 
               </ul>  
          </div> 
     </div>
</div>


<div class="indexPart1" >
<div class="indexPart1Img"></div>
<div class="wal" >
      <div class="fl indexPart1_01">
            <h1>热门课程 ...... </h1>
            <dl>
            	<c:forEach var="v" items="${map.lefttags}">
            		<c:choose>
            			<c:when test="${my:jvalue(v.content, 'ifindex') eq '1'}">
            				<dd><a style="cursor:pointer;color:orange;">${v.title}</a></dd>
            			</c:when>
            			<c:otherwise>
            				<dd><a style="cursor:pointer;">${v.title}</a></dd>
            			</c:otherwise>
            		</c:choose>
            	</c:forEach>
            </dl>
            
           
      </div>
     
      <div class="fl indexPart1_02" id="contdiv" style="height:auto;position:relative;" >
            <ul>
            	<c:forEach var="p" items="${map.tops}">
                <li>
                  <div class='imgDiv'><a href='${ctx}/product_${p.id}.html' target='_blank'><img src='${ctx}/${p.photo}' style='width:179px;height:119px;' /></a></div>
                  <div class='contentDiv'>
                  <h2><a href='${ctx}/product_${p.id}.html' target='_blank' style="line-height:22px;">${my:maxleng(p.name,100)}</a></h2>
                  <div class='msg'>${p.ext5}</div>
                  <div class='content'>${my:maxleng(p.subname,20)}</div>
                  </div>
                  <a href='${ctx}/product_${p.id}.html' target='_blank' class='btn'></a>
                </li>
                </c:forEach>
               
            
            </ul>
            
      </div>
            
            
      
       
      <div class="fr indexPart1_03">
           <h1>体验者说 ......</h1>
           <a href="javascript:;" class="leftBtn"></a>
           <a href="javascript:;" class="rightBtn"></a>
           <div class="list">
           <ul>
         
          <c:forEach var="f" items="${map.tiyans}">
              <li>
                   <div class="img"><a href="${ctx}/tiyan_${f.id}.html" target="_blank"><img style="width:48px;height:48px;" src="${ctx}/${my:jvalue(f.content, 'touxiang')}"/></a></div>
                   <h2><a href="${ctx}/tiyan_${f.id}.html" target="_blank">${f.title}</a></h2>
                   <div class="name">作者:${my:jvalue(f.content, 'yonghuming')}</div>
                    
                   <dl>
                  
                   </dl>
                    
                   <div class="content">
                      ${my:maxleng(my:jvalue(f.content, 'neirong'),40)}
                   </div>
                   <div class="massage">来自：<a href="${ctx}/index.html">开练网</a></div>
                   <div class="time">${my:jvalue(f.content, 'riqi')}</div>
              </li>
            </c:forEach>
              
           </ul>  
           <span class="clear_f"></span>
           </div>
      </div>
</div>   
</div>
<!---->
<div class="indexPart2">
<div class="wal">
      <div class="fl indexPart2_01">
            <h1>本周热门小组</h1>
            <ul>
            <c:forEach var="v" items="${map.hotgroups}" varStatus="vs">
            <c:if test="${vs.index le 1}">
               <li>
                  <div class="imgDiv"><a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${v.id}" target="_blank"><img src="${ctx}/${my:showHead(request,'group',v.id)}" style="width:80px;height:80px;"/></a></div>
                  <div class="title"><a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${v.id}" target="_blank">${my:maxleng(v.name,6)}</a></div>
               </li>
              </c:if>
              </c:forEach>
        
            </ul>
      </div>
      <div class="fl indexPart2_02">
      <div class="bg">
            <h1>推荐热门小组</h1>
            <ul>
               <c:forEach var="v" items="${map.topgroups}" varStatus="vs">
            <c:if test="${vs.index le 2}">
               <li>
                  <div class="imgDiv"><a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${v.id}" target="_blank"><img src="${ctx}/${my:showHead(request,'group',v.id)}" style="width:80px;height:80px;"/></a></div>
                  <div class="title"><a href="${ctx}/kailian/CmsGroup/groupIndex.do?id=${v.id}" target="_blank">${my:maxleng(v.name,6)}</a></div>
               </li>
              </c:if>
              </c:forEach>
            </ul>
            <span class="clear_f"></span>
            <a href="${ctx}/kailian/CmsGroup/preNewGroup.do" class="btn"><img src="${ctx}/image/nimg84.png"/></a>
      </div>
      </div>
      <div class="fr indexPart2_03">
            <h1>推荐话题</h1>
            <a href="javascript:;" class="leftBtn"></a>
            <a href="javascript:;" class="rightBtn"></a>
            <div class="list">
            <ul>
            	<c:forEach var="v" items="${map.toptopics}">
            		<li><a href="${ctx}/kailian/CmsGroup/getTopic.do?topicid=${v.id}" target="_blank">${my:maxleng(v.title,20)}</a></li>
            	</c:forEach>
   
            </ul>
            </div>
      </div>
</div>
</div>
<!--
<div class="indexPart3">
<div class="wal">
      <h1>精选教程</h1>
      
      <c:if test="${map.tuijians ne null and fn:length(map.tuijians) gt 0}">
      <div class="fl indexPart3_01">
           			<div class="imgDiv"><a href="${ctx}/kailian/KlSellerProduct/index.do?id=${map.tuijians[0].id}"><img src="${ctx}/${map.tuijians[0].photo}" style="width:312px;height:212px;" /></a></div>
           			<div class="name"><a href="${ctx}/kailian/KlSellerProduct/index.do?id=${map.tuijians[0].id}">${map.tuijians[0].name}</a></div>
      			</div>
      	 <div class="fl indexPart3_02">
           <ul>
      </c:if>
      <c:forEach var="v" items="${map.tuijians}" varStatus="vs">
      	<c:choose>
      		<c:when test="${vs.index eq 0}">
      			
      		</c:when>
      		<c:otherwise>
      			<li><a href="${ctx}/kailian/KlSellerProduct/index.do?id=${v.id}"><img src="${ctx}/${v.photo}" style="width:142px;height:95px;" /></a></li>
      		</c:otherwise>
      	</c:choose>
      </c:forEach>
      

           </ul>
      </div>
      <div class="fr indexPart3_03">
           <div class="list">
            <ul>
              <li><a href=""><span>1</span>美国偶像庆祝中国马年</a></li>
              <li><a href=""><span>2</span>精英风潮来袭，发掘成功男士26岁的...</a></li>
              <li><a href=""><span>3</span>如何重回职场</a></li>
              <li><a href=""><span>4</span>职场翻车求存记</a></li>
              <li><a href=""><span>5</span>哪些职业值得投资</a></li>
            </ul>
           </div>
           <div><a href=""><img src="${ctx}/image/btn4.png" alt="" /></a></div>
      </div>
</div>
</div>
-->
<c:forEach var="v" items="${map.tuijians}" varStatus="vs">
<c:if test="${vs.index ne 0}">
<div class="FreeCourseLayer">
<div class="bg1">
<div class="bg2">
<div class="name">${v.name}</div>
	${v.description}
</div>
</div>
<div class="bg3"></div>
</div>
</c:if>
</c:forEach>




<%@ include file="/page/kailiantail.jsp" %>
 <script>
     $(function(){
      	$('.indexPart1_01 a').click(function(){
      		//$(this).attr('href','#');
      		search($(this).html());
      	});
      });
      
      	function search(key) {
      		$.ajax({
            type: 'POST',
            url: '${ctx}/kailian/KlSellerProduct/search.do?status=1&ajax=ajax',
            dataType: 'json',
            data: {name:key},
            success: function (data) {
				if (data['re'] > 0) {
					var cont = "<ul>";
					var ds = data['page'].result;
					for (var i = 0; i < ds.length; i ++	) {
						var id = ds[i]['id'];
						var name = ds[i]['name'];
						var ext5 = ds[i]['ext5'];
						var description = ds[i]['subname'];
						var photo = ds[i]['photo'];
						if (name.length > 100)
							name = name.substr(0,100) + "..";
						if (description.length > 20	)
							description = description.substr(0,20) + "..";
						
						cont += "<li><div class='imgDiv'><a href='${ctx}/product_" + id + ".html" 
							+ "' target='_blank'><img src='${ctx}/" + photo + "' style='width:179px;height:119px;' /></a></div>"
							+ "<div class='contentDiv'>"
							+ "<h2><a href='${ctx}/product_" + id + ".html' target='_blank' style='line-height:22px;'>" + name + "</a></h2>"
							+ "<div class='msg'>" + ext5 + "</div>"
							+ "<div class='content'>" + description + "</div></div>"
							+ "<a href='${ctx}/product_" + id + ".html' target='_blank' class='btn'></a></li>"
					}
					cont += "</ul>";
					//cont += "<br/>" + data['pagecont'] + "</div>";
					//if (data['page']['totalCount'] > 12)
					//	cont += "<br/><div style='position:absolute;top:740px;z-Index:111;width:540px;align:center;'>" + data['pagecont'] + "</div>";
					
					//$('#pagecont').html(data['pagecont']);
					$('#contdiv').html(cont);
					//alert(cont);
					$('.indexPart1_02').find('li').hover(
	   function(){
		   $(this).addClass('liNow');
		   $(this).find('.imgDiv').animate({top: -30}, 300);
		   $(this).find('.btn').animate({top: 75,opacity:'show'}, 300);
		   $(this).find('.contentDiv').animate({top: 89,height:112,'paddingTop':28}, 300);
		   },
	   function(){
		   $(this).removeClass('liNow');
		   $(this).find('.imgDiv').animate({top: 0}, 300);
		   $(this).find('.btn').animate({top: 105,opacity:'hide'}, 300);
		   $(this).find('.contentDiv').animate({top: 119,height:46,'paddingTop':8}, 300);
		   }
	)
				}
				else {
					alert(data['word']);
				}
            }
        });
        
        /*
        $('.pageNum1 a').each(function() {
			var url = $(this).attr('href');
			$(this).attr('href1', url);
			//alert(url);
			if (url.indexOf("nullnull") >= 0) {
				alert(url);
				$(this).attr('href','#');
			$(this).click(function() {
				var url = $(this).attr('href1');
				var pn = url.split('pageNumber=')[1];
				search(searchkey, pn);
			});
			}
       
        });
       */ 
      	}
      </script>
</body>
</html>