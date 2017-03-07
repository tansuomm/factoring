$(function(){
	// 获取联系信息
    $.ajax({
        type:'get',
        url:'http://127.0.0.1/factoring/index.php/data/contact',
        dataType:'json'
    }).done(function(data){
        var tpl = $('#contactus').html();
        
        var html = juicer(tpl,data[0]);
        //console.log(html);
        $('.map-content').append(html);
        //active激活
    }).fail(function(data){
        alert('哎哟网太卡了?')
    });
    // var map = new BMap.Map("bmap");
    // map.centerAndZoom(new BMap.Point(116.404,39.915),11);
    // map.addControl(new BMap.NavigationControl());
    // map.setCurrentCity("北京");
    // map.enableScrollWheelZoom(true);
});
