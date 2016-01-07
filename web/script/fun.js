//银行账号的处理
function bankno(inputid) {
	$('#' + inputid).keyup(function() {
		var v = $(this).val();
		if (v != null && v != undefined) {
			if (v.length % 5 == 4)
				v += " ";
		}
		
		$(this).val(v);
	});
}


function Vertical_scrollFun(){
	$(".Vertical_scroll").jscroll({ W:"4px"
	,BgUrl:"url(image/Vertical_scrollBg1.gif)"
	//,Bg:"#eee"
	,Bar:{  Bd:{Out:"#373737",Hover:"#373737"}
			,Bg:{Out:"-4px center repeat-y",Hover:"-4px center repeat-y",Focus:"-4px center repeat-y"}
			}
	,Btn:{  btn:false
			,uBg:{Out:"-0px center repeat-y",Hover:"-0px center repeat-y",Focus:"-0px center repeat-y"}
			,dBg:{Out:"none",Hover:"none",Focus:"none"}
			}
	,Fn:function(){}
	});
	}
//--
var fadeFlashNow=new Array();
for(i=0;i<50;i++){
  fadeFlashNow[i]=0;	
}	
function fadeFlashFun(i){
	$('.fadeFlash').eq(i).find('.btnDiv').find('span').removeClass('spanNow');
	$('.fadeFlash').eq(i).find('li').eq(fadeFlashNow[i]).fadeOut(500);
	if(fadeFlashNow[i]<$('.fadeFlash').eq(i).find('li').length-1){
		fadeFlashNow[i]++;
		}else{
			fadeFlashNow[i]=0;
			}
	$('.fadeFlash').eq(i).find('li').eq(fadeFlashNow[i]).fadeIn(500);
	$('.fadeFlash').eq(i).find('.btnDiv').find('span').eq(fadeFlashNow[i]).addClass('spanNow');
	
	 if($('.indexFlash').length>0&&fadeFlashNow[i]==0){
	                    $('.indexFlash').find('.listDiv').show();
	                    }else{
	                        $('.indexFlash').find('.listDiv').hide();
	                        }
	
	}
//--
var imgScrollNum2=new Array();
for(i=0;i<150;i++){
  imgScrollNum2[i]=0;	
}
function imgScrollRight2(a,b,c,d){
	    //a.stop();
		if(imgScrollNum2[d]<b){
			imgScrollNum2[d]++;
			a.animate({scrollLeft: imgScrollNum2[d]*c}, 200);
			}
	}	
function imgScrollLeft2(a,b,c,d){
	    //a.stop();
		if(imgScrollNum2[d]>0){
			imgScrollNum2[d]--;
			a.animate({scrollLeft: imgScrollNum2[d]*c}, 200);		
			}
	}	
//
var FreeCourseArray=new Array();	
function FreeCourse(a){
	$('.FreeCourseLayer').hide();
	$('.FreeCourseLayer').eq(a).css('top',$('.indexPart3_02').find('img').eq(a).offset().top-FreeCourseArray[a]+20);
	$('.FreeCourseLayer').eq(a).css('z-index',55);
	$('.FreeCourseLayer').eq(a).show();
	$('.FreeCourseLayer').eq(a).animate({paddingTop:0,height: FreeCourseArray[a],top:$('.FreeCourseLayer').eq(a).offset().top-30}, 280,function(){
		//$('.FreeCourseLayer').hide();
		$('.FreeCourseLayer').eq(a).animate({height: FreeCourseArray[a],paddingTop:20}, 400);
		});
	}		
function FreeCourse2(a){
	$('.FreeCourseLayer').eq(a).stop();
	$('.FreeCourseLayer').hide();
	$('.FreeCourseLayer').css('z-index',50);
	$('.FreeCourseLayer').eq(a).css('padding-top',FreeCourseArray[a]);
	$('.FreeCourseLayer').eq(a).height(0);
	}	
	
	
	
function setCookie(c_name, value, expiremin){
 　　　　var exdate=new Date();
 　　　　exdate.setDate(exdate.getMinutes() + 60*24*365);
 	//alert(exdate);
 　　　　document.cookie=c_name+ "=" + escape(value) + ((expiremin==null) ? "" : ";expires="+exdate.toGMTString());
}

function getCookie(c_name){
　　　　if (document.cookie.length>0){　　//先查询cookie是否为空，为空就return ""
　　　　　　c_start=document.cookie.indexOf(c_name + "=")　　//通过String对象的indexOf()来检查这个cookie是否存在，不存在就为 -1　　
　　　　　　if (c_start!=-1){ 
　　　　　　　　c_start=c_start + c_name.length+1　　//最后这个+1其实就是表示"="号啦，这样就获取到了cookie值的开始位置
　　　　　　　　c_end=document.cookie.indexOf(";",c_start)　　//其实我刚看见indexOf()第二个参数的时候猛然有点晕，后来想起来表示指定的开始索引的位置...这句是为了得到值的结束位置。因为需要考虑是否是最后一项，所以通过";"号是否存在来判断
　　　　　　　　if (c_end==-1) c_end=document.cookie.length　　
　　　　　　　　return unescape(document.cookie.substring(c_start,c_end))　　//通过substring()得到了值。想了解unescape()得先知道escape()是做什么的，都是很重要的基础，想了解的可以搜索下，在文章结尾处也会进行讲解cookie编码细节
　　　　　　} 
　　　　}
　　　　return ""
　　}　



