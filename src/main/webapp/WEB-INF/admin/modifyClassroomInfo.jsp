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
            <small>编辑教室信息</small>
        </h1>
    </div>
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading text-center h2">教室信息</div>
        <!-- Table -->
        <form action="${pageContext.request.contextPath}/edit/admin/classroomUpdate" method="post">
            <table class="table table-hover">
                <input type="hidden" name="id" value="${classroom.id}"/>
                <tr>
                    <td class="text-center">教学楼名</td>
                    <td class="text-center"><input type="text" name="name" placeholder="${classroom.name}"
                                                   value="${classroom.name}" /></td>
                </tr>
                <tr>
                    <td class="text-center">具体地点</td>
                    <td class="text-center"><input type="text" name="address" placeholder="${classroom.address}"
                                                   value="${classroom.address}"/></td>
                </tr>
                <tr>
                    <td class="text-center">可容纳人数</td>
                    <td class="text-center"><input type="text" name="galleryful" placeholder="${classroom.galleryful}"
                                                   value="${classroom.galleryful}"/></td>
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
