<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>


	<div>
		
			<input type="text" id="img"/>
			<table id="table">
				<tr>
					<th>姓名</th>
					<th>密码</th>
				</tr>
			</table>
		
		</div>
 	</body>
</html>

<script type="text/javascript">
	$(function(){
		$("#img").blur(function(){
			$.ajax({
				type:"post",
				url:"ajax.do",
				async:true,
				success:function(data){
					alert(data);
					var str="";
					for(i=0;i<data.length;i++){
						str+="<tr><th>"+data[i].name+"</th><th>"+data[i].pwd+"</th></tr>";
					}
					
					$("#table").append(str);
					
				}
			});
		})
	});
	
</script>