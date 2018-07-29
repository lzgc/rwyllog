$(function(){
	
		$('#table').bootstrapTable({ 
			url: "/log/mylog",  
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
		    showExport: true, 
		    pageNumber:1,    
		    //每页的记录行数（*）     
		    pageSize: 5,    
		    //可供选择的每页的行数（*）      
		    pageList: [5, 10, 15, 20], 
		    paginationPreText: '上一页',//指定分页条中上一页按钮的图标或文字,这里是<
	        paginationNextText: '下一页',
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
		    columns: [
	        	{
	        		field: 'icnum',
	        		title: '网吧编号'
	        	},
	        	{
	        		field: 'icaddress',
	        		title: '网吧地区'
	        	},
	        	{
	        		field: "icp",
	        		title: '网吧问题'
	        	},
	        	{
	        		field: "contact",
	        		title: '网吧联系人'
	        	},
	        	{
	        		field: "phone",
	        		title: '联系人电话'
	        	},
	        	{
	        		field: "qq",
	        		title: 'QQ'
	        	},
	        	{
	        		field: "cause",
	        		title: '导致原因'
	        	},
	        	{
	        		field: "solution",
	        		title: '解决方案'
	        	},
	        	{
	        		field: "sop",
	        		title: '问题来源'
	        	},
	        	{
	        		field: "keyword",
	        		title: '关键词'
	        	},
	        	{
	        		field: null,
	        		title: '操作',
	        		formatter:function(value,row,index){
	        			var id = value;
	    	    		var result = "";
	    	    		 result += "<a onclick=\"EditViewById('" + id + "')\" title='修改' class='btn btn-warning btn-rounded'>修改</a>";
	    				    result += "<a onclick=\"DeleteByIds('" + id + "')\" title='删除' class='btn btn-danger btn-rounded'> 删除 </a>";
	    				    return result;
	        		}
	        	}
        ]
	});
		$('#toolbar').find('select').change(function () {
	        $("#table").bootstrapTable('destroy').bootstrapTable({
	            exportDataType: $(this).val()
	        });
	    });
		
		
});
function add(){
	layer.open({
        type: 2,
        title: '很多时候，我们想最大化看，比如像这个页面。',
        shadeClose: true,
        shade: false,
        maxmin: true, //开启最大化最小化按钮
        area: ['1150px', '650px'],
        content: '/log/addlog'

	});
}