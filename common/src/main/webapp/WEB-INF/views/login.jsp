<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>   
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 登录页面 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${ctx}/static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${ctx}/static/css/login.css">
<script type="text/javascript" src="${ctx}/static/js/jquery-1.11.2.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
		<div class="login-bg">
			<div class="row" >
				 <div class="col-md-2"></div>
				  <div class="col-md-3 login-panel">
				  		<form>
							  <div class="form-group">
							    <label for="loginName">登录名</label>
							    <input type="text" class="form-control" id="loginName" placeholder="login name">
							  </div>
							  <div class="form-group">
							    <label for="password">密码</label>
							    <input type="password" class="form-control" id="password" placeholder="Password">
							  </div>
							  <div class="checkbox">
							    <label>
							      <input type="checkbox">Remeber me
							    </label>
							  </div>
							  <div align="right">
								  	<button type="submit" class="btn btn-default">登录</button>
								   <a>忘记密码</a>
							  </div>
							</form>
				  </div>
				   <div class="col-md-7"></div>
			</div>
		</div>
	</div>
</body>
</html>