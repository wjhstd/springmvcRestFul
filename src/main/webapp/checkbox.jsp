<%--
  Created by IntelliJ IDEA.
  User: lanouhn
  Date: 17/9/1
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
</head>
<body>

    <form action="" method="post">
        兴趣:<input type="checkbox" name="hobby" value="1"/>打游戏
        <input type="checkbox" name="hobby" value="1"/>听音乐
        <input type="checkbox" name="hobby" value="1"/>看电影
        <input type="button" value="提交" onclick="submitcheck()">
    </form>
<script type="text/javascript">
    var str="";
    $("input:checkbox[name='hobby']:checked").each(function(){
        str+= "hobby=" + $(this).val() + "&";
    })

    str = str.substr(0, str.length-1);
    $.ajax({
        url:"/checkboxdata",
        type:"post",
        data:str,
        success:function (data) {
            
        }
    })

</script>
</body>
</html>
