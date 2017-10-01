<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="table table-striped table-hover table-bordered table-responsive">
					<tr>
						<th>部门</th>
						<th>成员</th>
						<th>计划</th>
						<th>状态</th>
						<th>总结</th>
						<th>评价</th>
						
					</tr>
					
					<#if uMap??>
						<#list uMap?keys as userName>
							<#list ulist as user>
								<tr>
						  			<#if userName==user.userName>
						    			<td>${user.dept.deptName}</td>
										<td>${user.userName}</td>
				     	   					<td><#if uMap["${userName}"]??>
				     	   					<div>【${uMap["${userName}"].label}】${uMap["${userName}"].title}</div>
				     	   					<div>${uMap["${userName}"].planContent}
				     	   					<#if uMap["${userName}"].attachId??>
												<a style="color:#337ab7;"href="down?paid=${uMap["${userName}"].attachId}">
												<span class="glyphicon glyphicon-paperclip"></span>
															</#if></div>
				     	   					
				     	   					</#if></td>
												<td><#if uMap["${userName}"]??>
													<#list status as s>
												   		<#if uMap["${userName}"].statusId==s.statusId>
												   			<span class="label ${s.statusColor}">
												   			${s.statusName}</span>
												   		</#if>
													</#list>
												</#if></td>
												
											<td><#if uMap["${userName}"]??>${uMap["${userName}"].planSummary}</#if></td>
											<td>
											<#if uMap["${userName}"]??>
											<!-- 模态框按钮 -->
											<a class="btn thisa" id="${uMap["${userName}"].planId}">
											<span class="label label-success ">
											<i class="glyphicon glyphicon-commenting">
											评论</i>
											</span>
											</a>
											<div>【${user.userName}】
											${uMap["${userName}"].planComment}
											</div>
											</#if></td>
											
											
											</#if>
								</tr> 	
							</#list>
					</#list>
				</#if>
				</table>
				
<#include "/common/comment.ftl">

<script>
$('.thisa').on('click',function(){
	$("#myModal").modal("toggle");
	$("#commentid").val($(this).attr("id"))
});

var start=$("#start").text();
var end=$("#end").text();

//评论提交
$("#commentsave").click(function(){
	 var $comment=$("#comment").val();
	 var $commentid=$("#commentid").val();
	
	 $.ajax({
		 type:"get",
		 url:"plancomment",
		 data:{
			 pid:$commentid,
			 comment:$comment
		 },
		 success:function(dates){
			 $(".close").click();
			window.location.reload()
		},
		 error:function(){
		}
	 })
})


</script>
</body>
</html>