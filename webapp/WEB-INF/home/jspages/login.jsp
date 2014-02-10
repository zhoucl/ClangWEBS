<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
	<title>OA登录</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<%@include file="common/hbootstrap.jsp" %>
	
	<style type="text/css">
		body {
	        background-color: #f5f5f5;
	    }
	    
	    input {
	    	width: 160px;
	    }
	    
	    h1 {
	    	margin-bottom: 40px;
	    }
	    
	    .log-div {
	    	margin: 180px auto;
	    	background-color: olive;
	    	text-align: center;
	    	padding: 20px;
	    	width: 400px;
	    	height: 220px;
	    }
    </style>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="log-div">
				<h1 class="">OA管理系统登录</h1>
				<form action="/login" method="post">
					<div class="input-prepend input-append">
						<span class="add-on">用户名：</span>
						<input id="userName" type="text" placeholder="请输入用户名">
						<span class="add-on"><i class="icon-user"></i></span>
					</div>
					<div class="input-prepend input-append">
						<span class="add-on">密&nbsp;&nbsp;&nbsp;&nbsp;码：</span>
						<input id="passWord" type="password" placeholder="请输入密码">
						<span class="add-on"><i class="icon-lock"></i></span>
					</div>
					
					<div>
						<span><a id="login" onclick="login();" class="btn btn-primary" href="javascript:void();"><i class="icon-ok"></i>登录</a></span>
						<span><a id="qt" onclick="qt();" class="btn btn-primary" href="javascript:void();"><i class="icon-refresh"></i>重置</a></span>
					</div>
					<div>
						<span id="infotips"></span>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<%@include file="common/tbootstrap.jsp" %>
	
	<script type="text/javascript">
		function login() {
			window.location.href = 'index';
		}
		
		function qt() {
			$('#userName').val('');
			$('#passWord').val('');
		}
	</script>
</body>
</html>