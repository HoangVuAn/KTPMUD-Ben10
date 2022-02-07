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
<link rel="icon"
	href="<c:url value='/views/admin/admin/images/logo.png'/>"
	type="image/ico" />
<title>Sửa Sản Phẩm</title>
<link rel="stylesheet"
	href="<c:url value='/views/admin/admin/style.css'/>">

<!-- Bootstrap -->
<link
	href="<c:url value='/views/admin/vendors/bootstrap/dist/css/bootstrap.min.css'/>"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="<c:url value='/views/admin/vendors/font-awesome/css/font-awesome.min.css'/>"
	rel="stylesheet">
<!-- NProgress -->
<link
	href="<c:url value='/views/admin/vendors/nprogress/nprogress.css'/>"
	rel="stylesheet">
<!-- iCheck -->
<link
	href="<c:url value='/views/admin/vendors/iCheck/skins/flat/green.css'/>"
	rel="stylesheet">

<!-- bootstrap-progressbar -->
<link
	href="<c:url value='/views/admin/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css'/>"
	rel="stylesheet">
<!-- JQVMap -->
<link
	href="<c:url value='/views/admin/vendors/jqvmap/dist/jqvmap.min.css'/>"
	rel="stylesheet" />
<!-- bootstrap-daterangepicker -->
<link
	href="<c:url value='/views/admin/vendors/bootstrap-daterangepicker/daterangepicker.css'/>"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link rel="stylesheet"
	href="<c:url value='/views/admin/admin/custom.css'/>">
<!-- TinyMCE plugin library-->
<script src="<c:url value='/views/admin/admin/tinymce/tinymce.min.js'/>"></script>

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
						<a href="/ben10-store/admin-home" class="site_title"> <img
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
								<li class="active"><a><i class="fa fa-home"></i> Trang Chủ Admin </span></a></li>
								<li><a><i class="fa fa-users"></i> Quản Trị Nhân viên <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#">Tuyển Dụng </a></li>
										<li><a href="account-nv.html">Đăng Ký Tài Khoản Nhân Viên</a></li>
										<li><a href="info-nv.html">Thông Tin Nhân Viên</a></li>
									</ul></li>
								<li><a><i class="fa fa-shopping-cart"></i> Quản Trị Sản Phẩm <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#">Danh Mục</a></li>
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
								<li><a><i class="fa fa-sign-out"></i>Vào Shop </span></a></li>
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
								Xin chào, Admin!</li>

						</ul>
					</nav>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="page-title">
					<div class="title-left">
						<a href="trangchu.html" style="font-size: 15px;">Trang chủ
							Admin </a> <span class=" fa fa-chevron-right"></span> <a href="#"
							style="font-size: 15px;"> Quản Trị Sản Phẩm </a> <span
							class=" fa fa-chevron-right"></span> <a href="product.html"
							style="font-size: 15px;"> Sản Phẩm</a> <span
							class=" fa fa-chevron-right"></span> <a href="product-add.html"
							style="font-size: 15px;"> Thêm</a>
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
							<div class="x-content">
								<div class="form-group">
									<div class="col-md-3 col-sm-3">
										<label class="x-label label-sp"> Hình ảnh: </label>
									</div>
									<div class="col-md-9 col-sm-9">
										<input type="file" name="anh">
									</div>
								</div>
								<hr>
								<div class="form-group">
									<div class="col-md-3 col-sm-3">
										<label class="x-label label-sp"> Danh mục: </label>
									</div>
									<div class="col-md-9 col-sm-9">
										<select class="textbox-sp">
											<option value="">-- Hãy chọn --</option>
											<option value="">Thời trang nam</option>
											<option value="">Thời trang nữ</option>
											<option value="">Phụ kiện</option>
											<option value="">Giày dép nam</option>
											<option value="">Giày dép nữ</option>
											<option value="">Sắc đẹp</option>
											<option value="">Sức khỏe</option>
											<option value="">Thiết bị điện tử</option>
											<option value="">Máy tính & laptop</option>
											<option value="">Đồng hồ</option>
											<option value="">Đồ chơi</option>
											<option value="">Thời trang trẻ em</option>
											<option value="">Balo & túi ví nam</option>
											<option value="">Phụ kiện & trang sức nữ</option>
											<option value="">Thiết bị điện gia dụng</option>
										</select>
									</div>
								</div>
								<hr>
								<div class="form-group">
									<div class="col-md-3 col-sm-3">
										<label class="x-label label-sp"> Mã sản phẩm: </label>
									</div>
									<div class="col-md-9 col-sm-9">
										<input type="text" class="textbox-sp" value="${model.idSanPham}">
									</div>
								</div>
								<hr>
								<div class="form-group">
									<div class="col-md-3 col-sm-3">
										<label class="x-label label-sp"> Tên sản phẩm: </label>
									</div>
									<div class="col-md-9 col-sm-9">
										<input type="text" class="textbox-sp" value="${model.ten}">
									</div>
								</div>
								<hr>
								<div class="form-group">
									<div class="col-md-3 col-sm-3">
										<label class="x-label label-sp"> Giá: </label>
									</div>
									<div class="col-md-9 col-sm-9">
										<input type="text" class="textbox-sp" value="${model.gia}">
									</div>
								</div>
								<hr>
								<hr>
								<div class="form-group">
									<div class="col-md-3 col-sm-3">
										<label class="x-label label-sp"> Số lượng: </label>
									</div>
									<div class="col-md-9 col-sm-9">
										<input type="text" class="textbox-sp" value="${model.soLuong}">
									</div>
								</div>
								<hr>
								<div class="form-group">
									<div class="col-md-3 col-sm-3">
										<label class="x-label label-sp"> Mô tả: </label>
									</div>
									<div class="col-md-9 col-sm-9">
										<textarea name="" cols="30" rows="5"
											placeholder="Nhập dòng mô tả ngắn sản phẩm/bài viết tại khung này"
											class="textbox-sp"></textarea>
									</div>
								</div>
								<hr>
								<div class="form-group" style="margin-top: 30px;">
									<div class="col-md-3 col-sm-3">
										<label class="x-label label-sp"> </label>
									</div>
									<div class="col-md-9 col-sm-9">
										<a href="product.html" style="margin-left: 10px;">
											<button class="btn-addproduct">Lưu</button>
										</a>
										
										<a href='<c:url value="/admin-product?type=list"/>' style="margin-left: 10px;">
											<button class="btn-addproduct">Thoát</button>
										</a>
									</div>
								</div>
							</div>
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
	</div>

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