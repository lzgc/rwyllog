$(function(){
    $("#loginform").validate({
    	onsubmit:true,// 是否在提交是验证
    	onfocusout:false,// 是否在获取焦点时验证
    	onkeyup :false,// 是否在敲击键盘时验证
        rules: {
            loginname: {
                required: true
            },
            loginpassword: {
                required: true
            }
        },
        messages: {
            loginname: {
                required: "请输入账号...",
            },
            loginpassword: {
                required:  "请输入密码..."
            }
        },
        submitHandler:function(form){
        	var loginname = $(".loginname").val().trim();
        	var loginpassword = $.sha1($(".loginpassword").val().trim());
        	$.ajax({
        		type: "POST",
        		url: "/login",
        		data:{
        			"loginname": loginname,
        			"loginpassword": loginpassword
        		},
        		success:function(data){
        			if(data.msg == '200'){
        				location.href = "index";
        			} else if(data.msg == '201'){
        				layer.msg("账号或密码错误");
        			}else {
        				layer.msg("系统错误")
        			}
        		}
        	})
        }
    });
});

