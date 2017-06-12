<%--
  Created by IntelliJ IDEA.
  User: Nothing
  Date: 2017/6/1
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<c:if test="${courses!=null}">
<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading text-center h1">
            可选课程
        </div>
        <table class="table table-striped table-hover table-bordered">
            <tr>
                <th>课程名</th>
                <th>学分</th>
                <th>所属学期</th>
                <th>已选/限选</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${courses}" var="course" varStatus="vs">
            <tr>
                <td><a href="${pageContext.request.contextPath}/info/courseDetail/${course.id}">${course.name}</a></td>
                <td>${course.credit}</td>
                <td>${course.term}</td>
                <td id="condition${course.id}">${studentCourseCount[vs.count-1]}/${course.classroom.galleryful}</td>
                <td>
                    <a class="btn btn-primary" href="javascript:chooseCourse('${pageContext.request.contextPath}/register/student/course/${course.id}','${course.id}');">选课</a>
                </td>
            </tr>
            </c:forEach>
        </table>
    </div>
</div>
</c:if>
<c:if test="${courses==null}">
    <div class="jumbotron">
        <div class="container">
            <h1 class="text-center">
                当前选课暂未开放
            </h1>
            <p style="margin-top:10%">具体开放时间请联系管理员</p>
        </div>
    </div>
</c:if>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script>
    function chooseCourse(addr,courseId) {
        var rs = confirm("确定要选该门课吗?");
        if(rs===true) {
            var count = $("#condition"+courseId).text().split('/');
            var jsonObj = JSON.stringify({"count":count[0],"total":count[1]});
            $.ajax({
                type:'POST',
                url:addr,
                data:jsonObj,
                contentType:'application/json;charset=utf-8',
                success:function(data) {
                    alert(data);
                }
            });
            window.location.href='${pageContext.request.contextPath}/info/showAvailableCourses';
        }
    }
</script>
</body>
</html>