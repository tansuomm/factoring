jQuery(function($) {'use strict',
	 // 获取banner图片
    $.ajax({
        type:'get',
        url:'http://127.0.0.1/factoring/index.php/data/banner',
        dataType:'json'
    }).done(function(data){
       
        var tpl = $('#banner').html();
        var html = juicer(tpl,data);
        //console.log(html);
        $('#main-slider').prepend(html);
        //active激活
        $('.carousel-indicators > li:first').addClass('active');
        $('.carousel-inner > div:first').addClass('active');
    }).fail(function(data){
        layer.msg('玩命加载中...');
    });
   // 获取合作伙伴
    $.ajax({
        type:'get',
        url:'http://127.0.0.1/factoring/index.php/data/partner',
        dataType:'json'
    }).done(function(data){
        var tpl = $('#coporation').html();
        var html = juicer(tpl,data);
        //console.log(html);
        $('.partners').prepend(html);
    }).fail(function(data){
       layer.msg('玩命加载中...');
    });
	//#main-slider
	$(function(){
		$('#main-slider.carousel').carousel({
			interval: 8000
		});
	});

	// accordian
	$('.accordion-toggle').on('click', function(){
		$(this).closest('.panel-group').children().each(function(){
		$(this).find('>.panel-heading').removeClass('active');
		 });

	 	$(this).closest('.panel-heading').toggleClass('active');
	});

	//Initiat WOW JS
	new WOW().init();

	//goto top
	$('.gototop').click(function(event) {
		event.preventDefault();
		$('html, body').animate({
			scrollTop: $("body").offset().top
		}, 500);
	});		
});