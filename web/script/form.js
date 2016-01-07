var selectDivNow=0;	
$(function(){
	//--
	haobawode();
	//
	})
	
	
function haobawode() {


	$('.selectDiv').each(function(i){
		$(this).find('span').text($(this).find('option:first').text());
		$(this).click(function(){
			selectDivNow=i;
			var selectList="";
			$(this).find('option').each(function(){
				selectList=selectList+"<li>"+$(this).text()+"</li>"
				})
			$('.selectLayer').find('ul').html(selectList);	
			$('.selectLayer').width($(this).width());
			$('.selectLayer').css('left',$(this).offset().left);
			$('.selectLayer').css('top',$(this).offset().top+$(this).height()+1);
			$('.selectLayer').show();
			selectLiFun();
			selectLiClick();
			selectLiClick2();
			})
		})
	$('.selectLayer').hover(
	    function(){
			$(this).show();
			},
		function(){
			$(this).hide();
			}
	)
	
	
	//--复杂框
	$('.check').toggle(
	   function(){
		   $(this).addClass('checkNow');
		   $(this).find('input').val(1);
		   },
	   function(){
		   $(this).removeClass('checkNow');
		   $(this).find('input').val(0);
		   }
	)
	//--单选
	$('.radio').click(
	   function(){
		   $('.radio').removeClass('radioNow');
		   $(this).addClass('radioNow');
		   $('.radio').find('input').val(0);
		   $(this).find('input').val(1);
		   }
	)
	//-------文本输入框文字消失显示
	$('.input_hover').focus(function(){
		if($(this).attr('value')==$(this).attr('title')){
			$(this).attr('value','');
			}
		})
	$('.input_hover').blur(function(){
		if($(this).attr('value')==$(this).attr('title')||$(this).attr('value')==""){
			$(this).attr('value',$(this).attr('title'));
			}
		})		
	//--数字框
	$('.numInput').each(function(i){
		
		$(this).find('.num').html($(this).find('input').val());

		$(this).find('.jiaBtn').click(function(){
			
			$('.numInput').eq(i).find('input').val(Number($('.numInput').eq(i).find('input').val())+1);
			$('.numInput').eq(i).find('.num').html($('.numInput').eq(i).find('input').val());
			})
		$(this).find('.jianBtn').click(function(){
			if(Number($('.numInput').eq(i).find('input').val())>0){
				$('.numInput').eq(i).find('input').val(Number($('.numInput').eq(i).find('input').val())-1);
			}
			$('.numInput').eq(i).find('.num').html($('.numInput').eq(i).find('input').val());
			})	
		})
	//--
	$('.input1').focus(function(){
		$(this).addClass('inputNow');
		})
	$('.input1').blur(function(){
		$(this).removeClass('inputNow');
		})		
}
	
function selectLiClick(){
	$('.selectLayer').find('li').each(function(i){
		$(this).click(function(){
			
			$('.selectDiv').eq(selectDivNow).find('span').text($(this).text());
			$('.selectDiv').eq(selectDivNow).find('option').attr('selected',false);
			$('.selectDiv').eq(selectDivNow).find('option').eq(i).attr('selected',true);
			
			var classname =  $('.selectDiv').eq(selectDivNow).find('option').eq(i).attr('class');
			if (classname == 'option_pro') {
				getcities($('.selectDiv').eq(selectDivNow).find('option').eq(i).attr('value'));
			}
			
			})
		})	
	}	
function selectLiFun(){

	$('.selectLayer').find('li').hover(
	    function(){
			$(this).css('background','#f2f2f2');
			},
		function(){
			$(this).css('background','none');
			}
	)
	}	
//--
function selectLiClick2(){
	$('.selectLayer').find('li').each(function(i){
		if($('.ForgotStep2Div').length>0){
		$(this).click(function(){
			
			$('.ForgotStep2Div').hide();
			$('.ForgotStep2Div').eq(i).show();
			})
		}
		//--	
		})	
	}	
	
	
	
function errdiv(pid, re, word) {
	if (re > 0) {
		$('#ico-' + pid).html("<div class='ico2'>" + word + "</div>");
	}
	else {
		$('#ico-' + pid).html("<div class='ico1'>" + word + "</div>");
	}
}

/**
 * 购物车手动输入实现思路
 * 1、取的修改后数量保存到init1
 * 2、修改二维数组ar中对应的信息
 * 3、修改总价
 */
//obj	当前操作对象，isCal<true/flase>	是否计算显示单个商品总价
function calPri(obj, isCal){
	$_this = $(obj);//转换为JQUERY对象
	var id = $_this.attr("id");
	var pri = $_this.attr("pri");
	var count = parseInt($_this.val());
	id = parseInt(id.substring(6));
	ar[id] = [pri, count];
	if(isCal){//商品销售订单
		$("#price"+id).text("￥" + pri*count);
		$("#money1").text(parseInt($("#money1").text()) - (init1-count)*pri);
		$("#money2").text(parseInt($("#money2").text()) - (init1-count)*pri);
	} else {//开练卡销售订单
		$("#zongji").val(parseInt($("#zongji").val()) - (init1-count)*pri);
	}
}

//删除已存储商品的总价
function jianQian(obj){
	$_this = $(obj);//转换为JQUERY对象
	init1 = $_this.val();
}








