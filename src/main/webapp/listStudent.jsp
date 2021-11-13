<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>查询学生ajax</title>
    <base href="<%=basePath%>"/>
    <script src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        loadStudentList();
        function loadStudentList() {
            $.ajax({
                url:"student/queryStudent.do",
                type:"get",
                dataType:"json",
                success:function (data) {
                    //清空
                    //$("#info").empty();
                    $("#info").html("");
                    $.each(data,function (i,n) {
                        $("#info").append("<tr>");
                        $("#info").append("<td>"+n.id+"</td>");
                        $("#info").append("<td>"+n.name+"</td>");
                        $("#info").append("<td>"+n.email+"</td>");
                        $("#info").append("<td>"+n.age+"</td>");
                        $("#info").append("</tr>");
                    })
                }
            })
        }
    </script>
</head>
<body>
<div align="center">
<table>
    <thead>
    <tr>
        <td>学号</td>
        <td>姓名</td>
        <td>邮箱</td>
        <td>电话</td>
    </tr>
    </thead>
    <tbody id="info">
    </tbody>
</table>
    <input type="button" id="btn" value="数据加载">
</div>
</body>
</html>
