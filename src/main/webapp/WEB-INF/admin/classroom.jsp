<%--
  Created by IntelliJ IDEA.
  User: Nothing
  Date: 2017/5/30
  Time: 20:14
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css"/>
</head>
<body>
<div class="container-fluid">

    <form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/register/classroomRegister">
        <fieldset>
            <div id="legend" class="">
                <legend class="h1 text-center">添加教室</legend>
            </div>

            <div class="myborder">
                <div class="form-group mydivmargin">

                    <!-- Text input-->
                    <label class="control-label col-lg-offset-2 col-lg-2" for="input01">教学楼名</label>
                    <div class="col-lg-4">
                        <input type="text" placeholder="请输入教学楼名" class="form-control" id="input01" name="name">
                        <p class="help-block mytext"></p>
                    </div>
                </div>


                <div class="form-group mydivmargin">

                    <!-- Text input-->
                    <label class="control-label col-lg-offset-2 col-lg-2" for="input02">具体地点</label>
                    <div class="col-lg-4">
                        <input type="text" placeholder="请输入具体地点" class="form-control" id="input02" name="address">
                        <p class="help-block mytext"></p>
                    </div>
                </div>

                <div class="form-group mydivmargin">

                    <!-- Text input-->
                    <label class="control-label col-lg-offset-2 col-lg-2" for="input03">可容纳人数</label>
                    <div class="col-lg-4">
                        <input type="text" placeholder="请输入教室可容纳人数" class="form-control" id="input03" name="galleryful">
                        <p class="help-block mytext"></p>
                    </div>
                </div>


                <%--<div class="form-group mydivmargin">--%>

                    <%--<!-- Select Basic -->--%>
                    <%--<label class="control-label col-lg-offset-2 col-lg-2">上课时间</label>--%>
                    <%--<div class="col-lg-2">--%>
                        <%--<select class="form-control" name="day">--%>
                            <%--<option value="1">周一</option>--%>
                            <%--<option value="2">周二</option>--%>
                            <%--<option value="3">周三</option>--%>
                            <%--<option value="4">周四</option>--%>
                            <%--<option value="5">周五</option>--%>
                            <%--<option value="6">周六</option>--%>
                            <%--<option value="7">周日</option>--%>
                        <%--</select>--%>
                    <%--</div>--%>

                    <%--<div class="col-lg-2">--%>
                        <%--<select class="form-control" name="startTime">--%>
                            <%--<option value="1">1</option>--%>
                            <%--<option value="3">3</option>--%>
                            <%--<option value="5">5</option>--%>
                            <%--<option value="7">7</option>--%>
                        <%--</select>--%>
                    <%--</div>--%>
                    <%--<label class="control-label col-lg-1">——</label>--%>
                    <%--<div class="col-lg-2">--%>
                        <%--<select class="form-control" name="endTime">--%>
                            <%--<option value="2">2</option>--%>
                            <%--<option value="3">3</option>--%>
                            <%--<option value="4">4</option>--%>
                            <%--<option value="5">5</option>--%>
                            <%--<option value="6">6</option>--%>
                            <%--<option value="7">7</option>--%>
                            <%--<option value="8">8</option>--%>
                        <%--</select>--%>
                    <%--</div>--%>
                    <%--<label class="control-label">节</label>--%>
                <%--</div>--%>

                <%--<div class="form-group mydivmargin">--%>

                    <%--<!-- Select Basic -->--%>
                    <%--<label class="control-label col-lg-offset-2 col-lg-2">上课周数</label>--%>
                    <%--<div class="col-lg-2">--%>
                        <%--<select class="form-control" name="startWeek">--%>
                            <%--<option>1</option>--%>
                            <%--<option>2</option>--%>
                            <%--<option>3</option>--%>
                            <%--<option>4</option>--%>
                            <%--<option>5</option>--%>
                            <%--<option>6</option>--%>
                            <%--<option>7</option>--%>
                            <%--<option>8</option>--%>
                            <%--<option>9</option>--%>
                            <%--<option>10</option>--%>
                            <%--<option>11</option>--%>
                            <%--<option>12</option>--%>
                            <%--<option>13</option>--%>
                            <%--<option>14</option>--%>
                            <%--<option>15</option>--%>
                        <%--</select>--%>
                    <%--</div>--%>
                    <%--<label class="control-label col-lg-1">——</label>--%>
                    <%--<div class="col-lg-2">--%>
                        <%--<select class="form-control" name="endWeek">--%>
                            <%--<option>2</option>--%>
                            <%--<option>3</option>--%>
                            <%--<option>4</option>--%>
                            <%--<option>5</option>--%>
                            <%--<option>6</option>--%>
                            <%--<option>7</option>--%>
                            <%--<option>8</option>--%>
                            <%--<option>9</option>--%>
                            <%--<option>10</option>--%>
                            <%--<option>11</option>--%>
                            <%--<option>12</option>--%>
                            <%--<option>13</option>--%>
                            <%--<option>14</option>--%>
                            <%--<option>15</option>--%>
                            <%--<option>16</option>--%>
                        <%--</select>--%>
                    <%--</div>--%>
                    <%--<label class="control-label">周</label>--%>
                <%--</div>--%>

                <div class="form-group mydivmargin">
                    <div class="col-lg-offset-4">
                        <button type="submit" class="btn btn-info">添加教室</button>
                        <button type="reset" class="btn btn-danger col-lg-offset-2">重置</button>
                    </div>
                </div>
            </div>
        </fieldset>
    </form>
</div>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
