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
import com.java.model.ProductModel;
import com.java.service.IProductService;
import com.java.utils.FormUtil;

@WebServlet(urlPatterns = { "/admin-product" })
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 6871723498916982699L;
	@Inject
	private IProductService productService;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductModel model = FormUtil.toModel(ProductModel.class, request);
		String view = "";
		if(model.getType().equals(SystemConstant.LIST)){
			model.setListResult(productService.findAll());
			view = "views/admin/admin/product.jsp";
		} else if(model.getType().equals(SystemConstant.EDIT)){
			model = productService.findOne(model.getIdSanPham());
			view = "views/admin/admin/edit-product.jsp";
		} else if(model.getType().equals(SystemConstant.ADD)){
			
		}
		model.setListResult(productService.findAll());
		request.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}
}
