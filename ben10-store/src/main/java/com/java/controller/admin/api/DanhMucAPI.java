package com.java.controller.admin.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.java.model.DanhMucModel;
import com.java.model.ProductModel;
import com.java.service.IDanhMucService;
import com.java.service.IProductService;
import com.java.utils.HttpUtil;

@WebServlet(urlPatterns = { "/api-admin-danhmuc" })
public class DanhMucAPI extends HttpServlet{

	private static final long serialVersionUID = 1L;
	@Inject
	private IDanhMucService danhMucService;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		ObjectMapper mapper = new ObjectMapper();

		request.setCharacterEncoding("UTF-8");			//khi client gửi về tiếng việt ta phải set thành utf-8
		response.setContentType("application/json");	//server trả kq về client file json
		DanhMucModel danhMucModel =  HttpUtil.of(request.getReader()).toModel(DanhMucModel.class);		//convert tu json sang ProductModel
		  // chuyen tu json sang String json//chuyen tu String json sang ProductModel
		danhMucModel = danhMucService.save(danhMucModel);

		mapper.writeValue(response.getOutputStream(), danhMucModel);	//tra ve client json
	}
	
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		ObjectMapper mapper = new ObjectMapper();

		request.setCharacterEncoding("UTF-8");			//khi client gửi về tiếng việt ta phải set thành utf-8
		response.setContentType("application/json");
		DanhMucModel updateProduct =  HttpUtil.of(request.getReader()).toModel(DanhMucModel.class);		//convert tu json sang ProductModel
		  // chuyen tu json sang String json//chuyen tu String json sang ProductModel
		updateProduct = danhMucService.update(updateProduct);
		mapper.writeValue(response.getOutputStream(), updateProduct);	//tra ve client json
	}
	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");	
		response.setContentType("application/json");	
		
		DanhMucModel productModel =  HttpUtil.of(request.getReader()).toModel(DanhMucModel.class);
		
		danhMucService.delete(productModel.getIds());
		mapper.writeValue(response.getOutputStream(), "{}");
	}
}
