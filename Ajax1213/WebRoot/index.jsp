<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <script type="text/javascript" src="qt/jquery-1.8.2.min.js"></script>
  </head>
  <script type="text/javascript">
  	function login(){
  		$.ajax({
  			type:"post",
  			url:"login",
  			data:{name:$("#name").val(),pwd:$("#pwd").val()},
  			success:function(m){
  				alert(m);
  				if(m=="登陆成功！"){
  					location.href="listServlet";
  				}
  			},
  			dataType:"text"
  		});
  	}
  </script>
  <body>
 	<table align="center" border="1">
 		<tr>
 			<td>用户名:</td>
 			<td><input type="text" id="name"></td>
 		</tr>
 		<tr>
 			<td>密码：</td>
 			<td><input type="text" id="pwd"></td>
 		</tr>
 		<tr>
 			<td><input type="button" value="登录" onclick="login()"></td>
 			<td><input type="button" value="重置" onclick="cz()"></td>
 		</tr>
 	</table>
  </body>
</html>
