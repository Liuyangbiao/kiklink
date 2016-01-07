

(function($) {
	$(function() {
		$(document).ready(function() {

		
		
		
			//推荐课程轮播效果
			$("#owl-lessons").owlCarousel({
				navigation : true, 
				pagination: false,
				mouseDrag: false,
				navigationText : ['', ''],
				items : 4,
				responsive: false
			});
			
			//首页轮播效果
			$("#banner-slider").bxSlider({
				pagerCustom: '#bx-pager',
				controls: false
			});
			
			//搜索tab的切换
			$(".search-tab li").on('click', function(){
				$(".search-tab li").removeClass('active');
				$(this).addClass('active');
			});
			
			//购物车详情的显示和隐藏
			$(".cart-wrap").on('mouseenter', function() {
				$(this).find('.cart-dialog').show();
			});
			$(".cart-wrap").on('mouseleave', function() {
				$(this).find('.cart-dialog').hide();
			});
			
			//瀑布流加载
			$(".page-more a").on('click', function(e){
				pagenow ++;
				if (pagenow < pagecount) {
				var __this = $(this);
				e.preventDefault();
				$.get(host5 + 'kailian/KlSellerProduct/indexclass.do?pageno=' + pagenow + '&pageNumber=' + pagenow,function(data){
					console.log(data);
					$(__this).closest('.page-more').before(data);
					
				});
				}
				else {
					$(".page-more a").hide();
				}
				
				
			});
			
			$(".page-more a").click();
			
		});
	});
})(jQuery);