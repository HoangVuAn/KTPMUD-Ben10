package com.java.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.constant.SystemConstant;
import com.java.model.AdminModel;
import com.java.model.UserModel;
import com.java.utils.SessionUtil;

public class AuthorizationFilter implements Filter{
	private ServletContext context;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {		
		this.context = filterConfig.getServletContext();
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		String url = request.getRequestURI();	//lay duoc link hien tai dang request
		if(url.startsWith("/admin")){
			UserModel model = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
			AdminModel admin = (AdminModel)SessionUtil.getInstance().getValue(request, "ADMINMODEL");
			if(model!=null){
				response.sendRedirect(request.getContextPath()+"/dang-nhap-admin?action=login&message=not_permission");
			}
			else if(admin!=null){
				filterChain.doFilter(servletRequest, servletResponse); //thong cua
			} else{
				response.sendRedirect(request.getContextPath()+"/dang-nhap-admin?action=login&message=not_login");
			}
		} else {
			filterChain.doFilter(servletRequest, servletResponse);		//day la nhung url khong can filter
		}
	}

	@Override
	public void destroy() {
		
	}

}
