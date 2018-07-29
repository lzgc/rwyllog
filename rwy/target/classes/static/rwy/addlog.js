$(function(){
	var url = "/log/addlog";
	var commentForm = $("#commentForm");
	
	$("#btnAdd").click(function(){
		commentForm.submit();
	});
	commentForm.validate({
		rules: {
			icp:{
				required: true
			},
			solution:{
				required: true
			}
		},
		messages:{
			icp:{
				required: "必填"
			},
			solution:{
				required: "必填"
			}
		}
	})
})