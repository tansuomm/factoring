$(function(){
	//tpl links function
    function links(list){

    	return list.content.substr(0,49);
    }
    //加载数据
	$.ajax({
        type:'get',
        url:'http://127.0.0.1/factoring/index.php/data/cases',
        dataType:'json'
    }).done(function(arr){
   		var tpl = $('#wrapCase').html();
   		console.log(arr);
   		console.log(tpl);
       juicer.register('links_build',links);
       var html = juicer(tpl,arr);
       console.log(html);
       $('#wrapcontainer').html(html);
    }).fail(function(data){
        alert('哎哟网太卡了?')
    });

});
