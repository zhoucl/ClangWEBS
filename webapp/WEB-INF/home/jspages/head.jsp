<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>OA协同管理系统头部</title>
	
	<%@include file="common/hbootstrap.jsp" %>
	
	<style type="text/css">
		.nav-ul {
			float: right;
			right:20px;
		}
	</style>
</head>

<body>
	<div class="navbar">
		<div class="navbar-inner">
			<a class="brand" href="#"><img alt="XX" src="static/img/adt.png" style="height: 60px;"></a>
			
			<div class="btn-group" style="float:right; right:20px;">
				<a id='example' class="btn" data-toggle="popover" data-placement="bottom" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." 
					title="" data-title="Popover on bottom"><i class="icon icon-user"></i>账户</a>
				<a class="btn"><i class="icon icon-envelope"></i>消息<span class="badge badge-important">6</span></a>
				<a class="btn"><i class="icon icon-cog"></i>设置</a>
				<a class="btn"><i class="icon icon-share-alt"></i>注销</a>
			</div>
		</div>
	</div>
	
	<%@include file="common/tbootstrap.jsp" %>
	
	<script type="text/javascript">
		$(function(){
			$('#example').click(function(){
				$(this).popover('toggle');
			});
		})
	</script>
</body>
</html>