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
import com.java.service.IDanhMucService;
import com.java.service.IProductService;
import com.java.utils.FormUtil;

@WebServlet(urlPatterns = { "/admin-product" })
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 6871723498916982699L;
	@Inject
	private IProductService productService;
	@Inject
	private IDanhMucService danhMucService;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductModel product = FormUtil.toModel(ProductModel.class, request); //lay du lieu type vao product
		String view = "";
		if(product.getType().equals(SystemConstant.LIST)){
			product.setListResult(productService.findAll());
			request.setAttribute("danhmuc", danhMucService.findAll());
			view = "views/admin/admin/product.jsp";
		} else if(product.getType().equals(SystemConstant.EDIT)){
			product = productService.findOne(product.getId());
			request.setAttribute("danhmuc", danhMucService.findAll());
			view = "views/admin/admin/edit-product.jsp";
		} else if(product.getType().equals(SystemConstant.ADD)){
			request.setAttribute("danhmuc", danhMucService.findAll());
			view = "views/admin/admin/edit-product.jsp";
		} 
		else if(product.getType().equals(SystemConstant.DELETE)){
			productService.deleteOne(product.getId());
			product.setListResult(productService.findAll());
			view = "views/admin/admin/product.jsp";
		}
		product.setListResult(productService.findAll());
		request.setAttribute(SystemConstant.PRODUCT, product);
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}
}
