<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <title>Đăng ký tài khoản</title>
    <link rel="stylesheet" href="<c:url value='/template/register/style-register.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/register/grid-register.css'/>">
    
    <c:if test="${not empty alert}">		
	<script language="javascript">
		alert('${alert}');
    </script>
</c:if>
</head>

<body>
    <div class="content">
        <div class="modal-body">
            <div class="line">
                <h2>ĐĂNG KÝ TÀI KHOẢN</h2>
                <hr>
            </div>
            
            <form action="<c:url value = '/dang-ky'/>"   id= "formLogin"	method = "POST">
            
            <div style="color:red;text-align:center;"  class="alert">		<!-- nhan cac tham so nay tu controller/web/HomeController -->
				${message}
			</div> 
            <div class="form-register">
                <div class="form-group">
                    <div class="col span-4-of-10">
                        <label class="col-sm-4 control-label">
                            Email
                            <span class="texterror">*</span>
                        </label>
                    </div>
                    <div class="col span-6-of-10">
                        <input type="email" placeholder="Nhập Email" class="form-control" id="email" name="email">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col span-4-of-10">
                        <label class="col-sm-4 control-label">
                            Password
                            <span class="texterror">*</span>
                        </label>
                    </div>
                    <div class="col span-6-of-10">
                        <input type="password" placeholder="Password" class="form-control"  id="password" name="password">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col span-4-of-10">
                        <label class="col-sm-4 control-label">
                            Nhập lại Password
                            <span class="texterror">*</span>
                        </label>
                    </div>
                    <div class="col span-6-of-10">
                        <input type="password" placeholder="Password" class="form-control" id="password2" name="password2">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col span-4-of-10">
                        <label class="col-sm-4 control-label">
                            Họ tên
                            <span class="texterror">*</span>
                        </label>
                    </div>
                    <div class="col span-6-of-10">
                        <input type="text" placeholder="VD: Hoàng Vũ An" class="form-control" id="userName" name="userName">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col span-4-of-10">
                        <label class="col-sm-4 control-label">
                            Số điện thoại
                            <span class="texterror">*</span>
                        </label>
                    </div>
                    <div class="col span-6-of-10">
                        <input type="number" placeholder="01..., 08..., 09..., or +84..." class="form-control" id="phoneNumber" name="phoneNumber">
                    </div>
                </div>
                <div>
                    <input type="submit" value="Đăng ký" class="btn ctrl-btn">
                </div>
                
            </div>
            <input	type = "hidden" value = "register" name = "action"/>		<!-- gui ve controller biet la action gi -->
           
            </form>
            
        </div>
    </div>
</body>

</html>