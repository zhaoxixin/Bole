<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
这是一个测试界面
</head>
<body>
	<input type="text" onclick="callme()">点我</input>
	<h3>input在上面</h3>
    <script type="text/javascript">
       function callme(){
    	   alert("进入点击事件函数")
        	var p=$.ajax({
        		type:"POST",
        		url:"/sysadmin/job/t",
        		data:{
                    "a": 1,
                    "b": 2,
                    "c": 3
                  },
				dataType:"json",
				
				
        	}).done(function(result){
        		if(result==1){
        			alert("传值成功")
        		}else{
        			alert("传值失败")
        		}
        	});
       };
        	
        	alert(p);
        	
        	
    </script>
</body>
</html>