$(function(){
  var caid = getUrlParam("id");
  $.ajax({
  	type:'post',
    url:'http://127.0.0.1/factoring/index.php/data/caseItem',
    dataType:'json',
    data:{caid:caid}
	}).done(function(data){
		var tpl = $('#casetemplate').html();
		var html = juicer(tpl,data.list[0]);
		$('#caseItem').html(html);
	}).fail(function(){
		layer.msg('玩命加载中...');
	});
});
/*获取url 参数*/
function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return unescape(r[2]); return null; //返回参数值
}
