<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>   
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${ctx}/static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${ctx}/static/css/main.css">
<script type="text/javascript" src="${ctx}/static/js/jquery-1.11.2.min.js"></script>
<title>首页</title>
</head>
<body>
	  <div class="container-fluid">
	  	<div class="formIndex">
		   <div class="row" style="height: 70px;">
		   		
		   </div>
		   <div class="row">
		   		<div class="col-md-3">
		   			<div class="list-group">
					  <a href="#" class="list-group-item  active">Cras justo odio<span class="glyphicon glyphicon-chevron-right" aria-hidden="true" style="float:right"></span></a>
					  <a href="#" class="list-group-item">Dapibus ac facilisis in<span class="glyphicon glyphicon-chevron-right" aria-hidden="true" style="float:right"></span></a>
					  <a href="#" class="list-group-item">Morbi leo risus<span class="glyphicon glyphicon-chevron-right" aria-hidden="true" style="float:right"></span></a>
					  <a href="#" class="list-group-item">Porta ac consectetur ac<span class="glyphicon glyphicon-chevron-right" aria-hidden="true" style="float:right"></span></a>
					  <a href="#" class="list-group-item">Vestibulum at eros<span class="glyphicon glyphicon-chevron-right" aria-hidden="true" style="float:right"></span></a>
					</div>
		   		</div>
		   		<div class="col-md-9">
		   			<div>
		   				<ol class="breadcrumb">
			  <li><a href="#">Home</a></li>
			  <li><a href="#">Library</a></li>
			  <li class="active">Data</li>
			</ol>
					<div>
	   				<div class="query-table">
	   					<!-- 查询条件 -->
	   					<form class="form-inline">
						  <div class="form-group">
						    <label  for="exampleInputEmail3">Email address</label>
						    <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Enter email">
						  </div>
						  <div class="form-group">
						    <label  for="exampleInputPassword3">Password</label>
						    <input type="password" class="form-control" id="exampleInputPassword3" placeholder="Password">
						  </div>
						  <button type="submit" class="btn btn-default">Sign in</button>
						</form>
	   				</div>
	   			</div>
		   				<!-- 查询结果 -->
			   			<table class="table table-bordered table-hover table-striped">
			   				<thead>
				   				<tr>
				   					<th>#</th>
				   					<th>列1</th>
				   					<th>列2</th>
				   					<th>列3</th>
				   					<th>列4</th>
				   					<th>列5</th>
				   				</tr>
			   				</thead>
			   				<tbody>
				   				<tr>
				   					<th scope="row">1</th>
				   					<td>列1</td>
				   					<td>列2</td>
				   					<td>列3</td>
				   					<td>列4</td>
				   					<td>列5</td>
				   				</tr>
				   				<tr>
				   					<th scope="row">2</th>
				   					<td>列1</td>
				   					<td>列2</td>
				   					<td>列3</td>
				   					<td>列4</td>
				   					<td>列5</td>
				   				</tr>
				   				<tr>
				   					<th scope="row">3</th>
				   					<td>列1</td>
				   					<td>列2</td>
				   					<td>列3</td>
				   					<td>列4</td>
				   					<td>列5</td>
				   				</tr>
				   				<tr>
				   					<th scope="row">4</th>
				   					<td>列1</td>
				   					<td>列2</td>
				   					<td>列3</td>
				   					<td>列4</td>
				   					<td>列5</td>
				   				</tr>
				   				<tr>
				   					<th scope="row">5</th>
				   					<td>列1</td>
				   					<td>列2</td>
				   					<td>列3</td>
				   					<td>列4</td>
				   					<td>列5</td>
				   				</tr>
				   				<tr>
				   					<td scope="row">6</td>
				   					<td>列1</td>
				   					<td>列2</td>
				   					<td>列3</td>
				   					<td>列4</td>
				   					<td>列5</td>
				   				</tr>
				   				<tr>
				   					<th scope="row">7</th>
				   					<td>列1</td>
				   					<td>列2</td>
				   					<td>列3</td>
				   					<td>列4</td>
				   					<td>列5</td>
				   				</tr>
				   				<tr>
				   					<th scope="row">8</th>
				   					<td>列1</td>
				   					<td>列2</td>
				   					<td>列3</td>
				   					<td>列4</td>
				   					<td>列5</td>
				   				</tr>
				   				<tr>
				   					<th scope="row">9</th>
				   					<td>列1</td>
				   					<td>列2</td>
				   					<td>列3</td>
				   					<td>列4</td>
				   					<td>列5</td>
				   				</tr>
				   				<tr>
				   					<th scope="row">10</th>
				   					<td>列1</td>
				   					<td>列2</td>
				   					<td>列3</td>
				   					<td>列4</td>
				   					<td>列5</td>
				   				</tr>
			   				</tbody>
			   			</table>
		   			</div>
		   			<div class="query-page" align="center">
		   				<!-- 分页控件 -->
		   				<nav>
						  <ul class="pagination">
						    <li>
						      <a href="#" aria-label="Previous">
						        <span aria-hidden="true">&laquo;</span>
						      </a>
						    </li>
						    <li><a href="#">1</a></li>
						    <li><a href="#">2</a></li>
						    <li><a href="#">3</a></li>
						    <li><a href="#">4</a></li>
						    <li><a href="#">5</a></li>
						    <li>
						      <a href="#" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						      </a>
						    </li>
						  </ul>
						</nav>
		   			</div>
		   		</div>
		   </div>
		 </div>
   	 </div>
</body>
</html>