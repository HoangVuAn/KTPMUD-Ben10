package com.java.controller.web;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.UserModel;
import com.java.service.IUserService;
import com.java.utils.FormUtil;
import com.java.utils.SessionUtil;

@WebServlet(urlPatterns = { "/trang-chu", "/dang-nhap","/dang-ky","/thoat" })
public class HomeController extends HttpServlet {
	@Inject
	private IUserService userService;
	
	private static final long serialVersionUID = 1L;
	
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");  //lay thong tin tu message.properties

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getParameter("action");
		
		if (action != null && action.equals("login")) {
			//alert
			String message = request.getParameter("message");
			String alert = request.getParameter("alert");
			if(message != null ){
				request.setAttribute("message", resourceBundle.getString(message));
			}
			if(alert != null){
				request.setAttribute("alert", resourceBundle.getString(alert));	//k can resourceBundle vi alert duoc dinh nghia san tu param url
			}
			//end alert
			RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
			rd.forward(request, response);
		}
		else if(action!=null && action.equals("logout")){
			SessionUtil.getInstance().removeValue(request, "USERMODEL" );
			response.sendRedirect(request.getContextPath()+"/trang-chu");
		}
			
		else if(action != null && action.equals("register")){
			//alert			
			String message = request.getParameter("message");
			String alert = request.getParameter("alert");
			if(message != null ){
				request.setAttribute("message", resourceBundle.getString(message));
				}
			if(alert != null){
				request.setAttribute("alert", resourceBundle.getString(alert));	//k can resourceBundle vi alert duoc dinh nghia san tu param url
			}
			//end alert
			if(message != null ){
				request.setAttribute("message", resourceBundle.getString(message));
			}
			RequestDispatcher rd = request.getRequestDispatcher("/views/register.jsp");
			rd.forward(request, response);
		} else{
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action != null && action.equals("login")) {
			UserModel model = FormUtil.toModel(UserModel.class, request);		//lay userName va password			
			model = userService.findByPhoneNumberAndPassWord(model.getPhoneNumber(),model.getPassword());
			
			if(model!=null){
				//getInstance la kiem tra xem doi tuong nay da ton tai chua, neu ton tai roi thi dung lai con chua co thi khoi tao
				SessionUtil.getInstance().putValue(request, "USERMODEL", model);
				response.sendRedirect(request.getContextPath()+"/trang-chu");
			}
			else {
				response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login&message=username_password_invalid");
			}
			
		}
		if (action != null && action.equals("register")){

			UserModel model = FormUtil.toModel(UserModel.class, request);
			
			if(model.getEmail().equals("") || model.getPassword().equals("") || model.getUserName().equals("") || model.getPhoneNumber()== 0L){
				response.sendRedirect(request.getContextPath()+"/dang-ky?action=register&message=chua_nhap_du");
			} else if(!model.getPassword().equals(request.getParameter("password2"))){
				response.sendRedirect(request.getContextPath()+"/dang-ky?action=register&message=mat_khau_khong_trung_khop");
			} else{
				Long id = null;
				id = userService.createAccount(model.getUserName(),model.getPassword(),model.getPhoneNumber(),model.getEmail());
				
				if(id==null){
					response.sendRedirect(request.getContextPath()+"/dang-ky?action=register&alert=trung_SDT");
				}else
					response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login&alert=dang_ky_thanh_cong");
			}
		}
	}

}
