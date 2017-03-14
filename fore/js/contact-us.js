$(function(){
    // form 插件提交表单
    $('#main-contact-form').submit(function() {
        $(this).ajaxSubmit(
                function(data){
                    //返回结果
                    if($.trim(data)=="success"){
                        layer.msg('提交成功');
                    }
                    $('#main-contact-form').resetForm();
                }
            );
        return false;
    });

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
        layer.msg('玩命加载中...');
    });
    var map = new BMap.Map("bmap");
    map.centerAndZoom(new BMap.Point(116.439,39.926),11);
    map.addControl(new BMap.NavigationControl());
    map.setCurrentCity("北京");
    map.enableScrollWheelZoom(true);
});
