<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="incloud/header.jsp" %>
<head>
    <script src="${pageContext.request.contextPath}/res/js/fore/fore_register.js"></script>
    <link href="${pageContext.request.contextPath}/res/css/fore/fore_register.css" rel="stylesheet">
    <title> 网上注册</title>
    <script>
       
    </script>
    <style rel="stylesheet">
        #nav {
            width: auto;
            height: 32px;
            font-family: "Microsoft YaHei UI", Tahoma, serif;
            font-size: 12px;
            position: relative !important;
            background: #f2f2f2;
            z-index: 999;
            border-bottom: 1px solid #e5e5e5;
        }
    </style>
</head>
<body>
<nav>
    <div class="header">
        <div id="mallLogo">
            <a href="${pageContext.request.contextPath}"><span
                    class="span_hwshopRegister">用户注册</span></a>
        </div>
    </div>
</nav>
<div class="content">
    <div class="steps">
        <div class="steps_main">
            <span class="steps_tsl">填写账号信息</span>
        </div>
    </div>
    <div class="form-list">
        <div class="form-item">
            <label class="form-label form-label-b tsls">设置会员名</label>
        </div>
        <div class="form-item">
            <label class="form-label tsl">用户名：</label>
            <input name="user_name" id="user_name" class="form-text err-input" placeholder="请输入用户名" maxlength="20">
            <span class="form_span"></span>
        </div>
        <div class="form-item">
            <label class="form-label form-label-b tsls">设置登录密码</label>
            <label class="form-label tsl">登录时验证，保护账号信息</label>
        </div>
        <div class="form-item">
            <label class="form-label tsl">登录密码：</label>
            <input name="user_pwd" type="password" id="user_pwd" class="form-text err-input"
                   placeholder="请设置登录密码" maxlength="20">
            <span class="form_span"></span>
        </div>
        <div class="form-item">
            <label class="form-label tsl">确认密码：</label>
            <input name="user_password_one" type="password" id="user_password_one" class="form-text err-input"
                   placeholder="请再次输入你的密码" maxlength="20">
            <span class="form_span"></span>
        </div>
        <div class="form-item">
            <label class="form-label form-label-b tsls">填写基本信息</label>
        </div>
        <div class="form-item">
            <label class="form-label tsl">昵称：</label>
            <input name="user_nickname" id="user_nickname" class="form-text err-input" placeholder="请输入昵称"
                   maxlength="20">
            <span class="form_span"></span>
        </div>
        <div class="form-item">
            <label class="form-label tsl">性别：</label>
            <input name="user_sex" type="radio" id="form_radion" value="0" checked="checked">男
            <input name="user_sex" type="radio" id="form_radions" value="1">女
        </div>
        <div class="form-item">
            <label class="form-label tsl">出生日期：</label>
            <input type="date" name="user_brithday" id="user_brithday" class="form-text err-input"/>
            <span class="form_span"></span>
        </div>
        <div class="form-item">
            <input type="button" id="register_sub" class="btns btn-large tsl" value="注 册"/>
        </div>
    </div>
</div>

<div class="msg">
    <span>注册成功，跳转到登陆页面</span>
</div>
</body>

