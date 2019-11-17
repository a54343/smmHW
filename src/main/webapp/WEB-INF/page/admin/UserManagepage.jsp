<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script >
$(function(data) {
$(".delete").click(function(){
	var user_id=$(this).attr("data-userid");
	$.ajax({
		url:"/ssm-test/delete",
		type: "get",
		data:{"user_id":user_id},
		dataType:"json",
		success:function(data){
			
			var table =$("#table-user-list");
			var tbody =table.children("tbody").first();
			tbody.empty();
			if(data.userList.length >0){
				for(var i=0;i<data.userList.length;i++){
					var user_id=data.userList[i].user_id;
					var user_name=data.userList[i].user_name;	
					var user_pwd = data.userList[i].user_pwd;
					tbody.append("<tr><td>"+user_id+"</td><td>"+user_name+"</td><td>"+user_pwd+"</td><td>"+
						user.user_nickname+"</td><td>"+user.user_sex+"</td><td>"+user_brithday+"</td>"+
				        "<td><a href='#'> calss='delete' data-userid="+user_id+"删除</a><a>详情</a></td></tr>")
				}
			}
		},
	error:function(){
		}
	});
})});
</script>
<table border="1" id="table-user-list">
<thead>
<tr>
<td>用户ID</td>
<td>用户账号</td>
<td>用户密码</td>
<td>用户昵称</td>
<td>用户性别</td>
<td>用户生日</td>
<td>操作</td>
</tr>
</thead>
<tbody>
<c:forEach items="${requestScope.userList}" var="user">
       <tr>
       <td>${user.user_id}</td>
         <td>${user.user_name}</td>
         <td>${user.user_pwd}</td>
         <td>${user.user_nickname}</td>
         <td>${user.user_sex}</td>
         <td>${user.user_brithday}</td>
        <td><a href="#" class="delete" data-userid=${user.user_id}>删除</a>
        <a>详情</a></td>
       </tr>     
</c:forEach>
</tbody>

</table>