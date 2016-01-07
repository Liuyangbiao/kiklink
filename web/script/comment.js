var targetid = -1;
var targetid2 = -1;
var targettype = -1;
var fromusertype = -1;
var theppid = -1;
var thesutype = -1;
//提交评论 
function commentbox(ttype , tid, tid2) {
	targetid = tid;
	targetid2 = tid2;
	targettype = ttype;
	$('#commentcontent').val('');
}

function commentit() {
	var cont = $('#commentcontent').val();
		if (cont == '' || cont == undefined) {
			alert('您没有输入内容');
			return;
		}
		
		if (parseInt($('#pointDescriptionMatch').val()) < 0) {
			alert("请为“服务与描述相符度”打分");
			return;
		}
		if (parseInt($('#pointPerfational').val()) < 0) {
			alert("请为“专业程度”打分");
			return;
		}
		if (parseInt($('#pointServiceAttitude').val()) < 0) {
			alert("请为“服务态度”打分");
			return;
		}
		if (parseInt($('#pointAppointmentSuccessful').val()) < 0) {
			alert("请为“预约成功率”打分");
			return;
		}
	$.ajax({
            type: 'POST',
            url: host3 + '/kailian/CmsCommonComment/savecomment.do',
            dataType: 'json',
            data: {
            pointDescriptionMatch:$('#pointDescriptionMatch').val(),
            pointPerfational:$('#pointPerfational').val(),
            pointServiceAttitude:$('#pointServiceAttitude').val(),
            pointAppointmentSuccessful:$('#pointAppointmentSuccessful').val(),
            targettype:targettype,targetid:targetid,targetid2:targetid2,ajax:'ajax',cont:cont},
            success: function (data) {
            	//alert(data['word']);
				if (data['re'] > 0) {
					alert('消息发送成功');
					$('.orderLayer').hide();
				}
				else {
					alert(data['word']);
					$('.orderLayer').hide();
				}
            }
        });
}

//以后补充参数
function classescomments(ctype, tid) {
	$.ajax({
            type: 'POST',
            url: host3 + '/kailian/CmsCommonComment/listAjax.do?targetId=' + tid + '&targetType=' + ctype,
            dataType: 'json',
            data: {
            
            },
            success: function (data) {
            	var cont = "";

            	for (var i = 0; i < data['rows'].length; i ++	) {
            		var username = data['rows'][i]['username'];
            		var userphoto = data['rows'][i]['userphoto'];
            		var comment = data['rows'][i]['comment'];
            		var ndate = new Date(data['rows'][i]['createtimelong']);
            		var t = ndate.getFullYear() + "-" + (ndate.getMonth() + 1) + "-" + (ndate.getDate() + 1);
            		cont += " <li><div class='imgDiv'><div><a href=''><img style='width:60px;height:60px;' src='" + host3 + userphoto + "'/></a></div>" + username + 
            			"</div><i></i><div class='contentDiv'><div class='time'>&nbsp;<span>" + t + "</span></div><div class='content'>" + comment + "</div></div></li>";
            	}
            	$('#rul').html(cont	);
            	/*
            	 * 
 <li><div class='imgDiv'><div><a href=''><img src='${ctx}/image/nimg60_2.png'/></a></div>小溪</div><i></i><div class='contentDiv'><div class='time'>好评<span>2013-12-29 08:41</span></div><div class='content'>是每周四都有吗？</div></div></li>

            	 
				if (data['total'] > 0) {
					//alert('消息发送成功');
					
				}
				else {
					alert("暂时没有评论");
				}
				*/
            }
        });
}


//投诉
function compalintbox(ttype, tid,ppid,sutype) {
	targetid = tid;
	fromusertype = ttype;
	theppid = ppid;
	thesutype = sutype;
	$('#content').val('');
}

function subcomplaint() {
	var cont = $('#content').val();
		if (cont == '' || cont == undefined) {
			alert('您没有输入内容');
			return;
		}
	//alert(thesutype);
	$.ajax({
		
            type: 'POST',
            url: host3 + '/kailian/KlShoppingComplaints/savecom.do',
            dataType: 'json',
            data: {extInt1:thesutype,ext2:theppid,fromUserType:fromusertype,toUserId:targetid,ajax:'ajax',content:cont},
            success: function (data) {
				if (data['re'] > 0) {
					alert('发送成功');
				}
				else {
					alert(data['word']);
				}
            }
        });
}


