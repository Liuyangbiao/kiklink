var nowtab = -1;


function showpic(theid) {
	window.open('http://www.kiklink.com/' + $('#' + theid).val());
}


$(function(){
	
	



	//是否预约
	$('#noneedyuyue').click(function() {
		if ($(this).attr('checked') == 'checked' || $(this).attr('checked') == true ) {
			$('#returnClassCount').hide();
			$('#piliangtime').hide();
			$('#noneedyuyue').val(-1);
			$('#extInt5').hide();
		}
		else {
			$('#returnClassCount').show();
			$('#piliangtime').show();
			$('#noneedyuyue').val(1);
			$('#extInt5').show();
		}
	});
	
	//过滤url
	$('a').each(function() {
			var url = $(this).attr('href');
			
			
			if (url != null && url != undefined) {
				//产品url
				var aa = url.split('kailian/KlSellerProduct/index.do?id=');
			
				if (aa != null && aa != undefined && aa.length == 2) {
					$(this).attr('href', aa[0] + 'product_' + aa[1] + '.html');
				}
				//教练列表kailian/KlSellerShop/shopcoaches.do?id=
				aa = url.split('kailian/KlSellerShop/shopcoaches.do?id=');
			
				if (aa != null && aa != undefined && aa.length == 2) {
					$(this).attr('href', aa[0] + 'coachs_' + aa[1] + '.html');
				}
				
				//教练 kailian/KlSellerShop/shopcoach.do?coachid=
				aa = url.split('kailian/KlSellerShop/shopcoach.do?coachid=');
			
				if (aa != null && aa != undefined && aa.length == 2) {
					$(this).attr('href', aa[0] + 'coach_' + aa[1] + '.html');
				}
				
				//店铺 kailian/KlSellerShop/shopindex.do?id=17
				aa = url.split('kailian/KlSellerShop/shopindex.do?id=');
			
				if (aa != null && aa != undefined && aa.length == 2) {
					$(this).attr('href', aa[0] + 'shop_' + aa[1] + '.html');
				}
				
				/*
				//用户中心 kailian/KlShoppingShoppingcartproduct/userindex.do
				aa = url.split('kailian/KlShoppingShoppingcartproduct/userindex.d');
				if (aa != null && aa != undefined && aa.length == 2) {
					$(this).attr('href', aa[0] + 'usercenter.html');
				}
				aa = url.split('kailian/KlShoppingShoppingcartproduct/shopuserindex.do?center=cente');
				if (aa != null && aa != undefined && aa.length == 2) {
					$(this).attr('href', aa[0] + 'seller.html');
				}
				///kailian/CmsUserInfo/logout.do
				aa = url.split('kailian/CmsUserInfo/logout.d');
				if (aa != null && aa != undefined && aa.length == 2) {
					$(this).attr('href', aa[0] + 'logout.html');
				}
				
				//kailian/CmsUserInfo/preregist.do
				aa = url.split('kailian/CmsUserInfo/preregist.d');
				if (aa != null && aa != undefined && aa.length == 2) {
					$(this).attr('href', aa[0] + 'prereg.html');
				}
				aa = url.split('kailian/CmsUserInfo/prelogin.d');
				if (aa != null && aa != undefined && aa.length == 2) {
					$(this).attr('href', aa[0] + 'prelog.html');
				}
				*/
			}
		})
		
	
	
	

	//--
	$('.tabContentDiv').find('.tabContent:first').show();
	$('.tab').each(function(i){
		$(this).find('li').each(function(ii){
			$(this).hover(
			
			function(){

				
				$('.tab').eq(i).find('li').removeClass('liNow');
				$(this).addClass('liNow');
				$('.tabContentDiv').eq(i).find('.tabContent').hide();
				$('.tabContentDiv').eq(i).find('.tabContent').eq(ii).show();
			
				}
				,
				function(){}	
				
				)
				
			})
		})
	//--
	$('.topDiv').find('.list').find('li:last').css('background','none');
	//--
	$('.topCartLayerA').hover(
	   function(){
		   $('.topCartLayer').show();
		   },
	   function(){
		   $('.topCartLayer').hide();
		   }
	)
	$('.topCartLayer').hover(
	   function(){
		   $(this).show();
		   },
	   function(){
		   $(this).hide();
		   }
	)
	//--
	$('.topSearch').find('div').hover(
	   function(){
		   $('.topSearchLayer').css('left',$(this).offset().left-2);
		   $('.topSearchLayer').css('top',$(this).offset().top+29);
		   $('.topSearchLayer').show();
		   },
	   function(){
		   $('.topSearchLayer').hide();
		   }
	)
	$('.topSearchLayer').hover(
	   function(){
		   $(this).show();
		   },
	   function(){
		   $(this).hide();
		   }
	)
	//--
	$('.indexFlash').hover(
	   function(){
		   $(this).find('.rightBtn').show();
		   $(this).find('.leftBtn').show();
		   },
	   function(){
		   $(this).find('.rightBtn').hide();
		   $(this).find('.leftBtn').hide();
		   }
	)
	$('.indexFlash').find('.list2').find('li:last').css('border','0px');
	$('.indexFlash').find('.list2').find('li').hover(
	   function(){
		   $(this).addClass('liNow');
		   },
	   function(){
		   $(this).removeClass('liNow');
		   }
	)
	//--
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
	
	
	
	
	$('.rhpPart4').find('li').hover(
	   function(){
		   $(this).addClass('liNow');
		   },
	   function(){
		   $(this).removeClass('liNow');
		   }
	)
	$('.rhpPart4').find('.rightBtn').click(function(){
		imgScrollRight2($('.rhpPart4').find('.list'),$('.rhpPart4').find('.list').find('li').length-4,225,0);
		})	
	$('.rhpPart4').find('.leftBtn').click(function(){
		imgScrollLeft2($('.rhpPart4').find('.list'),$('.rhpPart4').find('.list').find('li').length-4,225,0);
		})
	//--
	$('.rhpPart5').find('li').hover(
	   function(){
		   $(this).addClass('liNow');
		   },
	   function(){
		   $(this).removeClass('liNow');
		   }
	)
	$('.rhpPart5').find('.rightBtn').click(function(){
		imgScrollRight2($('.rhpPart5').find('.list'),$('.rhpPart5').find('.list').find('li').length-5,160,1);
		})	
	$('.rhpPart5').find('.leftBtn').click(function(){
		imgScrollLeft2($('.rhpPart5').find('.list'),$('.rhpPart5').find('.list').find('li').length-5,160,1);
		})
	
	
	$('.telPart4').find('ul').width($('.telPart4').find('li').length/2*130);
	$('.telPart4').find('li').hover(
	   function(){
		   $(this).addClass('liNow');
		   },
	   function(){
		   $(this).removeClass('liNow');
		   }
	)
	$('.telPart4').find('.rightBtn').click(function(){
		imgScrollRight2($('.telPart4').find('.list'),$('.telPart4').find('.list').find('li').length/2-2,130,0);
		})	
	$('.telPart4').find('.leftBtn').click(function(){
		imgScrollLeft2($('.telPart4').find('.list'),$('.telPart4').find('.list').find('li').length/2-2,130,0);
		})
	//--
	$('.telPart3').find('li').each(function(i){
		$(this).find('.btn').find('a').toggle(
		   function(){
			   $('.telPart3').find('li').eq(i).addClass('liNow');
			   $(this).html("收起");
			   $('#ct1').hide();
			   },
		   function(){
			   $('.telPart3').find('li').eq(i).removeClass('liNow');
			   $(this).html("更多");
			   $('#ct1').show();
			   }
		)
		})	
	
	//--
	$('.indexPart3_03').find('li:last').css('border','0px');
	$('.Orders').find('tr:last').find('td').css('border','0px');
	//--
	$('.orderLayer1A').click(function(){
		$('.orderLayer').hide();
		$('.orderLayer1').css('left',$(this).offset().left-325);
		$('.orderLayer1').css('top',$(this).offset().top+12);
		$('.orderLayer1').show();
		})
	$('.orderLayer2A').click(function(){
		$('.orderLayer').hide();
		$('.orderLayer2').css('left',$(this).offset().left-440);
		$('.orderLayer2').css('top',$(this).offset().top+12);
		$('.orderLayer2').show();
		})
	$('.orderLayer3A').click(function(){
		$('.orderLayer').hide();
		$('.orderLayer3').css('left',$(this).offset().left-490);
		$('.orderLayer3').css('top',$(this).offset().top+12);
		$('.orderLayer3').show();
		})
	$('.orderLayer4A').click(function(){
		$('.orderLayer').hide();
		$('.orderLayer4').css('left',$(this).offset().left-537);
		$('.orderLayer4').css('top',$(this).offset().top+12);
		$('.orderLayer4').show();
		})
	$('.ComplaintLayerA').click(function(){
		$('.orderLayer').hide();
		$('.ComplaintLayer').css('left',$(this).offset().left-527);
		$('.ComplaintLayer').css('top',$(this).offset().top+12);
		$('.ComplaintLayer').show();
		})
	$('.ComplaintLayer2A').click(function(){
		$('.orderLayer').hide();
		$('.ComplaintLayer2').css('left',$(this).offset().left-474);
		$('.ComplaintLayer2').css('top',$(this).offset().top+32);
		$('.ComplaintLayer2').show();
		})	
	$('.trainLayerA').click(function(){
		$('.orderLayer').hide();
		$('.trainLayer').css('left',$(this).offset().left-474);
		$('.trainLayer').css('top',$(this).offset().top+32);
		$('.trainLayer').show();
		})	
	$('.trainLayer2A').click(function(){
		$('.orderLayer').hide();
		$('.trainLayer2').css('left',$(this).offset().left-330);
		$('.trainLayer2').css('top',$(this).offset().top+12);
		$('.trainLayer2').show();
		})			
	$('.orderLayer').find('.close').click(function(){
		$('.orderLayer').hide();
		})
	//--
	$('.serviceLayerA').click(function(){
		$('.pageLayer').hide();
		$('.serviceLayer').css('left',$(this).offset().left-474);
		$('.serviceLayer').css('top',$(this).offset().top+32);
		$('.serviceLayer').show();
		})
	$('.lyLayerA').click(function(){
		$('.pageLayer').hide();
		$('.lyLayer').css('left',$(this).offset().left-525);
		$('.lyLayer').css('top',$(this).offset().top+12);
		$('.lyLayer').show();
		})
	$('.orderLayer5A').hover(
	    function(){
		$('.pageLayer').hide();
		$('.orderLayer5').css('left',$(this).offset().left);
		$('.orderLayer5').css('top',$(this).offset().top+20);
		$('.orderLayer5').show();
		},
		function(){}
		)	
	$('.jjjyLayerA').click(function(){
		$('.pageLayer').hide();
		$('.jjjyLayer').css('left',$(this).offset().left-525);
		$('.jjjyLayer').css('top',$(this).offset().top+12);
		$('.jjjyLayer').show();
		})
	$('.yfpjLayerA').click(function(){
		$('.yfpjLayer').hide();
		$('.yfpjLayer').css('left',$(this).offset().left-705);
		$('.yfpjLayer').css('top',$(this).offset().top+12);
		$('.yfpjLayer').show();
		})			
	$('.coursePublish2LayerA').click(function(){
		$('.coursePublish2Layer').hide();
		$('.coursePublish2Layer').css('left',$(this).offset().left);
		$('.coursePublish2Layer').css('top',$(this).offset().top+12);
		$('.coursePublish2Layer').show();
		})		
	$('.pageLayer').find('.close').click(function(){
		$('.pageLayer').hide();
		})	
	//--
	if($('.Vertical_scroll').length>0){
		Vertical_scrollFun();
		}
	//--
	$('.course').find('.timeA').click(function(){
		$('.courseLayer1').css('left',$(this).offset().left);
		$('.courseLayer1').css('top',$(this).offset().top+16);
		//$('.courseLayer1').show();
		Vertical_scrollFun();
		})	
	//--
	$('.sideNav').find('li').each(function(i){
		$(this).find('.name').find('a').click(function(){
			/*
			$('.sideNav').find('li').find('.name').find('a').removeClass('aNow');
			$(this).addClass('aNow');
			$('.sideNav').find('li').find('.list').hide();
			$('.sideNav').find('li').eq(i).find('.list').show();
			*/
			})
		})
	//--
	$('.Orders').find('tr').find('th:last').css('border','0px');	
	$('.sideList2').find('li:last').css('background','none');	
	//--
	$('.coursePublishA').hover(
	   function(){
		   $('.coursePublishLayer').css('left',$(this).offset().left-350);
		   $('.coursePublishLayer').css('top',$(this).offset().top+30);
		   $('.coursePublishLayer').show();
		   },
	   function(){
		   $('.coursePublishLayer').hide();
		   }
	)
	$('.coursePublish2A').hover(
	   function(){
		   $('.coursePublishLayer').css('left',$(this).offset().left-350);
		   $('.coursePublishLayer').css('top',$(this).offset().top+10);
		   $('.coursePublishLayer').show();
		   },
	   function(){
		   $('.coursePublishLayer').hide();
		   }
	)
	$('.coursePublishLayer').hover(
	   function(){
		   $(this).show();
		   },
	   function(){
		   $(this).hide();
		   }
	)
	$('.recordLayerA').hover(
	   function(){
		   $('.recordLayer').css('left',$(this).offset().left+15);
		   $('.recordLayer').css('top',$(this).offset().top+10);
		   $('.recordLayer').show();
		   },
	   function(){
		   $('.recordLayer').hide();
		   }
	)	
	$('.myComplaintsLayerA').hover(
	   function(){
		   $('.myComplaintsLayer').css('left',$(this).offset().left-350);
		   $('.myComplaintsLayer').css('top',$(this).offset().top+15);
		   $('.myComplaintsLayer').show();
		   },
	   function(){
		   $('.myComplaintsLayer').hide();
		   }
	)	
	$('.pageLayer_1').find('.close').click(function(){
		$('.pageLayer_1').hide();
		})	
	//--
	$('.sNavA').each(function(i){
		$(this).hover(
		   function(){
			   $('.sNav').eq(i).show();
			   },
		   function(){
			   $('.sNav').hide();
			   }
		)
		})	
	$('.sNav').each(function(i){
		$(this).hover(
		   function(){
			   $('.sNavA').eq(i).addClass('aNow');
			   $(this).show();
			   },
		   function(){
			   $('.sNavA').removeClass('aNow');
			   $(this).hide();
			   }
		)
		})	
	//--
	var fadeFlashTime=new Array();
	$('.fadeFlash').find('li:first').fadeIn(500);
	$('.fadeFlash').each(function(i){
		fadeFlashTime[i] = setInterval("fadeFlashFun("+i+")",5000);
		$(this).find('.btnDiv').find('span').each(function(ii){
			$(this).hover(
			function(){
				clearInterval(fadeFlashTime[i]);
				$('.fadeFlash').eq(i).find('.btnDiv').find('span').removeClass('spanNow');
				$(this).addClass('spanNow');
				$('.fadeFlash').eq(i).find('li').eq(fadeFlashNow[i]).fadeOut(500);
				fadeFlashNow[i]=ii;
				$('.fadeFlash').eq(i).find('li').eq(fadeFlashNow[i]).fadeIn(500);
				fadeFlashTime[i] = setInterval("fadeFlashFun("+i+")",5000);
				if($('.indexFlash').length>0&&fadeFlashNow[i]==0){
					$('.indexFlash').find('.listDiv').show();
					}else{
						$('.indexFlash').find('.listDiv').hide();
						}
				},
			function(){}	
				)
			})
		$(this).find('.rightBtn').click(function(){
			clearInterval(fadeFlashTime[i]);
			$('.fadeFlash').eq(i).find('.btnDiv').find('span').removeClass('spanNow');
			$('.fadeFlash').eq(i).find('li').eq(fadeFlashNow[i]).fadeOut(500);
			if(fadeFlashNow[i]<$('.fadeFlash').eq(i).find('li').length-1){
				fadeFlashNow[i]++;
				}else{
					fadeFlashNow[i]=0;
					}
			$('.fadeFlash').eq(i).find('.btnDiv').find('span').eq(fadeFlashNow[i]).addClass('spanNow');
			$('.fadeFlash').eq(i).find('li').eq(fadeFlashNow[i]).fadeIn(500);
			fadeFlashTime[i] = setInterval("fadeFlashFun("+i+")",5000);
			if($('.indexFlash').length>0&&fadeFlashNow[i]==0){
					$('.indexFlash').find('.listDiv').show();
					}else{
						$('.indexFlash').find('.listDiv').hide();
						}
			})	
		$(this).find('.leftBtn').click(function(){
			clearInterval(fadeFlashTime[i]);
			$('.fadeFlash').eq(i).find('.btnDiv').find('span').removeClass('spanNow');
			$('.fadeFlash').eq(i).find('li').eq(fadeFlashNow[i]).fadeOut(500);
			if(fadeFlashNow[i]>0){
				fadeFlashNow[i]--;
				}else{
					fadeFlashNow[i]=$('.fadeFlash').eq(i).find('li').length-1;
					}
			$('.fadeFlash').eq(i).find('.btnDiv').find('span').eq(fadeFlashNow[i]).addClass('spanNow');
			$('.fadeFlash').eq(i).find('li').eq(fadeFlashNow[i]).fadeIn(500);
			fadeFlashTime[i] = setInterval("fadeFlashFun("+i+")",5000);
			if($('.indexFlash').length>0&&fadeFlashNow[i]==0){
					$('.indexFlash').find('.listDiv').show();
					}else{
						$('.indexFlash').find('.listDiv').hide();
						}
			})	
		})
	//--
	$('.indexPart1_03').find('.rightBtn').click(function(){
		$('.indexPart1_03').find('.list').animate({scrollTop: $('.indexPart1_03').find('.list').scrollTop()+211}, 200);
		})	
	$('.indexPart1_03').find('.leftBtn').click(function(){
		$('.indexPart1_03').find('.list').animate({scrollTop: $('.indexPart1_03').find('.list').scrollTop()-211}, 200);
		})
	//--
	$('.indexPart2_03').find('.rightBtn').click(function(){
		$('.indexPart2_03').find('.list').animate({scrollTop: $('.indexPart2_03').find('.list').scrollTop()+20}, 200);
		})	
	$('.indexPart2_03').find('.leftBtn').click(function(){
		$('.indexPart2_03').find('.list').animate({scrollTop: $('.indexPart2_03').find('.list').scrollTop()-20}, 200);
		})	
	//--
	$('.rightLayer').find('.btn').each(function(i){
		$(this).hover(
		   function(){
			   $('.rightLayer').find('.name').eq(i).animate({width: $('.rightLayer').find('.name').eq(i).find('div').width()+33}, 300);
			   $('.rightLayer').find('li').eq(i).find('.btn').find('img:first').show();
			   $('.rightLayer').find('li').eq(i).find('.btn').find('img:last').hide();
			   },
		   function(){
			   }
		)
		})
	$('.rightLayer').find('li').each(function(i){
		$(this).hover(
		   function(){
			   },
		   function(){
			   $('.rightLayer').find('.name').eq(i).animate({width: 0}, 300);
			   $('.rightLayer').find('li').eq(i).find('.btn').find('img:first').hide();
			   $('.rightLayer').find('li').eq(i).find('.btn').find('img:last').show();
			   }
		)
		})		
	//--
	$(window).scroll(function(){
			if($(window).scrollTop()>$(window).height()/2){
				$('.topA').fadeIn('slow');
				}else{
					$('.topA').fadeOut('slow');
					}
			})	
	//--
	var FreeCourseTime;
	if($('.indexPart3_02').length>0){
		$('.FreeCourseLayer').each(function(i){
			FreeCourseArray[i]=$(this).height();
			$(this).css('padding-top',$(this).height());
			$(this).height(0);
			})
		}
	$('.indexPart3_02').find('img').each(function(i){
		$(this).hover(
		   function(){
			   $('.FreeCourseLayer').hide();
			   clearTimeout(FreeCourseTime);
		       FreeCourseTime=setTimeout("FreeCourse("+i+")",100);
			   },
		   function(){
			   FreeCourse2(i);
			   clearTimeout(FreeCourseTime);
			   }
		)
		$(this).mousemove(function(e){
			xx=e.pageX;
			$('.FreeCourseLayer').eq(i).css('left',xx-206);
		})
		})	
	//--
	$('.btn1').hover(
	   function(){
		   $(this).addClass('btn1Now');
		   },
	   function(){
		   $(this).removeClass('btn1Now');
		   }
	)
	$('.btn2').hover(
	   function(){
		   $(this).addClass('btn1Now');
		   },
	   function(){
		   $(this).removeClass('btn1Now');
		   }
	)
	$('.btnDiv').find('input').hover(
	   function(){
		   $(this).addClass('btn1Now');
		   },
	   function(){
		   $(this).removeClass('btn1Now');
		   }
	)
	//--
	$('.timeLayerA').hover(
	   function(){
		   $('.timeLayer').css('top',$(this).offset().top+5);
		   $('.timeLayer').show();
		   },
	   function(){
		   $('.timeLayer').hide();
		   }
	)	
	$('.timeLayer').hover(
	   function(){
		   $(this).show();
		   },
	   function(){
		   $(this).hide();
		   }
	)
	//--
	$('.sellerPart2Btn').click(function(){
		$('.sellerPart2Layer').css('left',$(this).offset().left-330);
		$('.sellerPart2Layer').css('top',$(this).offset().top+20);
		$('.sellerPart2Layer').show();
		})
	/*
	$('.pageTimeLayerA').click(function(){
		var left = $(this).offset().left-30;
		if (left + 300 > $(window).width()) 
			left = $(window).width() - 300;
		$('.pageTimeLayer').css('left',left);
		
		$('.pageTimeLayer').css('top',$(this).offset().top+25);
		$('.pageTimeLayerBg').height($(window).height());
		$('.pageTimeLayerBg').show();
		})
	*/
	$('.pageTimeLayerBg').click(function(){
		$(this).hide();
		$('.pageTimeLayer').css('left',"-150%");
		})	
	//--
	$('.dateLayer11').find('li').find('span').click(function(){
		if ($(this).hasClass('spanDisable'))
			return;
	
		$('.dateLayer11 li span').removeClass('spanNow');
	
		var add = 1;
		//alert($(this).attr('class'));
		if($(this).attr('class')=="spanNow"){
			$(this).removeClass('spanNow');
			add = -1;
			}else{
				$(this).addClass('spanNow');
				}
				
			timeok($(this).parent().attr('id').replace("time",""), $("span").index(this) % 2, add);
		
		})
	$('.dateLayer11').hover(
	   function(){},
	   function(){
		   //$('.dateLayer11').hide();
		   }
	)	
	//--
	$('.storeLayer').find('.rightBtn').click(function(){
		imgScrollRight2($('.storeLayer').find('.list'),$('.storeLayer').find('.list').find('li').length-1,562,0);
		})	
	$('.storeLayer').find('.leftBtn').click(function(){
		imgScrollLeft2($('.storeLayer').find('.list'),$('.storeLayer').find('.list').find('li').length-1,562,0);
		})
	//--
	$('.storePart4').find('li').click(function(){
		prompt_fun('.storeLayer');
		})
	//--
	$('.shopCartList').find('.rightBtn').click(function(){
		imgScrollRight2($('.shopCartList').find('.list'),$('.shopCartList').find('.list').find('li').length-5,184,0);
		})	
	$('.shopCartList').find('.leftBtn').click(function(){
		imgScrollLeft2($('.shopCartList').find('.list'),$('.shopCartList').find('.list').find('li').length-5,184,0);
		})	
	//--
	$('.DetailLayerA').hover(
	    function(){
			$('.DetailLayer').css('left',$(this).offset().left-430);
			$('.DetailLayer').css('top',$(this).offset().top+10);
			$('.DetailLayer').show();
			},
		function(){
			$('.DetailLayer').hide();
			}
	)
	$('.DetailLayer').hover(
	    function(){
			$(this).show();
			},
		function(){
			$(this).hide();
			}
	)
	$('.DetailLayer').find('.close').click(function(){
		$('.DetailLayer').hide();
		})					
	//
	
	/*
	$('.basicList').find('li').toggle(
	     function(){
	         $(this).addClass('liNow');
		         $(this).find('input').val(1);
	         },
	     function(){
	         $(this).removeClass('liNow');
	         $(this).find('input').val(0);
	         }
	    )  
	*/
	
	
	
	
	$('.coachFlash').find('.fr').find('img').fadeTo(10,0.6);
	$('.coachFlash').find('.fr').find('li:first').find('img').fadeTo(10,1);
	$('.coachFlash').find('.fl').find('li:first').fadeIn(500);		
	$('.coachFlash').find('.fr').find('li').each(function(i){
		$(this).hover(
		   function(){
			   $('.coachFlash').find('.fr').find('li').find('img').fadeTo(10,0.6);		
			   $(this).find('img').fadeTo(10,1);	
			   $('.coachFlash').find('.fr').find('li').removeClass('liNow');
			   $(this).addClass('liNow');
			   $('.coachFlash').find('.fl').find('li').hide();
			   $('.coachFlash').find('.fl').find('li').eq(i).fadeIn(500);
			   },
		   function(){}
		)
		})
	//--
	$('.helpNav').find('a:last').css('background','none');	
	$('.contact').find('li:last').css('background','none');		
	//--
	$('.mapLayer1A').click(function(){
		$('.mapLayer1').css('left',$(this).offset().left-5);
		$('.mapLayer1').css('top',$(this).offset().top+30);
		$('.mapLayer1').show();
		})	
	$('.mapLayer1').find('.close').click(function(){
		$('.mapLayer1').hide();
		})
	//--
	$('.mapLayer').find('.rightBtn').click(function(){
		imgScrollRight2($('.mapLayer').find('.list'),$('.mapLayer').find('.list').find('li').length-1,310,0);
		})	
	$('.mapLayer').find('.leftBtn').click(function(){
		imgScrollLeft2($('.mapLayer').find('.list'),$('.mapLayer').find('.list').find('li').length-1,310,0);
		})	
	$('.mapPart1').find('a').click(function(){
		$('.mapLayer').css('left',$(this).offset().left-155);
		$('.mapLayer').css('top',$(this).offset().top-330);
		$('.mapLayer').show();
		})	
	$('.mapLayer').find('.close').click(function(){
		$('.mapLayer').hide();
		})
	//--
	$('.memberLayer10').find('tr').hover(
	   function(){
		   $(this).find('td').css('background','#f4f4f4');
		   },
	   function(){
		   $(this).find('td').css('background','#fff');
		   }
	)	
	$('.memberLayer10A').hover(
	   function(){
		   $('.memberLayer10').css('left',$(this).offset().left-405);
		   $('.memberLayer10').css('top',$(this).offset().top+10);
		   $('.memberLayer10').show();
		   },
	   function(){
		   $('.memberLayer10').hide();
		   }
	)
	$('.memberLayer10').find('td').click(function(){
		$('.memberLayer10').hide();
		})
	$('.memberLayer10').hover(
	   function(){
		   $(this).show();
		   },
	   function(){
		   //$(this).hide();
		   }
	)		
	
	
//--
	$('.signInA').click(
	   function(){
		   $('.signInLayer').css('left',$(this).offset().left-170);
		   $('.signInLayer').css('top',$(this).offset().top+15);
		   $('.signInLayer').show();
		   }
	)
	$('.signInLayer').find('.close').click(function(){
		$('.signInLayer').hide();
		})
	//


	
	
	})
	
	
	
	
	
	//添加收藏
	function subajax(url1) {
	$.ajax({
            type: 'GET',
            url: url1,
            dataType: 'json',
            success: function (data) {
				var re = data['re'];
				var word = data['word'];
				if (re > 0) {
					alert(word);
				}	
				else {
					alert(word);
				}
            }
        });
    
}
	
	
	
	
	
	
	//发送手机验证码
