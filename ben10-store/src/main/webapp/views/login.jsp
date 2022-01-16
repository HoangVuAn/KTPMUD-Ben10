<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<title>Login</title>
	<link rel="stylesheet" href="<c:url value='/template/login/style-login.css'/>">
	<link rel="stylesheet" href="<c:url value='/template/login/grid-login.css'/>">
	<link href="https://fonts.googleapis.com/css2?family=Lato:wght@700&display=swap" rel="stylesheet">
	<meta charset="UTF-8" />

    
	<c:if test="${not empty alert}">		
		<script language="javascript">
			alert('${alert}');
    	</script>
	</c:if>
</head>

<body>
	<div class="content">
		<div class="modal_header popup_header">
			<p class="modal_title text-center">WEB QUẢN LÝ BÁN HÀNG</p>
		</div>
		
		<div class="login">
			<div class="modal_body">
				<div class="line">
					<h2>ĐĂNG NHẬP</h2>
					<hr>
				</div>
				<div class="form-login">
		

					<form action="<c:url value = '/dang-nhap'/>"   id= "formLogin"	method = "POST">
						<div style="color:red;text-align:center;"  class="alert alert-${alert}">		<!-- nhan cac tham so nay tu controller/web/HomeController -->
							${message}
						</div> 
						<div class="form-group">
							<div class="col span-4-of-10">
								<label> Username <span class="texterror">*</span>
								</label>
							</div>
							<div class="col span-6-of-10">
								<input type="text" placeholder="Phone number"
									class="form-control" id="phoneNumber" name="phoneNumber">
							</div>
						</div>
						<div class="form-group">
							<div class="col span-4-of-10">
								<label> Password <span class="texterror">*</span>
								</label>
							</div>
							<div class="col span-6-of-10">
								<input type="password" placeholder="password"
									class="form-control" id="password" name="password">
							</div>
						</div>
						<div>
							<input type="submit" value="Đăng nhập" class="btn">
						</div>
						<input	type = "hidden" value = "login" name = "action"/>		<!-- gui ve controller biet la action gi -->
					</form>

					<div>
						<ul>
							<li><a href="#" class="ablue">Quên mật khẩu?</a></li>
							<li><a href="#" class="ablue">Đăng ký</a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
					<div class="q-login">
						(Hoặc) Đăng nhập
						<div class="login-control">
							<a href="#" class="loginBtn loginBtn-fb">Login</a>
						</div>
						<div class="login-control">
							<a href="#" class="loginBtn loginBtn-gg">Login</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>