<%@ page contentType="text/html;charset=UTF-8" %>
<%
/*
if (request.getSession().getAttribute("admin") == null) {
	//out.flush();
	
	//response.sendRedirect("http://www.china.com");
	response.sendRedirect("../../admin/login.jsp");
	return;
}
else {
	request.setAttribute("admin", request.getSession().getAttribute("admin"));
	
}
*/
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>开练网管理后台</title>
<!--                       CSS                       -->
<!-- Reset Stylesheet -->
<link rel="stylesheet" href="${ctx}/kindeditornew/themes/default/default.css" />
<script charset="utf-8" src="${ctx}/kindeditornew/kindeditor-min.js"></script>
<script charset="utf-8" src="${ctx}/kindeditornew/lang/zh_CN.js"></script>

<link rel="stylesheet" href="${ctx }/admin/resources/css/reset.css" type="text/css" media="screen" />
<!-- Main Stylesheet -->
<link rel="stylesheet" href="${ctx }/admin/resources/css/stylei.css" type="text/css" media="screen" />
<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="${ctx }/admin/resources/css/invalid.css" type="text/css" media="screen" />
<!--                       Javascripts                       -->
<!-- jQuery -->
<script type="text/javascript" src="${ctx }/scripts/jquery-1.4.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" src="${ctx }/admin/resources/scripts/simpla.jquery.configuration.js"></script>
<!-- Facebox jQuery Plugin -->

<script type="text/javascript" src="${ctx }/admin/resources/scripts/facebox.js"></script>
<script type="text/javascript" src="${ctx }/admin/resources/scripts/img.js"></script>
<!-- jQuery WYSIWYG Plugin -->
<script type="text/javascript" src="${ctx }/admin/resources/scripts/jquery.wysiwyg.js"></script>
<!-- jQuery Datepicker Plugin -->
<script type="text/javascript" src="${ctx }/admin/resources/scripts/jquery.datePicker.js"></script>
<script type="text/javascript" src="${ctx }/admin/resources/scripts/jquery.date.js"></script>
<link type="text/css" rel="stylesheet" href="${ctx }/scripts/jquery-easyui/themes/default/easyui.css">
<link type="text/css" rel="stylesheet" href="${ctx }/css/themes/icon.css">
<script type="text/javascript" src="${ctx }/scripts/jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${ctx }/js/right.js"></script>
<script type="text/javascript" src="${ctx }/scripts/locale/easyui-lang-zh_CN.js"></script>



	<script type="text/javascript" src="${ctx}/fb/jquery.easing-1.3.pack.js"></script>
	<script type="text/javascript" src="${ctx}/fb/jquery.mousewheel-3.0.4.pack.js"></script>
	
	<script type="text/javascript" src="${ctx}/fb/jquery.fancybox-1.3.4.js"></script>
	<link rel="stylesheet" type="text/css" href="${ctx}/fb/jquery.fancybox-1.3.4.css" media="screen" />

 <script type="text/javascript" src="${ctx}/scripts/statics.js"></script>

<script type="text/javascript">
<!--
function uploadok2(from, f) {
						var t = (seturl("cmin", 115, 150, f));
						document.getElementById(from).value = "/attached/" + f;
						document.getElementById(from + "_" + "span").innerHTML = "<a href='${ctx}/attached/" + f + "' target='_blank'>" + "<img border='1px' class='houlaiimg' src='${ctx}/attached/" + t + "' />" + "</a>";
						if (f.indexOf('swf') >0) {
							document.getElementById(from + "_" + "span").innerHTML = "" + 
							"<div style=\"width:100px;height:100px;overflow:hidden;\">"+
"														<object"+
"															classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\"  "+
"															width=\"100\" height=\"100\">"+
"															<param name=\"movie\" value=\"/attached/" + f + "\" />"+
"															<!--[if !IE]>-->"+
"															<object type=\"application/x-shockwave-flash\"  "+
"																data=\"/attached/" + f + "\" width=\"100\" height=\"100\">"+
"																<!--<![endif]-->"+
"																<p>"+
"																	Alternative content"+
"																</p>"+
"																<!--[if !IE]>-->"+
"															</object>"+
"															<!--<![endif]-->"+
"														</object>"+
"													</div>	";
						}
					}	
//-->

var host1 = "${ctx}";
var widthPercent = '92%';
var heightPercent = '92%';

var editors = new Array();
function doeditors() {

	if ($("#form1").form('validate'))
		{}
	else {return false;}
		

	for (var i = 0; i < editors.length; i ++) {
		var name = editors[i][0];
		var edt = editors[i][1];

		$('#' + name).text(edt.html());
	}
	
	
	
	return true;
}


function didiframe(v, param) {
	
	var ss = param.split(',');
	for (var i = 0; i < ss.length - 1; i = i + 2) {
		$('#' + ss[i]).val(v[ss[i+1]]);
	}
	
	closefancy();
}

function closefancy() {
	$.fancybox.close();
}

function setvalue(id, value) {
	$('#' + id).val(value);
}


$.extend($.fn.validatebox.defaults.rules, {
            mobile: {
                // 验证手机号码
                validator: function (value) {
                    return /^(13|15|18)\d{9}$/i.test(value); //这里就是一个正则表达是
                },
                message: '手机号码格式不正确'//这里是错误后的提示信息
            },
            pwdagain: {
                validator: function (value, param) {
                    return value == $(param[0]).val(); //value是不用我们去填写的，但是param是需要我们提供的，使用方法为 pwdAgain[""]
                },
                message: '两次密码不一致'//这里是错误后的提示信息
            }
        });


function deleteidsrt() {
	var iiids = [];
	<c:forEach var="v" varStatus="vs" items="${pg.result}">
		iiids[iiids.length] = ${v.id};
	</c:forEach>
		var items = "";
		for (var i = 0; i < iiids.length; i ++) {
			if($("#checkbox_" + iiids[i]).attr("checked")=="checked") {
				if (items == "")
					items += "" + iiids[i];
				else 
					items += "," + iiids[i];
				
			}
		}
		//alert("${ctx}/${actionBasePath}/delete.do?items=" + items);
		
		window.location.href = "${ctx}/${actionBasePath}/delete.do?items=" + items;
	}

	
</script>
<%
	String usename = (String)request.getSession(false).getAttribute("userLogin");
	String userType = (String)request.getSession(false).getAttribute("userType");

%>


			 