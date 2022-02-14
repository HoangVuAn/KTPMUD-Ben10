package com.java.controller.admin;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.AdminModel;
import com.java.model.UserModel;
import com.java.service.IAdminService;
import com.java.utils.FormUtil;
import com.java.utils.SessionUtil;

@WebServlet(urlPatterns = { "/admin-home","/dang-nhap-admin","/thoat-admin" })
public class HomeController extends HttpServlet {
	@Inject
	private IAdminService adminService;
	
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message"); 
	
	private static final long serialVersionUID = 2686801510274002166L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
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
			RequestDispatcher rd = request.getRequestDispatcher("/views/admin/admin/login.jsp");
			rd.forward(request, response);
		} 
		else if(action != null && action.equals("logout")){
			SessionUtil.getInstance().removeValue(request, "ADMINMODEL");
			response.sendRedirect(request.getContextPath()+"/admin-home");
		}
		else{
			if(request.getSession() != null){
				RequestDispatcher rd = request.getRequestDispatcher("/views/admin/admin/home.jsp");
				rd.forward(request, response);
			}else{	
				RequestDispatcher rd = request.getRequestDispatcher("/views/admin/admin/login.jsp");
				rd.forward(request, response);
			}
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String action = request.getParameter("action");
		if (action != null && action.equals("login")) {
			AdminModel admin = FormUtil.toModel(AdminModel.class, request);		//lay userName va password			
			admin = adminService.findByUsernameAndPassword(admin.getUserName(),admin.getPassword());
			
			if(admin!=null){
				//getInstance la kiem tra xem doi tuong nay da ton tai chua, neu ton tai roi thi dung lai con chua co thi khoi tao
				SessionUtil.getInstance().putValue(request, "ADMINMODEL", admin);
				response.sendRedirect(request.getContextPath()+"/admin-home");
			}
			else {
				response.sendRedirect(request.getContextPath()+"/dang-nhap-admin?action=login&message=username_password_invalid");
			}
			
		}
	}
}