//查看用户信息
function showuserinfo(userid) {
$.ajax({
            type: 'POST',
            url: host3 + '/kailian/CmsUserInfo/listAjax.do?id=' + userid,
            dataType: 'json',
            data: {},
            success: function (data) {
            	if (data['rows'].length > 0) {
            		var o = data['rows'][0];
            		var cont = "用户名：" + o['username'] + "   ";
            		var mobile = o['mobile'];
            		var email = o['email'];
            		if (mobile != null && mobile != undefined)
            			cont += "手机号：" + mobile + "    ";
            		if (email != null && email != undefined)
            			cont += "邮箱：" + email + "    ";
            			
            		alert(cont);
            	}
            }
        });
}


//预约时间
var datetimestr = -1;
var shopproductid = -1;
var times = {};
function timeok(hour, halfhour, add) {
		//alert("hour:" + hour);
		//alert(hour + "   " + halfhour);
		var key = (hour*100 + halfhour*30) + "";
		times = {};
		if (add > 0)
			times[key] = add + "";
		else 
			$('.dateLayer11').hide();
		//alert(key);
}

//显示预约框
var shoptimes = null;
var weekdays = null;
var shopid = null;
var classid1 = null;
var extInt5 = 1;

function showyuyue(ttid) {
	//alert(2);
	//alert(shopproductid);
	//http://www.kiklink.com:8080/kailian/kailian/KlShoppingPiliangtime/listAjax.do
	$.ajax({
            type: 'POST',
            url: host3 + '/kailian/KlShoppingPiliangtime/listAjax.do',
            dataType: 'json',
            data: {ext1:classid1},
            success: function (data) {
            	if ("yes" == data['noneedyuyue'] ) {
            		//不需要预约
            		alert("您好，此课程不需要预约，点击确定可以看到预约码");
            		window.location.href = window.location.href;
            	}
            
				if (data['rows'].length > 0) {
					shoptimes = data['rows'];
					weekdays = {};
				}
				else {
					shoptimes = null;
					weekdays = null;
				}
					
					extInt5 = data['product']['extInt5'];
					//alert(extInt5);
				
					var left = $('#'+ttid).offset().left-30;
					if (left + 300 > $(window).width()) 
						left = $(window).width() - 300;
					$('.pageTimeLayer').css('left',left);
		
					$('.pageTimeLayer').css('top',$('#'+ttid).offset().top+25);
					$('.pageTimeLayerBg').height($(window).height());
					$('.pageTimeLayerBg').show();
					
					var date = new Date(new Date().valueOf() + 1*24*60*60*1000);
					if (extInt5 != null && extInt5 != '' && extInt5 != undefined)
						date = new Date(new Date().valueOf() + extInt5*24*60*60*1000);
					
					var date1 = new Date(date.valueOf() + 30 * 24 * 60*60 * 1000);
					var tmp = date.getFullYear() + "-" + (date.getMonth()+1) + "-" + (date.getDate());
					var tmp1 = date1.getFullYear() + "-" + (date1.getMonth()+1) + "-" + (date1.getDate());
					
					if (shoptimes != null && shoptimes.length > 0) {
						var mind = parseInt(date.getFullYear() + "" + (date1.getMonth()+1>10?"":"0") +(date.getMonth()+1) + "" + (date.getDate()>10?"":"0")+ (date.getDate()));
						var maxd = parseInt(date1.getFullYear() + "" + (date1.getMonth()+1>10?"":"0") +(date1.getMonth()+1) + "" +(date1.getDate()>10?"":"0")+ (date1.getDate()));
					
						var tmpmin = 0;
						var tmpmax = 0;
						for (var i = 0; i < shoptimes.length;i ++	) {
							
							var wds = shoptimes[i]['weekdays'];
							wds = wds.split(",");
							for (var j = 0; j < wds.length; j ++) {
								weekdays[wds[j] + ''] = "1";
							}
							
							var datefrom = parseInt(shoptimes[i]['datefrom']);
							var dateto = parseInt(shoptimes[i]['dateto']);
							if (tmpmin == 0)
								tmpmin = datefrom;
							else if (tmpmin > datefrom)
								tmpmin = datefrom;
							
							if (tmpmax == 0)
								tmpmax = dateto;
							else if (tmpmax > dateto)
								tmpmax = dateto;
						}
						
						
						if (tmpmin > mind )
							mind = tmpmin + "";
						if (tmpmax < maxd)
							maxd = tmpmax + "";
						mind += '';
						maxd += '';

						tmp = mind.substr(0,4) + "-" + mind.substr(4,2) + "-" + mind.substr(6,2);
						tmp1 = maxd.substr(0,4) + "-" + maxd.substr(4,2) + "-" + maxd.substr(6,2);
						
					}
					
					//alert(weekdays);
					var days =[];
					
					for (var j = 1; j <= 7; j ++) {
						var jj = j;
						if (j == 7)
							jj = 0;
						
						if (weekdays != null && weekdays[jj + ""] != "1"	)
							days[days.length] = jj ;					
					}
					if (days.length == 0)
						days = null;
					//alert(days);
					//alert(tmp1);
					WdatePicker({minDate:tmp,maxDate:tmp1,disabledDays:days,eCont:'sellerPart2',onpicked:function(dp){
						datetimestr = (dp.cal.getDateStr().replace('-','').replace('-',''));
						//alert(datetimestr);

						$('.dateLayer11').css('left',$('#sellerPart2').offset().left);
						$('.dateLayer11').css('top',$('#sellerPart2').offset().top);
						$('.dateLayer11').show();
	
						
						$('.dateLayer11 li span').addClass("spanDisable");
						if (shoptimes != null && shoptimes.length > 0) {
							for (var i = 0; i < shoptimes.length; i ++) {
								var timefrom = shoptimes[i]['timefrom'];
								var timeto = shoptimes[i]['timeto'];
								//alert(timefrom + "  " + timeto);
								
								for (var j = 7; j <= 22; j ++) {
									var t = j * 100;
									if (t >= timefrom && t + 30 <= timeto) {
										$('#time' + j + ' span').eq(0).removeClass('spanDisable');
									}
									if (t + 30>= timefrom && t + 100 <= timeto) {
										$('#time' + j + ' span').eq(1).removeClass('spanDisable');
									}
									
								}
							}
						}
						else {
							$('.dateLayer11 li span').removeClass("spanDisable");
						}
						
					}})
					//WdatePicker({eCont:'sellerPart2',minDate:'2014-08-01'});
					
            }
        });
}

