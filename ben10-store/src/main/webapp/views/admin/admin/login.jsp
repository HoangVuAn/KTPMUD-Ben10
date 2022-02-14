<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon"  href="<c:url value='/views/admin/admin/images/logo.png'/> type="image/ico"/>

    <title>Đăng nhập Admin | </title>

    <!-- Bootstrap -->
    <link  href="<c:url value='/views/admin/vendors/bootstrap/dist/css/bootstrap.min.css'/>"   rel="stylesheet">
    <!-- Font Awesome -->
    <link  href="<c:url value='/views/admin/vendors/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet">
    <!-- NProgress -->
    <link  href="<c:url value='/views/admin/vendors/nprogress/nprogress.css'/>"  rel="stylesheet">
    <!-- Animate.css -->
    <link rel="stylesheet"  href="<c:url value='/views/admin/admin/animate.css'/>"  >

    <!-- Custom Theme Style -->
    <link  href="<c:url value='/views/admin/admin/custom.css'/>" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="<c:url value = '/dang-nhap-admin'/>"   id= "formLogin"	method = "POST">
              <div style="color:red;text-align:center;"  class="alert alert-${alert}">		<!-- nhan cac tham so nay tu controller/web/HomeController -->
							${message}
			  </div> 
              <h1>Đăng Nhập</h1>
              <div>
                <input type="text" class="form-control" placeholder="Username" required=""   id="userName" name="userName"/> 
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="" id="password" name="password"/>
              </div>
              <div>
			     <input type="submit" style="background-color: pink;" value="Đăng nhập" class="btn">
			  </div>
              <input	type = "hidden" value = "login" name = "action"/>

              <div class="clearfix"></div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>