function sendmobvalid(host, mob, btid) {
		//var mob = $('#mobile').val();
		if (mob == undefined || mob == null || mob.length < 1) {
			alert("请输入手机号");
			return;
		}
		
		$.ajax({
            type: 'POST',
            url: host + '/kailian/CmsUserInfo/mobileValidnum.do',
            dataType: 'json',
            data: {mobile:mob},
            success: function (data) {
				if (data['re'] > 0) {
					//alert(data['word']);
					valiloop(btid, 30);
				}
				else {
					alert(data['word']);
				}
            }
        });
	}
function sendemailvalid(host, mob, btid) {
		//var mob = $('#mobile').val();
		if (mob == undefined || mob == null || mob.length < 1) {
			alert("请输入邮箱地址");
			return;
		}
		
		$.ajax({
            type: 'POST',
            url: host + '/kailian/CmsUserInfo/emailValidnum.do',
            dataType: 'json',
            data: {email:mob},
            success: function (data) {
				if (data['re'] > 0) {
					//alert(data['word']);
					valiloop(btid, 30);
				}
				else {
					alert(data['word']);
				}
            }
        });
	}
	
	
	function valiloop(btid, num) {
		//alert("valiloop('" + btid + "'," + num + ")");
		if (num <= 0) {
			$('#' + btid).attr('disabled',false);
			if ($('#' + btid).is('input'))
				$('#' + btid).val("获取手机验证码");
			else
				$('#' + btid).html("获取手机验证码");
		}
		else {
			$('#' + btid).attr('disabled',true);
			if ($('#' + btid).is('input'))
				$('#' + btid).val(num + "秒后重新发送");
			else
				$('#' + btid).html(num + "秒后重新发送");
			num --;
			setTimeout("valiloop('" + btid + "'," + num + ")", 1000);
		}
	}

	
	