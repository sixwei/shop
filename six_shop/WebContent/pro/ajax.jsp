
<%@page contentType="text/html; charset=gbk" pageEncoding="gbk" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
       
    </head>
    
     <script type="text/javascript" src="js/jquery-2.0.3.js"></script>
        
        <script>
        	function funajax(){
        		
        		var username=document.getElementById("username").value;
        		var xhr;
        		
        		xhr = new XMLHttpRequest;
        		xhr.open("POST","register.ajax",true)
        		xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        		xhr.onreadystatechange = function(){
        			if(xhr.readyState ==4 && xhr.status ==200){
        				document.getElementById("msg").innerHTML=xhr.responseText;
        			}
        			
        		};
        		
        		xhr.send("username="+username);
        	};
        </script>
        
        <script type="text/javascript">
        
        
        $(function(){
        	$("#submit").click(function(){
    			$.ajax({
    				type:"get",
    				url:"list.ajax",
    				async:true,
    				success:function(data){
    					var user = data.responseText;
    					alert(user);
    				}
    			});
    		})
        })();
        
		        
        </script>
    <body>
    	
    	<div  style="font-size: 3px;">
    		<label> 用户名</label>
    		<input type="text" id="username" name="username" value="" onblur="funajax()" />
    		<span id="msg"></span>
    		
    	</div>
    	
    	
    	<div style="font-size:5px;">
    	
    	<input type="submit" value="提交" id="submit" />
    	
    	</div>
 	</body>
</html>

