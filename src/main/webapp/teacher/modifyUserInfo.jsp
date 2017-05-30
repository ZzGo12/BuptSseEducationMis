<%--
  Created by IntelliJ IDEA.
  User: Nothing
  Date: 2017/5/30
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
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
<div class="container">
    <div class="page-header text-center">
        <h1>教务管理系统
            <small>编辑个人信息</small>
        </h1>
    </div>
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading text-center h2">个人信息</div>
        <!-- Table -->
        <form action="${pageContext.request.contextPath}/edit/teacherUpdate" method="post">
            <table class="table table-hover">
                <tr>
                    <td class="text-center">教工号</td>
                    <td class="text-center"><input type="text" name="no" placeholder="${sessionScope.teacher.no}"
                                                   value="${sessionScope.teacher.no}" readonly/></td>
                </tr>
                <tr>
                    <td class="text-center">密码</td>
                    <td class="text-center"><input type="password" name="pwd" value="${sessionScope.teacher.pwd}"/></td>
                </tr>
                <tr>
                    <td class="text-center">姓名</td>
                    <td class="text-center"><input type="text" name="name" placeholder="${sessionScope.teacher.name}"
                                                   value="${sessionScope.teacher.name}"/></td>
                </tr>
                <tr>
                    <td class="text-center">性别</td>
                    <td class="text-center">
                        <input type="radio" value='男' name="sex"
                               <c:if test="${sessionScope.teacher.sex.toString() == '男'}">checked="checked"</c:if>>
                        男
                        <input type="radio" value='女' name="sex"
                               <c:if test="${sessionScope.teacher.sex.toString() == '女'}">checked="checked"</c:if>>
                        女
                    </td>
                </tr>
                <tr>
                    <td class="text-center">年龄</td>
                    <td class="text-center"><input type="number" name="age" placeholder="${sessionScope.teacher.age}"
                                                   value="${sessionScope.teacher.age}"/></td>
                </tr>
                <tr>
                    <td class="text-center">所在院系</td>
                    <td class="text-center">
                        <select class="" name="dept">
                            <option <c:if test="${sessionScope.teacher.dept == '信息与通信工程学院'}">selected="selected"</c:if>>信息与通信工程学院</option>
                            <option <c:if test="${sessionScope.teacher.dept == '电子工程学院'}">selected="selected"</c:if>>电子工程学院</option>
                            <option <c:if test="${sessionScope.teacher.dept == '计算机学院'}">selected="selected"</c:if>>计算机学院</option>
                            <option <c:if test="${sessionScope.teacher.dept == '自动化学院'}">selected="selected"</c:if>>自动化学院</option>
                            <option <c:if test="${sessionScope.teacher.dept == '软件学院'}">selected="selected"</c:if>>软件学院</option>
                            <option <c:if test="${sessionScope.teacher.dept == '数字媒体与设计艺术学院'}">selected="selected"</c:if>>数字媒体与设计艺术学院</option>
                            <option <c:if test="${sessionScope.teacher.dept == '理学院'}">selected="selected"</c:if>>理学院</option>
                            <option <c:if test="${sessionScope.teacher.dept == '经济管理学院'}">selected="selected"</c:if>>经济管理学院</option>
                            <option <c:if test="${sessionScope.teacher.dept == '公共管理学院'}">selected="selected"</c:if>>公共管理学院</option>
                            <option <c:if test="${sessionScope.teacher.dept == '人文学院'}">selected="selected"</c:if>>人文学院</option>
                            <option <c:if test="${sessionScope.teacher.dept == '教育技术研究所'}">selected="selected"</c:if>>教育技术研究所</option>
                            <option <c:if test="${sessionScope.teacher.dept == '马克思主义学院'}">selected="selected"</c:if>>马克思主义学院</option>
                            <option <c:if test="${sessionScope.teacher.dept == '网络技术研究院'}">selected="selected"</c:if>>网络技术研究院</option>
                            <option <c:if test="${sessionScope.teacher.dept == '信息光子学与光通信研究院'}">selected="selected"</c:if>>信息光子学与光通信研究院</option>
                            <option <c:if test="${sessionScope.teacher.dept == '网络空间安全学院'}">selected="selected"</c:if>>网络空间安全学院</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="col-lg-5">
                        <button type="submit" class="btn btn-default btn-primary col-lg-offset-12">提交</button>
                    </td>
                    <td>
                        <button type="reset" class="btn btn-default btn-danger col-lg-offset-2">重置</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
