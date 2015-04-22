<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
request.setAttribute("ctx", request.getContextPath());
%>
<!DOCTYPE html>
<html lang="cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>收银台</title>
    <script type="text/javascript" src="${ctx}/static/js/jquery-1.11.2.min.js"></script>
    <link href="${ctx}/static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="${ctx}/static/css/font-awesome.min.css" rel="stylesheet">
	<link href="${ctx}/static/css/casher.css" rel="stylesheet">
	<script type="text/javascript" src="${ctx}/static/js/bsvalidate.js"></script>
	
	<style type="text/css">
		form div{
 			margin-top:5px; 
		}
		.pay_div {
			width: 55%; 
			margin:30px auto 10px auto; 
			padding-bottom:20px; 
			border: 2px #D43F3A solid; 
			/* 圆角 不支持IE8及以下版本浏览器 */
			border-radius:10px;
		}
	</style>
	
	<script type="text/javascript">
	
		$(document).ready(function(){
			
			$("#fastPay").bsvalidate({
				modal:"#myModal",
				beforeSubmit:function(){
						return true;
				},
				rules:{
					authCode:{
						type:"phone",
						required:true,
					},
					pwd:{
						required:true,
						minLength:2,
						maxLength:10,
						min:1,
						max:10000000000
					}
				}
			});
			
			$("#myModal").modal({
				keyboard:false,
				backdrop:'static',
				show:false
			});
		});
		
		var t = 60;
		// 获取手机验证码
		function getAuthCode(){
			// 设置btn为disabled
			$("#authCodeBtn").attr("disabled",true);
			$("#authCodeBtn").text(t+"秒后重新获取");
			// 设置倒计时(每隔1S执行一次)
			var si = setInterval(function(){
				t = t-1;
				$("#authCodeBtn").text(t+"秒后重新获取");
				if(t==0){
					clearInterval(si);
					$("#authCodeBtn").attr("disabled",false);
					$("#authCodeBtn").text("获取验证码");
					t = 60;
				}
			},1000);
		}
		
		function ensureBtn(){
// 			$('#myModal').modal('toggle');
// 			setTimeout(function(){
				$("#fastPay").submit();
// 			},3000);
			
		}
		
	</script>
	
  </head>

  <body>
 <%-- 标题和logo --%>
 <b:navbar class="title">
    <b:navbarheader class="logo">
    	<b:navbarbrand style="color:#d43f4f"><i class="icon-credit-card icon-large"> </i>欢迎使用iSoftStone 收银台</b:navbarbrand>
    </b:navbarheader>
    <b:navbarcollapse>
        <b:nav class="navbar-right contract_us">
        	<li><a><i class="icon-phone-sign icon-large"></i>&nbsp;24小时热线:955XX</a></li>
        </b:nav>
     </b:navbarcollapse>
 </b:navbar>
<%-- 订单信息 --%>
<b:container fluid="true" class="order">
	<b:row>
		<b:column md="4" sm="12" class="orderAmt">
		   <span>订单金额：</span><span class="amount"><fmt:formatNumber value="11" pattern="#,##0.00#" minFractionDigits="2" /></span> 元
    	</b:column>
    	<b:column md="4" class="orderAmt">
		 <span>商家：</span><span class="merchant">京东</span>
    	</b:column>
    	<b:column md="4" class="orderlink">
<!--     	 <a>订单详情[+]</a> -->
    	</b:column>
	</b:row>
</b:container>
<%-- 提示信息 --%>
<b:alert class="alert-warning tips"><i class="icon-info-sign"></i>支付提示：请仔细确认商家商品信息和付款金额，以避免造成您的财产损失！</b:alert>

<!-- 表单 -->
<div class="pay_div">
	<form action="${ctx}/fastPay/topay" id="fastPay" method="post">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-3" align="right" style="line-height: 100px;" >
					<label for="phone">支付方式</label>
				</div>
				<div class="col-md-5">
					<img alt="中国农业银行" src="${ctx}/static/logo/CMB.jpg">
					6225****0010
				</div>
				<div class="col-md-3" style="line-height: 90px;">储蓄卡</div>
			</div>
			<div class="row">
				<div class="col-md-3" align="right" style="line-height: 35px;" >
					<label for="phone">手机号</label>
				</div>
				<div class="col-md-5">
					<input id="phone" class="form-control" type="text" readonly="readonly" value="156*****234">
				</div>
				<div class="col-md-3"></div>
			</div>
			<div class="row">
				<div class="col-md-3" align="right" style="line-height: 35px;" >
					<label for="authCode">验证码</label>
				</div>
				<div class="col-md-5">
					<input id="authCode"  class="form-control" type="text" placeholder="验证码" >
				</div>
				<div class="col-md-3">
					<button class="btn btn-danger" onclick="getAuthCode()" id="authCodeBtn" type="button">获取验证码</button>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3" align="right" style="line-height: 35px;" >
					<label for="pwd">支付密码</label>
				</div>
				<div class="col-md-5">
					<input id="pwd" class="form-control" type="password" placeholder="支付密码" >
				</div>
				<div class="col-md-3" style="line-height: 35px;"><a href="#">忘记密码</a></div>
			</div>
			<div class="row" style="margin-top: 30px;">
				<div class="col-md-4" ></div>
				<div class="col-md-4" align="center">
<%-- 					<button style="width:40%;" type="button" class="btn btn-danger btn_confirm" id="ensureBtn" onclick="">返回</button> --%>
					<button style="width:40%;" type="button" class="btn btn-danger btn_confirm" onclick="ensureBtn()">去支付</button>
				</div>
				<div class="col-md-4"></div>
			</div>
			<!-- 隐藏数据 -->
			<input type="hidden" name="merchantCode" value="${merchantCode}"/>
			<input type="hidden" name="randomKey" value="${randomKey}"/>
			<input type="hidden" name="request" value="${request}"/>
		</div>
	</form>
	<!-- 模态框 -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h4 class="modal-title" id="myModalLabel">
		        	
		        </h4>
		      </div>
		      <div class="modal-body" align="center">
		      	<div>
		        	<img alt="" src="${ctx}/static/mask/pleasewait.gif" style="width:50%">
		      	</div>
		      	<div>
		      		正在支付，请稍后  . . .
		      	</div>
		      </div>
		      <div class="modal-footer">
<%-- 		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> --%>
<%-- 		        <button type="button" class="btn btn-primary">Save changes</button> --%>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
<%-- 底部 --%>
<b:navbar fixed="bottom" class="foot">
    	    最佳浏览器效果：IE9+ FireFox Chrome Safari &copy2002-2015软通动力信息技术（集团）有限公司
</b:navbar>
<!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${ctx}/static/bootstrap/js/bootstrap.min.js"></script>
    <!-- Include the Bootstrap.jsp plugin for enhanced features -->
    <script src="/bootstrapjsp/bootstrapjsp/bootstrap.jsp.min.js"></script>
    <!--[if lt IE 9]>
      <script src="${ctx}/static/bootstrap/html5shiv.js"></script>
      <script src="${ctx}/static/bootstrap/respond.min.js"></script>
    <![endif]-->
  </body>
</html>
