<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	<title>OA协同办公管理</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<%@include file="common/hbootstrap.jsp" %>
	
	<style type="text/css">
		.container-nopadding {
			padding-left: 0px;
			padding-right: 0px;
		}
		
		.leftDiv {
			float: left;
			left: 0;
			width: 15%;
		}
		
		.content {
			float: right;
			right: 0;
			width: 85%;
		}
	</style>
</head>

<body>
	<div class="container-fluid container-nopadding">
		<div id="topDiv" style="height: 80px; width: 100%;">
			<iframe id="headFrame" width="100%" height="100%" src="head" frameborder="0" scrolling="no"></iframe>
		</div>
		
		<div id="leftDiv" class="leftDiv">
			<iframe id="leftFrame" width="100%" height="500px;" src="/left" frameborder="0"></iframe>
		</div>
		
		<div id="contentDiv" class="content"">
			<iframe id="contentFrame" width="100%" height="500px;" src="/content" frameborder="0"></iframe>
		</div>
	</div>
	
	
	<%@include file="common/tbootstrap.jsp" %>
</body>
</html>