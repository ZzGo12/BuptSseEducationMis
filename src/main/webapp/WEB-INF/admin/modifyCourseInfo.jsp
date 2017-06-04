<%--
  Created by IntelliJ IDEA.
  User: Nothing
  Date: 2017/6/3
  Time: 7:41
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

<div class="container">
    <div class="page-header text-center">
        <h1>教务管理系统
            <small>编辑课程信息</small>
        </h1>
    </div>
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading text-center h2">课程信息</div>
        <!-- Table -->
        <form action="${pageContext.request.contextPath}/edit/admin/courseUpdate" method="post">
            <input type="hidden" value="${course.id}" name="id">
            <table class="table table-hover">
                <tr>
                    <td class="text-center">课程名</td>
                    <td class="text-center"><input type="text" name="name" placeholder="${course.name}"
                                                   value="${course.name}"/></td>
                </tr>
                <tr>
                    <td class="text-center">学分</td>
                    <td class="text-center"><input type="text" name="credit" value="${course.credit}"/></td>
                </tr>
                <tr>
                    <td class="text-center">学期</td>
                    <td class="text-center">
                        <select class="" name="term">
                            <option <c:if test="${course.term == '2017年春'}">selected="selected"</c:if>>2017年春</option>
                            <option <c:if test="${course.term == '2017年秋'}">selected="selected"</c:if>>2017年秋</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">上课时间</td>
                    <td class="text-center">
                        <select class="" name="day">
                            <option value="1" <c:if test="${course.day == '1'}">selected="selected"</c:if>>周一</option>
                            <option value="2" <c:if test="${course.day == '2'}">selected="selected"</c:if>>周二</option>
                            <option value="3" <c:if test="${course.day == '3'}">selected="selected"</c:if>>周三</option>
                            <option value="4" <c:if test="${course.day == '4'}">selected="selected"</c:if>>周四</option>
                            <option value="5" <c:if test="${course.day == '5'}">selected="selected"</c:if>>周五</option>
                            <option value="6" <c:if test="${course.day == '6'}">selected="selected"</c:if>>周六</option>
                            <option value="7" <c:if test="${course.day == '7'}">selected="selected"</c:if>>周日</option>
                        </select>
                        <select class="" name="startTime">
                            <option value="1" <c:if test="${course.startTime == '1'}">selected="selected"</c:if>>1
                            </option>
                            <option value="3" <c:if test="${course.startTime == '3'}">selected="selected"</c:if>>3
                            </option>
                            <option value="5" <c:if test="${course.startTime == '5'}">selected="selected"</c:if>>5
                            </option>
                            <option value="7" <c:if test="${course.startTime == '7'}">selected="selected"</c:if>>7
                            </option>
                        </select>
                        至
                        <select class="" name="endTime">
                            <option value="2" <c:if test="${course.endTime == '2'}">selected="selected"</c:if>>2
                            </option>
                            <option value="3" <c:if test="${course.endTime == '3'}">selected="selected"</c:if>>3
                            </option>
                            <option value="4" <c:if test="${course.endTime == '4'}">selected="selected"</c:if>>4
                            </option>
                            <option value="5" <c:if test="${course.endTime == '5'}">selected="selected"</c:if>>5
                            </option>
                            <option value="6" <c:if test="${course.endTime == '6'}">selected="selected"</c:if>>6
                            </option>
                            <option value="7" <c:if test="${course.endTime == '7'}">selected="selected"</c:if>>7
                            </option>
                            <option value="8" <c:if test="${course.endTime == '8'}">selected="selected"</c:if>>8
                            </option>
                        </select>
                        节
                    </td>
                </tr>
                <tr>
                    <td class="text-center">上课周数</td>
                    <td class="text-center">
                        第
                        <select class="" name="startWeek">
                            <option <c:if test="${course.startWeek == '1'}">selected="selected"</c:if>>1</option>
                            <option <c:if test="${course.startWeek == '2'}">selected="selected"</c:if>>2</option>
                            <option <c:if test="${course.startWeek == '3'}">selected="selected" </c:if>3
                            </option>
                            <option <c:if test="${course.startWeek == '4'}">selected="selected"</c:if>>4</option>
                            <option <c:if test="${course.startWeek == '5'}">selected="selected"</c:if>>5</option>
                            <option <c:if test="${course.startWeek == '6'}">selected="selected"</c:if>>6</option>
                            <option <c:if test="${course.startWeek == '7'}">selected="selected"</c:if>>7</option>
                            <option <c:if test="${course.startWeek == '8'}">selected="selected"</c:if>>8</option>
                            <option <c:if test="${course.startWeek == '9'}">selected="selected"</c:if>>9</option>
                            <option <c:if test="${course.startWeek == '10'}">selected="selected"</c:if>>10</option>
                            <option <c:if test="${course.startWeek == '11'}">selected="selected"</c:if>>11</option>
                            <option <c:if test="${course.startWeek == '12'}">selected="selected"</c:if>>12</option>
                            <option <c:if test="${course.startWeek == '13'}">selected="selected"</c:if>>13</option>
                            <option <c:if test="${course.startWeek == '14'}">selected="selected"</c:if>>14</option>
                            <option <c:if test="${course.startWeek == '15'}">selected="selected"</c:if>>15</option>
                        </select>
                        周至第
                        <select class="" name="endWeek">
                            <option <c:if test="${course.endWeek == '2'}">selected="selected"</c:if>>2</option>
                            <option <c:if test="${course.endWeek == '3'}">selected="selected"</c:if>>3</option>
                            <option <c:if test="${course.endWeek == '4'}">selected="selected"</c:if>>4</option>
                            <option <c:if test="${course.endWeek == '5'}">selected="selected"</c:if>>5</option>
                            <option <c:if test="${course.endWeek == '6'}">selected="selected"</c:if>>6</option>
                            <option <c:if test="${course.endWeek == '7'}">selected="selected"</c:if>>7</option>
                            <option <c:if test="${course.endWeek == '8'}">selected="selected"</c:if>>8</option>
                            <option <c:if test="${course.endWeek == '9'}">selected="selected"</c:if>>9</option>
                            <option <c:if test="${course.endWeek == '10'}">selected="selected"</c:if>>10</option>
                            <option <c:if test="${course.endWeek == '11'}">selected="selected"</c:if>>11</option>
                            <option <c:if test="${course.endWeek == '12'}">selected="selected"</c:if>>12</option>
                            <option <c:if test="${course.endWeek == '13'}">selected="selected"</c:if>>13</option>
                            <option <c:if test="${course.endWeek == '14'}">selected="selected"</c:if>>14</option>
                            <option <c:if test="${course.endWeek == '15'}">selected="selected"</c:if>>15</option>
                            <option <c:if test="${course.endWeek == '16'}">selected="selected"</c:if>>16</option>
                        </select>
                        周
                    </td>
                </tr>
                <tr>
                    <td class="text-center">上课教室</td>
                    <td class="text-center">
                        <select id="classroomName" class="" name="classroom.name">
                            <c:forEach items="${classrooms}" var="classroom">
                                <option
                                        <c:if test="${course.classroom.name==classroom}">selected="selected"</c:if>>${classroom}
                                </option>
                            </c:forEach>
                        </select>
                        <select id="classroomAddress" class="" name="classroom.address">
                            <c:forEach items="${classroomAddress}" var="address">
                                <option
                                        <c:if test="${course.classroom.address==address}">selected="selected"</c:if>>${address}</option>
                            </c:forEach>
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
<script>
    function classroomAjax() {
        var classroomName = $("#classroomName").val();
        var jsonObj = JSON.stringify({"name": classroomName});
        $.ajax({
            type: 'post',
            url: '${pageContext.request.contextPath}/info/classroomAddress',
            contentType: 'application/json;charset=utf-8',
            data: jsonObj,
            success: function (data) {
                $("#classroomAddress").empty();
                for(x in data) {
                    var option ="<option value="+data[x]+">"+data[x]+"</option>";
                    $("#classroomAddress").append(option);
                }
                $("#classroomAddress").val(${course.classroom.address});
            }
        })
    }
    $("#classroomName").change(function () {
        classroomAjax();
    })
    $(document).ready(function(){
        classroomAjax();
    });
</script>
</body>
</html>