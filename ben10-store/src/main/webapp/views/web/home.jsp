<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <title>Trang chủ</title>
    <link rel="stylesheet" href="<c:url value='/template/web/style.css'/>"   >
</head>

<body>
    <div class="homepage">
        <div class="homepage-top homepage-sticky">
            <div class="navbar">
                <ul class="navbar-links">
                    <li class="nav-link">
                        <a href="#" class="notify-icon">
                            <img src="<c:url value='/template/web/pngegg.png'/> "class="svg-icon icon-notificaiton">
                            <!-- <svg viewBox="3 2.5 14 14" x="0" y="0" class="svg-icon icon-notificaiton">
                            <path d="m17 15.6-.6-1.2-.6-1.2v-7.3c0-.2 0-.4-.1-.6-.3-1.2-1.4-2.2-2.7-2.2h-1c-.3-.7-1.1-1.2-2.1-1.2s-1.8.5-2.1 1.3h-.8c-1.5 0-2.8 1.2-2.8 2.7v7.2l-1.2 2.5-.2.4h14.4zm-12.2-.8.1-.2.5-1v-.1-7.6c0-.8.7-1.5 1.5-1.5h6.1c.8 0 1.5.7 1.5 1.5v7.5.1l.6 1.2h-10.3z"></path>
                            <path d="m10 18c1 0 1.9-.6 2.3-1.4h-4.6c.4.9 1.3 1.4 2.3 1.4z"></path>
                            </svg> -->
                            <span class="_tb">Thông báo</span>
                        </a>
                    </li>
                    <a href="#" class="nav-link">
                        <div class="helpcenter-icon">
                            <svg heigth="16" viewBox="0 0 16 16" width="16" class="svg-icon icon-help-center">
                                <g fill="none">
                                    <circle cx="7" cy="8" r="7" stroke="currentColor"></circle>
                                    <path fill="currentColor"
                                        d="m6.871 3.992c-.814 0-1.452.231-1.914.704-.462.462-.693 1.089-.693 1.892h1.155c0-.484.099-.858.297-1.122.22-.319.583-.473 1.078-.473.396 0 .715.11.935.33.209.22.319.517.319.902 0 .286-.11.55-.308.803l-.187.209c-.682.605-1.1 1.056-1.243 1.364-.154.286-.22.638-.22 1.045v.187h1.177v-.187c0-.264.055-.506.176-.726.099-.198.253-.396.462-.572.517-.451.825-.737.924-.858.275-.352.418-.803.418-1.342 0-.66-.22-1.188-.66-1.573-.44-.396-1.012-.583-1.716-.583zm-.198 6.435c-.22 0-.418.066-.572.22-.154.143-.231.33-.231.561 0 .22.077.407.231.561s.352.231.572.231.418-.077.572-.22c.154-.154.242-.341.242-.572s-.077-.418-.231-.561c-.154-.154-.352-.22-.583-.22z">
                                    </path>
                                </g>
                            </svg>
                            <span class="nav-link_text">Hỗ trợ</span>
                        </div>
                    </a>
                    
                    <c:if test="${not empty USERMODEL}">		<!-- neu da dang nhap roi -->
              			<li class="nav-item">
                			<a class="nav-link" href='#'>Wellcome, ${USERMODEL.userName}</a>
              			</li>
              			<li class="nav-item">
               				 <a class="nav-link" href='<c:url value="/thoat?action=logout"/>'>Thoát</a>
             			 </li>
            		</c:if>
                    
                    
					<c:if test="${empty USERMODEL}">                    
                    	<a href='<c:url value="/dang-ky?action=register"/>' class="nav-link nav-link_text">Đăng ký</a>
                    	<div class="nav-link_seperator"></div>
                    	<a href='<c:url value="/dang-nhap?action=login"/>' class="nav-link nav-link_text">Đăng nhập</a>
                    </c:if>
                </ul>
            </div>
            <div class="logopage-search">

                <a href="#" class="logo-section">
                    <img src="<c:url value='/template/web/logo.png'/>" class="logo-img">
                    <span class="logo-name">Ben10</span>
                </a>

                <div class="search-section">
                    <div class="upper">
                        <div class="searchbar">
                            <div class="searchbar-main">
                                <form class="searchbar-input">
                                    <input type="text" placeholder="Search..." class="searchbar-input-2">
                                </form>
                            </div>

                            <button type="button" class="btn">
                                <a href="#">
                                    <img src="<c:url value='/template/web/search.png'/>" class="search-icon">
                                </a>
                                <!-- <img src="vendors/search.png" class="search-icon"> -->
                            </button>
                        </div>
                        <div class="bag-wrapper">
                            <a href="#">
                                <img src="<c:url value='/template/web/bag.png'/>" class="bag-icon">
                            </a>
                        </div>
                    </div>

                    <div class="navbar-catogaries">
                        <div class="catogaries">
                            <a href="#" class="quick-links">Thời trang nữ</a>
                            <a href="#" class="quick-links">Thời trang nam</a>
                            <a href="#" class="quick-links">Thể thao</a>
                            <a href="#" class="quick-links">Điện tử</a>
                            <a href="#" class="quick-links">Phụ kiện</a>
                            <a href="#" class="quick-links">Sức khỏe</a>
                            <a href="#" class="quick-links">Làm đẹp</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="menu">
                <div class="down">
                    <div class="navbar-down">
                        <a href="#" class="labels-item">Trang chủ</a>
                        <a href="#" class="labels-item">Bộ sưu tập</a>
                        <a href="#" class="labels-item">Sản phẩm</a>
                        <a href="#" class="labels-item">Nhân sự</a>
                        <a href="#" class="labels-item">Liên hệ</a>
                        <a href="#" class="labels-item">Hỗ trợ</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="homepage-body">
            <div class="slideAnh">
                <img src="<c:url value='/template/web/slide2.jpg'/>" class="slide">
                <img src="<c:url value='/template/web/slide3.png'/>" class="slide">
                <img src="<c:url value='/template/web/slide4.jpg'/>" class="slide">
            </div>
        </div>

        <script>
            var indexValue = 0;
            function slideShow() {
                setTimeout(slideShow, 2500);
                var x;
                const img = document.getElementsByClassName("slide");
                for (x = 0; x < img.length; x++) {
                    img[x].style.display = "none";
                }
                indexValue++;
                if (indexValue > img.length) { indexValue = 1 }
                img[indexValue - 1].style.display = "block";
            }
            slideShow();
        </script>

        <footer>
            <p>
                Copyright &copy; by Ben10 TEAM
            </p>
        </footer>
    </div>
</body>

</html>