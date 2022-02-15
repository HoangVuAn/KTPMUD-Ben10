package com.java.controller.admin.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.java.model.ProductModel;
import com.java.service.IProductService;
import com.java.utils.HttpUtil;

@WebServlet(urlPatterns = { "/api-admin-product" })
public class ProductAPI extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	@Inject
	private IProductService productService;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		ObjectMapper mapper = new ObjectMapper();

		request.setCharacterEncoding("UTF-8");			//khi client gửi về tiếng việt ta phải set thành utf-8
		response.setContentType("application/json");	//server trả kq về client file json
		
		ProductModel productModel =  HttpUtil.of(request.getReader()).toModel(ProductModel.class);		//convert tu json sang ProductModel
		  // chuyen tu json sang String json//chuyen tu String json sang ProductModel
		productModel = productService.findOne(productModel.getId());
		
		mapper.writeValue(response.getOutputStream(), productModel);	//tra ve client json
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		ObjectMapper mapper = new ObjectMapper();

		request.setCharacterEncoding("UTF-8");			//khi client gửi về tiếng việt ta phải set thành utf-8
		response.setContentType("application/json");	//server trả kq về client file json
		
		ProductModel productModel =  HttpUtil.of(request.getReader()).toModel(ProductModel.class);		//convert tu json sang ProductModel
		  // chuyen tu json sang String json//chuyen tu String json sang ProductModel
		productModel = productService.save(productModel);

		mapper.writeValue(response.getOutputStream(), productModel);	//tra ve client json
	}
	
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		ObjectMapper mapper = new ObjectMapper();

		request.setCharacterEncoding("UTF-8");			//khi client gửi về tiếng việt ta phải set thành utf-8
		response.setContentType("application/json");
		ProductModel updateProduct =  HttpUtil.of(request.getReader()).toModel(ProductModel.class);		//convert tu json sang ProductModel
		  // chuyen tu json sang String json//chuyen tu String json sang ProductModel
		updateProduct = productService.update(updateProduct);
		mapper.writeValue(response.getOutputStream(), updateProduct);	//tra ve client json
	}
	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");	
		response.setContentType("application/json");	
		
		ProductModel productModel =  HttpUtil.of(request.getReader()).toModel(ProductModel.class);
		
		productService.delete(productModel.getIds());
		mapper.writeValue(response.getOutputStream(), "{}");
	}
}
