<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-product"/>
<c:url var="ProductURL" value="/admin-product"/>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="<c:url value='/views/admin/admin/images/logo.png'/>"	type="image/ico" />

<c:if test="${not empty product.id}">
	<title>Sửa Sản Phẩm</title>
</c:if>
<c:if test="${empty product.id}">
	<title>Thêm Sản Phẩm</title>
</c:if>
<link rel="stylesheet"
	href="<c:url value='/views/admin/admin/style.css'/>">

<!-- Bootstrap -->
<link href="<c:url value='/views/admin/vendors/bootstrap/dist/css/bootstrap.min.css'/>"	rel="stylesheet">
<!-- Font Awesome -->
<link href="<c:url value='/views/admin/vendors/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet">
<!-- NProgress -->
<link href="<c:url value='/views/admin/vendors/nprogress/nprogress.css'/>" rel="stylesheet">
<!-- iCheck -->
<link href="<c:url value='/views/admin/vendors/iCheck/skins/flat/green.css'/>" rel="stylesheet">

<!-- bootstrap-progressbar -->
<link href="<c:url value='/views/admin/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css'/>" rel="stylesheet">
<!-- JQVMap -->
<link	href="<c:url value='/views/admin/vendors/jqvmap/dist/jqvmap.min.css'/>"	rel="stylesheet" />
<!-- bootstrap-daterangepicker -->
<link	href="<c:url value='/views/admin/vendors/bootstrap-daterangepicker/daterangepicker.css'/>"	rel="stylesheet">

<!-- Custom Theme Style -->
<link rel="stylesheet"	href="<c:url value='/views/admin/admin/custom.css'/>">
<!-- TinyMCE plugin library-->
<script src="<c:url value='/views/admin/admin/tinymce/tinymce.min.js'/>"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	tinymce.init({
		selector : '#myTextarea',
		width : 600,
		height : 300
	});