function subtime() {
	
	var keys = [];
	for (var key in times) {
		//alert(key);
		if (times[key] == "1")
			keys[keys.length] = key;
	}
	
	$.ajax({
            type: 'POST',
            url: host3 + '/kailian/KlShoppingCoachtime/savetime.do',
            dataType: 'json',
            data: {dateint:datetimestr,hourhalfs:keys.join(","),shoppedclassid:shopproductid,ajax:'ajax'},
            success: function (data) {
				if (data['re'] > 0) {
					if (confirm("预约提交成功,请等待教练确认,如长时间没有确认,请致电商家。") || 1 == 1)
					location.reload();
				}
				else {
					alert(data['word']);
				}
            }
        });
}

function canneltime(classid) {
	$.ajax({
            type: 'POST',
            url: host3 + '/kailian/KlShoppingCoachtime/savetime.do',
            dataType: 'json',
            data: {isdelete:1,shoppedclassid:classid,ajax:'ajax'},
            success: function (data) {
				if (data['re'] > 0) {
					if (confirm("取消预约成功") || 1 == 1)
					location.reload();
				}
				else {
					alert(data['word']);
				}
            }
        });
}




//上传照片
var upedphotos = new Array();
function uploaded(src) {
	//alert(src	);
	upedphotos.push(src);
	drawupphotos();
	//alert(2);
}

function deluped(i) {
	upedphotos.splice(i,1);
	drawupphotos();
}

function drawupphotos() {
	
	var cont = "";
	//alert(upedphotos.length);
	
	for (var i = 0; i < upedphotos.length; i ++) {
		cont = cont + "<img src='" + host3 + upedphotos[i] + 
			"' style='width:140px;height:93px;' />";
		cont = cont + "<a href='#' onclick='deluped(" + i + ");'>删除</a>";
	}
	$('#upphotos').html(cont);
	
}


//订单留言
function orderext(productid, userid,orderid) {
	$('#liuyan').html("加载中。。。");
	$.ajax({
            type: 'POST',
           // url: host3 + '/kailian/CmsCommonComment/listAjax.do?targetId=' + productid + "&targetType=20"	+ "&userid=" + userid,
            url : host3 + '/kailian/KlShoppingOrder/listAjax.do?id=' + orderid,
            			
            dataType: 'json',
            data: {},
            success: function (data) {
            	//alert(data['rows'].length);
				if (data['rows'] != null && data['rows'].length > 0) {
					var v = data['rows'][0]['ext2'];
					//alert(v);
					if (v == undefined || v == null || v == "")
						v = "客户无留言。";
					
						
					$('#liuyan').html(v);
				}
				else {
					//alert(data['word']);
					$('#liuyan').html("客户无留言。");
				}
            }
        });
}







	