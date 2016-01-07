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
function Vertical_scrollFun2(){
	$(".Vertical_scroll2").jscroll({ W:"12px"
	,BgUrl:"url(image/scroll.gif)"
	//,Bg:"#eee"
	,Bar:{  Bd:{Out:"#373737",Hover:"#373737"}
			,Bg:{Out:"-12px center repeat-y",Hover:"-12px center repeat-y",Focus:"-12px center repeat-y"}
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