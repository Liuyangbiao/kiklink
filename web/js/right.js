function postdata(url1, data1) {
	$.ajax({
            type: 'POST',
            url: url1,
            dataType: 'json',
            data: data1,
            success: function (data) {
            	//alert(data['re']);
				if (data['re'] > 0) {
					window.location.reload();
				}
				else {
					alert(data['word']);
					
				}
            }
        });

}


var cts = {
		"11":"rss",
		"12":"新闻",
		"13":"微博",
		"21":"产品列表",
		"22":"淘宝",
		"31":"店铺",
		"41":"讨论区"
	};
	
var xingzhis = {
	'11':'私营企业',
	'12':'国有企业',
	'13':'合资企业',
	'14':'外资企业',
	'15':'个人'
}

var peizhileixings = {
	'1':'数字',
	'2':'文字'
}

　String.prototype.replaceAll = function(reallyDo, replaceWith, ignoreCase) { 
　 if (!RegExp.prototype.isPrototypeOf(reallyDo)) { 
return this.replace(new RegExp(reallyDo, (ignoreCase ? "gi": "g")), replaceWith); 
} else { 
return this.replace(reallyDo, replaceWith); 
} 
} 


function doimg(theid) {
	//var theid = $(this).attr('id');
	
		
			//alert(theid);
			theid = theid.split('_')[0];
			var pre = theid + "_mainlb";
			var lbt = $('#' + pre).html();
			var thevl = $('#' + theid).val();
			//alert(thevl);
			var imgcont = "";
			if (thevl != '') {
				imgcont = "	<img id='" + theid + "_imgg' class='houlaiimg' src=\"" + host1 + "/" + thevl + "\" />";
			}
			//alert(host1);
			
			var str = " <label id='" + pre + "'>"+
					lbt+
				 "</label>"+
				
				 "<iframe src=\"" + host1 + "/admin/editor/jsp/iupload.jsp?from=" + theid + "\" width=\"400px\" height=\"50px\"></iframe>"+
				"<input id=\"" + theid + "\" name=\"" + theid + "\" value=\"" + thevl + "\""+
				"type=\"hidden\"  class=\"text-input medium-input easyui-validatebox\"   />"+
				"<span id=\"" + theid + "_span\">"+
				imgcont + 
				"</span>";
				

			$('#' + theid + '_p').html(str);
		
		
	
}

function dolistimg(theid) {
	
}

function doright() {
	//alert(111);
	/*
	$(".p123").each(function(){
		var theid = $(this).attr('id');
	
		if (theid.indexOf('Img') >= 0) {
			//alert(theid);
			theid = theid.split('_')[0];
			var pre = theid + "_mainlb";
			var lbt = $('#' + pre).html();
			var thevl = $('#' + theid).val();
			//alert(thevl);
			var imgcont = "";
			if (thevl != '') {
				imgcont = "	<img id='" + theid + "_imgg' class='houlaiimg' src=\"" + host1 + "/attached/" + thevl + "\" />";
			}
			//alert(imgcont);
			
			var str = " <label id='" + pre + "'>"+
					lbt+
				 "</label>"+
				
				 "<iframe src=\"" + host1 + "/admin/editor/jsp/iupload.jsp?from=" + theid + "\" width=\"400px\" height=\"50px\"></iframe>"+
				"<input id=\"" + theid + "\" name=\"" + theid + "\" value=\"" + thevl + "\""+
				"type=\"hidden\"  class=\"text-input medium-input easyui-validatebox\"   />"+
				"<span id=\"" + theid + "_span\">"+
				imgcont + 
				"</span>";
				

			$(this).html(str);
		}
		else if (theid == "content_p") {
		
			var cont = $('#content').val();
			//alert(cont.split('\r').length);
			
			if (cont == null) cont = "";
		
			var str = "<label id='content_mainlb'>"+
					"content:"+
				 "</label>"+
				 "<textarea id=\"content\" name=\"content\" rows=10>" + cont + "</textarea>";
				
			$(this).html(str);
			
		}
		
		
	});
	*/

	doSelect('channeltype',cts);
	doSelect('xingzhi',xingzhis);
	doSelect('thetype',peizhileixings);
	
	//easyui输入验证
		$('#name').attr("required", true);
		$('#name').addClass('easyui-validatebox');
		
		$('#channeltype').addClass('easyui-numberbox');
		$('#channeltype').attr("required", true);
		$('#channeltype').attr('min',1);
		$('#channeltype').attr('max',10000);
		
		
		$('#peoplecount').addClass('easyui-numberbox');
		$('#peoplecount').attr("required", true);
		$('#peoplecount').attr('min',1);
		$('#peoplecount').attr('max',1000000);




}


