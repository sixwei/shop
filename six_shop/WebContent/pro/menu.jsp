<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=gbk">
        <title>JSP Page</title>
        <script type="text/javascript" src="js/prototype.js" ></script>
		<script type="text/javascript" src="js/jquery-2.0.3.js"></script>
    </head>
    <body>
    	<select id="province">
    		<option value="-1">---请选择省份---</option>
    		
    	</select>
    	
    	<select id="city">
    		<option value="-1">---请选择城市---</option>
    
    	</select>
    	
    	<select id="area">
    		<option value="-1">---请选择区---</option>
    		
    	</select>
    	
    	
 	</body>
 	
 	
</html>

        


<script type="text/javascript">
	$(function(){
		   $.ajax({
			 	type:"get",
				url:"province.menu",
		       	async:true,
				success:function(provinces){
					var ps = provinces.evalJSON();
					for(i=0;i<ps.length;++i){
						$("#province").append("<option value='"+ps[i].provinceid+"'>"+ps[i].province+"</option>")
					}
				}
		   });
		   
		   $("#province").change(function(){
			   alert(123);
		   	      $("#city").html("");
		   	      $.ajax({
		   	      	type:"get",
		   	      	url:"city.menu?provinceid="+$("#province").val(),
		   	      	async:true,
		   	      	success:function(cities){
		   	      		var cs = cities.evalJSON();
		   	      		for(i=0;i<cs.length;i++){
		   	      			$("#city").append("<option value='"+cs[i].cityID+"'>"+cs[i].city+"</option>")
		   	      		}
		   	      	}
		   	      });
		   });
		   
		   $("#city").change(function(){
		   	      $("#area").html("");
		   	      alert(456);
		   	      $.ajax({
		   	      	type:"get",
		   	      	url:"area.menu?cityid="+$("#city").val(),
		   	      	async:true,
		   	      	success:function(areas){
		   	      		var as = areas.evalJSON();
		   	      		for(i=0;i<as.length;i++){
		   	      			$("#area").append("<option value='"+as[i].areaID+"'>"+as[i].area+"</option>")
		   	      		}
		   	      	}
		   	      });
		   });
	});
</script>	
	

		







