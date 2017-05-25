<%--
  Created by IntelliJ IDEA.
  User: ZzGo
  Date: 2017/5/25
  Time: 11:13
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

<form class="form-horizontal">
    <fieldset>
        <div id="legend" class="">
            <legend class="">请认真填写以下信息</legend>
        </div>


        <div class="control-group">

            <!-- Text input-->
            <label class="control-label" for="input01">工号</label>
            <div class="controls">
                <input type="text" placeholder="请输入工号" class="input-xlarge">
                <p class="help-block">工号应为10位</p>
            </div>
        </div>


        <div class="control-group">

            <!-- Text input-->
            <label class="control-label" for="input01">密码</label>
            <div class="controls">
                <input type="text" placeholder="请输入密码" class="input-xlarge">
                <p class="help-block">密码请不要过于简单</p>
            </div>
        </div>

        <div class="control-group">

            <!-- Text input-->
            <label class="control-label" for="input01">姓名</label>
            <div class="controls">
                <input type="text" placeholder="请输入姓名" class="input-xlarge">
                <p class="help-block"></p>
            </div>
        </div>


        <div class="control-group">
            <label class="control-label">性别</label>
            <div class="controls">
                <!-- Inline Radios -->
                <label class="radio inline">
                    <input type="radio" value="男" name="sex" checked="checked">
                    男
                </label>
                <label class="radio inline">
                    <input type="radio" value="女" name="sex">
                    女
                </label>
            </div>
        </div>
        <div class="control-group">

            <!-- Select Basic -->
            <label class="control-label">院系</label>
            <div class="controls">
                <select class="input-xlarge">
                    <option>信息与通信工程学院</option>
                    <option>电子工程学院</option>
                    <option>计算机学院</option>
                    <option>自动化学院</option>
                    <option>软件学院</option>
                    <option>数字媒体与设计艺术学院</option>
                    <option>理学院</option>
                    <option>经济管理学院</option>
                    <option>公共管理学院</option>
                    <option>人文学院</option>
                    <option>教育技术研究所</option>
                    <option>马克思主义学院</option>
                    <option>网络技术研究院</option>
                    <option>信息光子学与光通信研究院</option>
                    <option>网络空间安全学院</option>
                </select>
            </div>

        </div>

        <div class="control-group">
            <label class="control-label"></label>

            <!-- Button -->
            <div class="controls">
                <button class="btn btn-info">注册</button>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label"></label>

            <!-- Button -->
            <div class="controls">
                <button class="btn btn-inverse">重置</button>
            </div>
        </div>


    </fieldset>
</form>

<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
