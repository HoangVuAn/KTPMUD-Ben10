package com.java.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.constant.SystemConstant;
import com.java.model.DanhMucModel;
import com.java.service.IDanhMucService;
import com.java.utils.FormUtil;
@WebServlet(urlPatterns = { "/admin-danhmuc" })

public class DanhMucController extends HttpServlet{
	@Inject
	private IDanhMucService danhMucService;
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		DanhMucModel danhMuc = FormUtil.toModel(DanhMucModel.class, request);
		String view = "";
		if (danhMuc.getType().equals(SystemConstant.LIST)){
			danhMuc.setListResult(danhMucService.findAll());
			view = "views/admin/admin/danh-muc.jsp";
		} else if (danhMuc.getType().equals(SystemConstant.EDIT)){
			danhMuc = danhMucService.findOne(danhMuc.getId());
			view = "views/admin/admin/edit-danh-muc.jsp";
		} else if(danhMuc.getType().equals(SystemConstant.ADD)){
			view = "views/admin/admin/edit-danh-muc.jsp";
		}
		request.setAttribute(SystemConstant.DANHMUC, danhMuc);
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}
}