function dorightlist() {
	$('.td123').each(function() {
		var theid=$(this).attr('id');
		var thename = theid.split('_')[0];
		theid = theid.split('_')[1];
		
		if (thename.indexOf('img') == 0) {
			var cont = $(this).html();
			if (cont != '') {
				cont = host1 + "/attached/" + cont;
				cont = "<a target='_blank' href='" + cont + "'><img class='houlaiimg2' src='" + cont + "' /></a>";
				$(this).html(cont);
			}
		}
		else if (thename.indexOf('channeltype') == 0) {
			var vl = $(this).html();
			vl = (cts[vl]);
			if (vl == undefined) {
				vl = '未指定';
			}
			
			$(this).html(vl);
		}
		else if (thename.indexOf('xingzhi') == 0) {
			var vl = $(this).html();
			vl = (xingzhis[vl]);
			if (vl == undefined) {
				vl = '未指定';
			}
			
			$(this).html(vl);
		}
	});
	
	
		$(".operate111").each(function() {
		var theid = $(this).attr('id');
		theid = theid.split("_")[1];
		//alert(theid);
		
		if (window.location.href.indexOf("ShChannel/list.do") > 0) {
			var t = "<a href=\"javascript:subchannel('" + theid + "');\">子栏目</a>";
			var t1 = $(this).html() + t;
			$(this).html(t1);
		}
		else if (window.location.href.indexOf("ShCompany/list.do") > 0) {
			var t = "&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"" + host1 + "/glo/ShApp/list.do?companyid=" + theid + "\">App列表</a>";
			var t1 = $(this).html() + t;
			$(this).html(t1);
		}
		else if (window.location.href.indexOf("ShApp/list.do") > 0) {
			var t = "&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"" + host1 + "/glo/ShChannel/list.do?appid=" + theid + "\">频道列表</a>";
			var t1 = $(this).html() + t;
			$(this).html(t1);
		}
	});
	

	$(".xinzeng111").each(function() {
		
		var index1 = window.location.href.indexOf("list.do") + "list.do".length;
		var t1 = window.location.href.substring(index1);
		
		var url = $(this).attr("href");
		$(this).attr("href", url + t1);
		
	});
}

function subchannel(theid) {
	//var type = $('#channeltype_' + theid).html();
	//alert(theid);
	var ct = $('#channeltype_' + theid).html();
	
	//alert(ct);
	if (ct == '新闻') {
		var url = host1 + "/glo/ShArticle/list.do?channelid=" + theid;
		window.location.href = url;
	}
	else if (ct == '产品列表') {
		var url = host1 + "/glo/ShProduct/list.do?channelid=" + theid;
		window.location.href = url;
	}
	else if (ct == '店铺') {
		var url = host1 + "/glo/ShShops/list.do?channelid=" + theid;
		window.location.href = url;
	}
}

function doSelect(pre, sanlie) {
	var pc = $('#' + pre + '_p').html();
	if (pc == undefined)
		return;
	

	

	var str = "<label id='" + pre + "_mainlb'>" + $('#' + pre + '_mainlb').html() + "</label>";
	var vl = $('#' + pre).val();
	var sel = "<select name='" + pre + "' id='" + pre + "'><option value='-1'>请选择</option>";

	for(var c in sanlie){ 
		    sel = sel + "<option value='" + c + "'>" + sanlie[c] + "</option>";
		}
	sel = sel + "</select>";
	$('#' + pre + '_p').html(str + sel);
	
	
	$("#" + pre + " option[value='" + vl + "']").attr("selected", true);
}

	//返回列表
function backtolist() {
	var href = window.location.href;
	href = href.replaceAll('create', 'list');
	href = href.replaceAll('edit', 'list');
	window.location.href = href;
}





