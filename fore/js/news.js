
$(function(){
	var totalNum = 1,
		showNum = 3,
		limitNum= 10;
	dataarr = [];
	// 加载新闻先分页。
	$.ajax({
        type:'get',
        url:'http://127.0.0.1/factoring/index.php/data/news',
        dataType:'json'
    }).done(function(data){
        totalNum = data.list.length;
        dataarr = data.list;
        //初始化分页组件
    	callBackPagination(totalNum,showNum,limitNum);
       	// 渲染内容
       	xuanran(0,dataarr);
    }).fail(function(data){
        alert('哎哟网太卡了?')
    });
 	/* 点击改变内容 */
 	window.reLoad = function(id){
 		xuanran(id,dataarr);
 	}
 	/* 渲染内容详情 */
 	function xuanran(index,arr){
 		var index = index || 0;
       
 		var tpl = $('#newstemplate').html();
 		var htm = juicer(tpl,arr[index]);
 		$("#newsdata").html(htm);
 	}
	/*处理分页函数*/
	function callBackPagination(totalNum,showNum,limitNum) {
        var totalCount = Number(totalNum) || 1, 
        	showCount = Number(showNum),
            limit = Number(limitNum) || 10,
            dataarr = dataarr || [];

        createTable(1, limit, totalCount);
        $('#callBackPager').extendPagination({
            totalCount: totalCount,
            showPage: showCount,
            limit: limit,
            callback: function (curr, limit, totalCount) {
                createTable(curr, limit, totalCount);
            }
        });
    }
    function createTable(currPage, limit, total) {
        var html = [], showNum = limit;
        if (total - (currPage * limit) < 0) showNum = total - ((currPage - 1) * limit);
        html.push('<div class="col-sm-8">');
        for (var i = 1; i <= showNum; i++) {
            html.push('<li><a onclick="reLoad('+(limit*(currPage-1)+i-1)+')" href="javascript:void(0)">'+dataarr[limit*(currPage-1)+i-1].title+'</a></li>');
        }
       	html.push('</div>')
        html.push('<div class="col-sm-4">');
        for (var i = 1; i <= showNum; i++) {
            html.push('<span>'+ dataarr[limit*(currPage-1)+i-1].time +'</span><br>');
        }
        html.push('</div>');
        var mainObj = $('#mainContent');
        mainObj.empty();
        mainObj.html(html.join(''));
    }
    
});