</script>
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="/admin-home" class="site_title"> <img
							src="<c:url value='/views/admin/admin/images/logo.png'/>" alt=""
							class="logo-img"> <span>Ben10</span>
						</a>
					</div>

					<div class="clearfix"></div>

					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<ul class="nav side-menu">
								<li class="active"><a><i class="fa fa-home"></i> Trang Chủ Admin </a></li>
								<li><a><i class="fa fa-users"></i> Quản Trị Nhân viên <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#">Tuyển Dụng </a></li>
										<li><a href="account-nv.html">Đăng Ký Tài Khoản Nhân Viên</a></li>
										<li><a href="info-nv.html">Thông Tin Nhân Viên</a></li>
									</ul></li>
								<li><a><i class="fa fa-shopping-cart"></i> Quản Trị Sản Phẩm <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="/admin-danhmuc?type=list">Danh Mục</a></li>
										<li><a href='<c:url value="/admin-product?type=list"/>'>Sản Phẩm</a></li>
										<li><a href="#">Bài Viết</a></li>
									</ul></li>
								<li><a><i class="fa fa-bar-chart-o"></i> Báo Cáo <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#">Doanh Thu</a></li>
										<li><a href="#">Kết Quả Kinh Doanh</a></li>
									</ul></li>
								<li><a><i class="fa fa-user"></i>Tài Khoản <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#">Thay Đổi Thông Tin</a></li>
										<li><a href='<c:url value="/thoat?action=logout"/>'>Thoát Đăng Nhập</a></li>
									</ul></li>
								<li><a><i class="fa fa-sign-out"></i>Vào Shop</a></li>
							</ul>
						</div>

					</div>

				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<div class="nav toggle">
						<a id="menu_toggle"><i class="fa fa-bars"></i></a>
					</div>
					<nav class="nav navbar-nav">
						<ul class=" navbar-right">
							<li class="nav-item dropdown open" style="padding-left: 15px;">	
								<c:if test="${not empty ADMINMODEL}">		<!-- neu da dang nhap roi -->
									<li class="nav-item">
               				 			<a class="nav-link" href='<c:url value="/thoat-admin?action=logout"/>'>Thoát</a>
             			 			</li>
             			 			<li class="nav-item">
                						<a class="nav-link" href='#'>||</a>
              						</li>
              						<li class="nav-item">
                						<a class="nav-link" href='#'>Wellcome, ${ADMINMODEL.userName}</a>
              						</li>
              			
            					</c:if> 
							</li>
						</ul>
					</nav>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="page-title">
					<div class="title-left">
						<a href="/admin-home" style="font-size: 15px;">Trang chủ Admin </a> <span class=" fa fa-chevron-right"></span>
						<a href="/admin-product?type=list"	style="font-size: 15px;"> Quản Trị Sản Phẩm </a> <span class=" fa fa-chevron-right"></span> 
						<a href="/admin-product?type=list" style="font-size: 15px;"> Sản Phẩm</a> <span class=" fa fa-chevron-right"></span> 
		
						<c:if test="${not empty product.id}">
                        	<a href="#" style="font-size: 15px;">Sửa</a>
                        </c:if>
                        <c:if test="${empty product.id}">
                            <a href="#" style="font-size: 15px;">Thêm</a>
                        </c:if>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="row" style="margin-top: 25px;">
					<div class="col-md-12 col-sm-12 ">
						<div class="panel">
							<div class="x-title">
								<h2>Thông tin chung</h2>
								<div class="clearfix"></div>
							</div>
							<form id="formSubmit">
							<div class="x-content">
								<div class="form-group">
									<div class="col-md-3 col-sm-3">
										<label class="x-label label-sp"> Hình ảnh: </label>
									</div>
									<div class="col-md-9 col-sm-9">
										<input type="text" id="hinhAnh" name="hinhAnh">
									</div>
								</div>
								<hr>
								<div class="form-group">
									<div class="col-md-3 col-sm-3">
										<label class="x-label label-sp"> Danh mục: </label>
									</div>
									<div class="col-md-9 col-sm-9">
										<select class="form-control" id="codeDanhMuc" name="codeDanhMuc">
                        					<c:if test="${empty product.codeDanhMuc}">
                        						<option value="">Chọn loại bài viết</option>
    											<c:forEach var="item" items="${danhmuc}">
    												<option value="${item.code}">${item.ten}</option>
    											</c:forEach>
                        					</c:if>
    								
    										<c:if test="${not empty product.codeDanhMuc}">
    											<option value="">Chọn loại bài viết</option>
    									
    											<c:forEach var="item" items="${danhmuc}">
    												<option value="${item.code}" <c:if test="${item.code == product.codeDanhMuc}">selected="selected"</c:if>>
    													${item.ten}
    												</option>
    											</c:forEach>
    									
                        					</c:if>
  										</select>
									</div>
								</div>
								<hr>
								
								<div class="form-group">
									<div class="col-md-3 col-sm-3">
										<label class="x-label label-sp"> Tên sản phẩm: </label>
									</div>
									<div class="col-md-9 col-sm-9">
										<input type="text" class="textbox-sp" id="ten" name="ten" value="${product.ten}">
									</div>
								</div>
								<hr>
								<div class="form-group">
									<div class="col-md-3 col-sm-3">
										<label class="x-label label-sp"> Giá: </label>
									</div>
									<div class="col-md-9 col-sm-9">
										<input type="text" class="textbox-sp" id="gia" name="gia" value="${product.gia}">
									</div>
								</div>
								<hr>
								<hr>
								<div class="form-group">
									<div class="col-md-3 col-sm-3">
										<label class="x-label label-sp"> Số lượng: </label>
									</div>
									<div class="col-md-9 col-sm-9">
										<input type="text" class="textbox-sp" id="soLuong" name="soLuong" value="${product.soLuong}">
									</div>
								</div>
								<hr>
								<div class="form-group">
									<div class="col-md-3 col-sm-3">
										<label class="x-label label-sp"> Mô tả: </label>
									</div>
									<div class="col-md-9 col-sm-9">
										<input type="text" class="textbox-sp" id="moTa" name="moTa" value="${product.moTa}">
									</div>
								</div>
								<hr>
								<div class="form-group" style="margin-top: 30px;">
									<div class="col-md-3 col-sm-3">
										<label class="x-label label-sp"> </label>
									</div>
									<div class="col-md-9 col-sm-9">
										
										<c:if test="${not empty product.id}">
                                 			<input type="button" class="btn btn-white btn-warning btn-bold" value="Cập nhật bài viết" id="btnAddOrUpdateProduct"/>
                                 		</c:if>
                                 		<c:if test="${empty product.id}">
                                 			<input type="button" class="btn btn-white btn-warning btn-bold" value="Thêm bài viết" id="btnAddOrUpdateProduct"/>
                                		 </c:if>
									</div>
								</div>
							</div>
							<input type="hidden" value="${product.id}" id="id" name = "id"/>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- /page content -->

		<!-- footer content -->
		<footer>
			<div class="pull-right">Copyright &copy; by Ben10 TEAM</div>
			<div class="clearfix"></div>
		</footer>
		<!-- /footer content -->
	</div>
