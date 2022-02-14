package com.java.utils;

import java.io.BufferedReader;
import java.io.IOException;

import com.fasterxml.jackson.databind.ObjectMapper;

public class HttpUtil {

	private String value;

	public HttpUtil(String value) {
		this.value = value;
	}
	
	public <T> T toModel(Class<T> tClass){		//truyen java class
		try{
			return new ObjectMapper().readValue(value, tClass);	//Sử dụng readValue() để convert Json String sang Java Object.
						//nho add thu vien object mapper(jackson-databind)
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}
		
	public static HttpUtil of(BufferedReader reader) {			//chuyen tu json sang String json
		StringBuilder sb = new StringBuilder();

		try {
			String line;
			while ((line = reader.readLine()) != null) {
				sb.append(line);
			}
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}

		return new HttpUtil(sb.toString());
	}
}