function doimg(theid) {
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
			
			var str = 
				//" <label id='" + pre + "'>"+
				//	lbt+
				// "</label>"+
				
				 "<iframe src=\"" + host1 + "/admin/editor/jsp/iupload.jsp?from=" + theid + "\" width=\"400px\" height=\"40px\" border=\"0\" style=\"border:0px;overflow:hidden;\"></iframe>"+
				"<input id=\"" + theid + "\" name=\"" + theid + "\" value=\"" + thevl + "\""+
				"type=\"hidden\" style=\"border:0px;\"     />"+
				"<span id=\"" + theid + "_span\">"+
				imgcont + 
				"</span>";
				

			$('#' + theid + '_p').html(str);
		
		
	
}


function seturl(pre, width, height, src) {
	var year = "2011";
	var nprei = src.indexOf(year);
	if (nprei < 0) return src;
	var nimg = src.substring(nprei);
	var mon = src.substring(4,6);
	if (mon.indexOf("0") == 0) mon = mon.substring(1,2);
	var day = src.substring(6,8);
	if (day.indexOf("0") == 0) day = day.substring(1,2);
	var npre = src.substring(0, nprei);
	//return "/" + year + "/" + mon + "/" + day + "/" + pre + "_" + width + "_" + height + "_" +  nimg; 
	return src;
}



var host2 = "http://localhost:8080/cms/";
function checkparam(classname, paramname) {
	
	//alert($('#' + paramname).val());
	var urlx = host2 + "kailian/CmsInputTable/check.do?checkclassname=" + classname + "&param=" 
            	+ paramname + "&" + paramname + "=" + $('#' + paramname).val() ;
         //alert(urlx);
     if (paramname == 'repasswd') {
     	urlx = urlx + "&passwd=" + $('#passwd').val();
     }
	
	$.ajax({
            type: 'GET',
            url: urlx,
            dataType: 'json',
            success: function (data) {
            
				if (data['re'] == 1) {
					var cont = "<div class='ico2'>" + data['word'] + "</div>";
					$('#' + paramname + '_div').html(cont);
					//alert(cont);
				}
				else {
					var cont = "<div class='ico1'>" + data['word'] + "</div>";
					$('#' + paramname + '_div').html(cont);
					//alert(cont);
				}
            }
        })
}


//获取城市
function getcities(proname) {
	//alert(host2 + '/kailian/CtUserCity/listAjax.do?provinceid=' + proname);
	$.ajax({
            type: 'GET',
            url: host2 + '/kailian/CtUserCity/listAjax.do?provinceid=' + proname,
            dataType: 'json',
            success: function (data) {
				var cont = "<select id='cityid' name='cityid' onchange=\"getqus($(this).val());\">";
				//alert(sel_cityid);
                for (var i in data['rows']) {
                	var sel = "";
                	if (sel_cityid != undefined && sel_cityid != "" && sel_cityid == data['rows'][i]['id'])
                		sel = " selected=selected";
                	//alert(v);
                    cont += "<option value='" + data['rows'][i]['id'] + "'" + sel + ">" + data['rows'][i]['name'] + "</option>";
                }
                cont += "</select>";
                //alert(cont);
                $('#citydiv').html(cont);
                
                
    			getqus($('#cityid').val());
            }
        })
}

//区县
function getqus(proname) {
	
	//alert(proname);
	//alert(host2 + '/kailian/CtUserQu/listAjax.do?cityid=' + proname);
	$.ajax({
            type: 'GET',
            url: host2 + '/kailian/CtUserQu/listAjax.do?cityid=' + proname,
            dataType: 'json',
            success: function (data) {
            	//alert(11);
				var cont = "<select id='quid' name='quid'>";
				var ct = 0;
                for (var i in data['rows']) {
                	var sel = "";
                	if (sel_quid == data['rows'][i]['id'])
                		sel = " selected=selected";
                	ct ++;
                    cont += "<option value='" + data['rows'][i]['id'] + "'" + sel + ">" + data['rows'][i]['name'] + "</option>";
                }
                if (ct == 0) {
                	cont += "<option value='" + "0" + "'>" + "默认区" + "</option>";
                	$('#qudiv').hide();
                }
                else {
                	$('#qudiv').show();
                }
                
                cont += "</select>";
                //alert(cont);
                $('#qudiv').html(cont);
                
    
            }
        })
}

//月份
function dodate(yearid, monthid, dateid) {
	var dc = 30;
	
	
	var year = parseInt($('#' + yearid).val());
	var month = parseInt($('#' + monthid).val());
	if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) 
		dc = 31;
	if (month == 2 && year % 4 == 0) 
		dc = 29;
	else if (month == 2 && year % 4 != 0) 
		dc = 28;
	
	$("#" + dateid + " option").remove(); 
	for (var i = 1; i <= dc; i ++) {
		$("#" + dateid).append("<option value='" + i + "'>" + i + "</option>");
	}
		
}


//-------弹出对话框	
function prompt_fun(a){
	              $(a).after("<div id='Layer1'></div>"); 
				  if($('body').height()>$(window).height()){
				      $('#Layer1').height($('body').height());
				  }else{
					  $('#Layer1').height($(window).height());
					  }
				  $('#Layer1').width($('body').width());
				  $(a).css({left:($('body').width()-$(a).width())/2,top:$(window).scrollTop()+($(window).height()-$(a).height())/2});
				  $('#Layer1').fadeTo("fast",0.6); 
				  $(a).show();
				  //$(a).fadeIn("slow"); 
				  $('#Layer1').click(function(){
					  close_prompt_fun(a);
					  })	
	}
function close_prompt_fun(a){
	              //$(a).fadeOut("fast"); 
				  $(a).hide();
				  $('#Layer1').fadeOut("slow",function(){
					  $('#Layer1').remove();
					  }); 
	}			
		