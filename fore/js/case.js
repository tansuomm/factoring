$(function(){
  //加载数据
	$.ajax({
        type:'get',
        url:'http://127.0.0.1/factoring/index.php/data/cases',
        dataType:'json'
    }).done(function(arr){
   		var tpl = $('#wrapCase').html();
      var html = juicer(tpl,arr);
      $('#wrapcontainer').html(html);
    }).fail(function(data){
        alert('哎哟网太卡了?')
    });
});

function showNewItem(caid){
  var pageUrl = "case-item.html?id=" + caid;
  window.location.href=pageUrl;
}

