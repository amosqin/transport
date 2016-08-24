<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  
  <script type="text/javascript" src="qt/jquery-1.8.2.min.js"></script></head>
<script type="text/javascript" src="qt/jquery.validate.js"></script>
  <script type="text/javascript" src="qt/jquery.validate.cn.js"></script>
  <script type="text/javascript" src="qt/jquery-ui.js"></script>
  <link rel="stylesheet" href="qt/jquery-ui.theme.css" type="text/css"></link>
  <script type="text/javascript">
  $(function(){
	 $("#form1").validate({
	     rules:{
			name1:{ 
			   required:true	
			},
			type1:{ 
			   required:true	
			},
			price1:{ 
			   required:true,
			   number:true,
			   rangelength:[2,5]	
			},
			time1:{ 
			   required:true
			},
			
	 },
		
           submitHandler:function(){
				$.ajax({
  			type:"post",
  			url:"addServlet",
  			data:{name:$("#name").val(),type:$("#type").val(),price:$("#price").val(),time:$("#time").val(),},
  			success:function(m){
  				alert(m);
  				if(m=="添加成功"){
  				location.href="list.jsp";
  	        }	
  			},
  		      dataType:"text"
  		    });
		}
	});
	$("#time").datepicker({
			//是否可以使用下拉列表更改月份
					changeMonth:true,
				
				// 是否可以使用下拉列表更改年份
					changeYear:true,

				//日期控件的星期显示
					dayNamesMin:['一','二','三','四','五','六','日'],

				//日期控件的月份显示
					monthNamesShort:['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'],

				//点击某个日期，填充输入框的月份值
					monthNames: ['01','02','03','04','05','06','07','08','09','10','11','12'],

				//是否显示第几周
					showWeek:true,
					
				//格式化日期内容
					dateFormat:"yy-MM-dd",

				//输入框后是否显示日期控件的图标
					showOn:"button"
			
	});
});
  </script>
  <body>
  <form id="form1">
   <table align="center" border="1">
   		<tr>
   			<td>名称</td>
   			<td><input type="text" id="name" name="name1"></td>
   		</tr>
   		<tr>
   			<td>类型</td>
   			<td><input type="text" id="type" name="type1"></td>
   		</tr>
   		<tr>
   			<td>价格</td>
   			<td><input type="text" id="price" name="price1"></td>
   		</tr>
   		<tr>
   			<td>时间</td>
   			<td><input type="text" id="time" name="time1"></td>
   		</tr>
   		<tr>
   			<td><input type="submit" value="添加" /></td>
   			<td><input type="reset" value="重置" /></td>
   		</tr>
   </table>
   </form>
  </body>
</html>