<script>
	$('#btnAddOrUpdateProduct').click(function (e) {
   		e.preventDefault();
   		//get du lieu tu cac field xuong(trong formSubmit)
    	var data = {};
    	var formData = $('#formSubmit').serializeArray();
    	$.each(formData, function (i, v) {
        	data[""+v.name+""] = v.value;
    	});
    	//end get du lieu
    	
    	
    	var id = $('#id').val();
    	if (id == "") {
        	addProduct(data);
    	} else {
        	updateProduct(data);
    	}
	});
	
	 function addProduct(data) {
		$.ajax({
			url: '${APIurl}',
	        type: 'POST',
	        contentType: 'application/json',	//client gui len server json
	        data: JSON.stringify(data),	//chuyen tu js object sang json
	        dataType: 'json',		//server gui ve client json
	        success: function (result) {
	        	window.location.href="${ProductURL}?type=list";
	        },
	        error: function (error) {
	        	console.log(error);
	        }
		});
	}
	    function updateProduct(data) {
	        $.ajax({
	            url: '${APIurl}',
	            type: 'PUT',
	            contentType: 'application/json',
	            data: JSON.stringify(data),
	            dataType: 'json',
	            success: function (result) {
	            	 window.location.href="${ProductURL}?type=list";
		        },
		        error: function (error) {
		        	console.log(error);
		        }
	        });
	    }
</script>
	<!-- jQuery -->
	<script
		src="<c:url value='/views/admin/vendors/jquery/dist/jquery.min.js'/>"></script>
	<!-- Bootstrap -->
	<script
		src="<c:url value='/views/admin/vendors/bootstrap/dist/js/bootstrap.bundle.min.js'/>"></script>
	<!-- FastClick -->
	<script
		src="<c:url value='/views/admin/vendors/fastclick/lib/fastclick.js'/>"></script>
	<!-- NProgress -->
	<script
		src="<c:url value='/views/admin/vendors/nprogress/nprogress.js'/>"></script>
	<!-- Chart.js -->
	<script
		src="<c:url value='/views/admin/vendors/Chart.js/dist/Chart.min.js'/>"></script>
	<!-- gauge.js -->
	<script
		src="<c:url value='/views/admin/vendors/gauge.js/dist/gauge.min.js'/>"></script>
	<!-- bootstrap-progressbar -->
	<script
		src="<c:url value='/views/admin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js'/>"></script>
	<!-- iCheck -->
	<script
		src="<c:url value='/views/admin/vendors/iCheck/icheck.min.js'/>"></script>
	<!-- Skycons -->
	<script src="<c:url value='/views/admin/vendors/skycons/skycons.js'/>"></script>
	<!-- Flot -->
	<script src="<c:url value='/views/admin/vendors/Flot/jquery.flot.js'/>"></script>
	<script
		src="<c:url value='/views/admin/vendors/Flot/jquery.flot.pie.js'/>"></script>
	<script
		src="<c:url value='/views/admin/vendors/Flot/jquery.flot.time.js'/>"></script>
	<script
		src="<c:url value='/views/admin/vendors/Flot/jquery.flot.stack.js'/>"></script>
	<script
		src="<c:url value='/views/admin/vendors/Flot/jquery.flot.resize.js'/>"></script>
	<!-- Flot plugins -->
	<script
		src="<c:url value='/views/admin/vendors/flot.orderbars/js/jquery.flot.orderBars.js'/>"></script>
	<script
		src="<c:url value='/views/admin/vendors/flot-spline/js/jquery.flot.spline.min.js'/>"></script>
	<script
		src="<c:url value='/views/admin/vendors/flot.curvedlines/curvedLines.js'/>"></script>
	<!-- DateJS -->
	<script
		src="<c:url value='/views/admin/vendors/DateJS/build/date.js'/>"></script>
	<!-- JQVMap -->
	<script
		src="<c:url value='/views/admin/vendors/jqvmap/dist/jquery.vmap.js'/>"></script>
	<script
		src="<c:url value='/views/admin/vendors/jqvmap/dist/maps/jquery.vmap.world.js'/>"></script>
	<script
		src="<c:url value='/views/admin/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js'/>"></script>
	<!-- bootstrap-daterangepicker -->
	<script
		src="<c:url value='/views/admin/vendors/moment/min/moment.min.js'/>"></script>
	<script
		src="<c:url value='/views/admin/vendors/bootstrap-daterangepicker/daterangepicker.js'/>"></script>

	<!-- Custom Theme Scripts -->
	<script src="<c:url value='/views/admin/build/js/custom.min.js'/>"></script>

</body>

</html>