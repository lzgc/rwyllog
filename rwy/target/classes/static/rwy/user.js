(function () {
	$('#table').bootstrapTable({ 
		url: "/home/user",  
	    //这个接口需要处理bootstrap table传递的固定参数,并返回特定格式的json数据    
	    //默认值为 'limit',传给服务端的参数为：limit, offset, search, sort, order Else  
	    //请求方法  
	    method: 'post',  
	    toolbar : "#toolbar",
	    //是否显示行间隔色  
	    striped: true,  
	    //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）       
	    cache: false,      
	    //是否显示分页（*）    
	    pagination: true,     
	    //是否启用排序    
	    sortable: false,  
	    showToggle: "true",//是否显示 切换试图（table/card）按钮
	    //排序方式   
	    sortOrder: "desc",      
	    //初始化加载第一页，默认第一页  
	    //我设置了这一项，但是貌似没起作用，而且我这默认是0,- -  
	    showRefresh:true,//刷新按钮
	    pageNumber:1,     
	    //每页的记录行数（*）     
	    pageSize: 5,    
	    //可供选择的每页的行数（*）      
	    pageList: [5, 10, 15, 20], 
	    paginationPreText: '',//指定分页条中上一页按钮的图标或文字,这里是<
        paginationNextText: '›',
        data_local: "zh-US",//表格汉化
	    sidePagination: "server", 
	    queryParamsType: "undefined",
	    queryParams: function queryParams(params){
            var param = {    
                 pageNumber: params.pageNumber,    
                 pageSize: params.pageSize
             };    
             return param;    
        },
	    //是否显示搜索 搜索input name= searchText 服务端获取该值查询即可  
	    search: true, 
	    columns:[{
	    	field: 'id',
	    	title: 'id'
	    },{
	    	field: 'loginname',
	    	title: '登录名称'
	    },{
	    	field: 'name',
	    	title: '真实姓名'
	    },{
	    	field: 'phone',
	    	title: '联系电话'
	    },{
	    	title: '操作',
	    	field: 'operate',
	    	align: 'center',
	    	formatter: function(value,row,index){
	    		var id = value;
	    		var result = "";
	    		 result += "<a onclick=\"EditViewById('" + id + "')\" title='修改' class='btn btn-warning btn-rounded'>修改</a>";
				    result += "<a onclick=\"DeleteByIds('" + id + "')\" title='删除' class='btn btn-danger btn-rounded'> 删除 </a>";
				    return result;
	    	}
	    }]
	});
})();