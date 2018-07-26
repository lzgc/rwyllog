$(function(){
	var icon = "<i class='fa fa-times-circle'></i> ";
    $("#loginform").validate({
        rules: {
            loginname: {
                required: true
            },
            loginpassword: {
                required: true
            }
        },
        messages: {
            username: {
                required: icon + "请输入账号...",
            },
            password: {
                required: icon + "请输入密码..."
            }
        },
        submitHandler:function(form){
        	var loginname = $(".loginname").val().trim();
        	var loginpassword = $(".loginpassword").val().trim();
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
        			} else {
        				layer.msg(data);
        			}
        		}
        	})
        }
    });
});

