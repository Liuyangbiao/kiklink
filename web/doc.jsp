<%@ page language="java" import="java.util.*,testpush.*" pageEncoding="UTF-8"%>
	
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="scripts/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="scripts/md5.js"></script>
    <script type="text/javascript" src="scripts/statics.js"></script>
    <script>
    var hash = {};
    var kongge = "&nbsp;";
    var tmpsessionid = "";
    var tmplogintoken = "";
    
    $(document).ready(function(){
  		$.post("doc.txt", function(data) {
  			//alert(data);
  			var zus = data.split('\n\n\n');
  			var str = "";
  			for (var i = 0; i < zus.length; i ++){
  				var lianjies = zus[i].split('\n\n');
  				for (var j = 0; j < lianjies.length; j ++) {
  					hash[i + '-' + j] = lianjies[j];
  					var hangs = lianjies[j].split('\n');
  					var kuais = hangs[0].split(';');
  					var mingzi = kuais[0];
  					var lianjie = kuais[1];
  					var s = "<a href=\"javascript:doit('" + i + "-" + j + "');\">" + mingzi + "</a>&nbsp;&nbsp;";
  					str += s;
  				}
  				str += "</br>";
  			}
  			//alert(str);
  			$('#daohang').html(str);
		});
	});
	
function doit(m) {
	
		var str = "";
		var hangs = hash[m].split('\n');
		var kuais = hangs[0].split(';');
		str += "方法名：" + kuais[0] + kongge + "地址：" + kuais[1] + "<br/>";
		str += kuais[2] + "<br/><br/><br/>";
		if (kuais[0].indexOf('发送验证码') >= 0 || kuais[0].indexOf('用户注册') >= 0  ) {
			str += "<table>";
		}
		else {
		str += "<table><tr><td>sessionId</td><td><input id='sessionId' name='sessionId' value='" + tmpsessionid + "' /></td><td>sessionId</td></tr>";
		str += "<tr><td>pageno</td><td><input id='pageno' name='pageno' value='" + "' /></td><td>pageno</td></tr>";
		}
		//str += "<table><tr><td>logintoken</td><td><input id='logintoken' name='logintoken' value='" + tmplogintoken + "' /></td><td>logintoken</td></tr>";
		for (var i = 1; i < hangs.length; i ++) {
			kuais = hangs[i].split(';');
			str += "<tr><td>" + kuais[0] + "</td>";
			
			if (kuais[2] == '字符串') {
				str += "<td><input type='text' id='" + kuais[1] + "' name='" + kuais[1] + "' /></td>";
			}
			if (kuais[2] == '输入框') {
				str += "<td><textarea type='text' id='" + kuais[1] + "' name='" + kuais[1] + "' /></textarea>";
			}
			else if (kuais[2] == '数字') {
				str += "<td><input type='text' id='" + kuais[1] + "' name='" + kuais[1] + "' /></td>";
			}
			
			str += "<td>" + kuais[1] + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>";
			str += "<td>"+kuais[3]+ "</td>";
			
			
			str += "</tr>";
		}
		str += "<tr><td colspan=3 align='center'><input type='button' onclick=\"tijiao('" + m + "');\" value='提交' /></td></tr>";
		str += "</table>";
		//alert(str);
		$('#main').html(str);
	}
	
	
	function tijiao(m) {
		tmpsessionid = $('#sessionId').val();
		tmplogintoken = $('#logintoken').val();
		document.getElementById('result').innerHTML = '';
		var hangs = hash[m].split('\n');
		var diyihang = hangs[0];
		var diyikuais = diyihang.split(';');
		var lianjie = diyikuais[1];
		var da = {"sessionId":$('#sessionId').val(),"logintoken":$('#logintoken').val(),"pageno":$('#pageno').val()};
		for (var i = 1; i < hangs.length; i ++) {
			var kuais = hangs[i].split(';');
			da[kuais[1]] = $('#' + kuais[1]).val();
			//alert(kuais[1] + '   ' + $('#' + kuais[1]).val());
		}		
		
		$.post(lianjie, da,
   function(data){
     //alert(data);
     document.getElementById('result').innerHTML = data;
   });
		
	}
    </script>
   	<title>开发文档</title>
   </head>
   <body>
   <p>
   "page":{"result":[结果数组],"lastPage":是否最后一页,"hasNextPage":是否有下一页,"thisPageNumber":当前页码（从1开始）,"firstResult":第一个结果索引,"pageSize":每页数量,"hasPreviousPage":是否有上一页,"nextPageNumber":下一页页码,"thisPageLastElementNumber":当前页结果数量,"totalCount":总数量,"previousPageNumber":上页页码,"lastPageNumber":1,"firstPage":是否是首页,"thisPageFirstElementNumber":1}
  如果 re == -200 则为需要重新登录<br/>
  <br/>
  如果是分页信息，传入pageno表示要查询的页码。pageno从1开始计数。
   </p>
   <p>
   服务器地址：http://www.kiklink.com:8080/<br/>
	
	<b>sessinId用于记录用户状态,第一次可以留空，sessionId将在返回的json中体现</b><br/>
   <a href="doc_shop.txt" target="_blank">店铺字段说明</a><br/>
   <a href="doc_product.txt" target="_blank">课程字段说明</a><br/>
   <a href="doc_user.txt" target="_blank">用户字段说明</a><br/>
   <a href="doc_comment.txt" target="_blank">评论字段说明</a><br/>
   <a href="doc_order.txt" target="_blank">订单字段说明</a><br/>
   <a href="doc_class.txt" target="_blank">已购课程字段说明</a><br/>
   <a href="doc_coch.txt" target="_blank">教练字段说明</a><br/>
   </p>
   <p id="daohang" style="line-height:30px;">
   
   </p><br/>
   <div id="main">
   
   </div><br/>
   <textarea id='result' style='width:1000px;height:500px;'></textarea>
   
   </body>
</html>