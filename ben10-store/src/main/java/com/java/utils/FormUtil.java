package com.java.utils;

import java.lang.reflect.InvocationTargetException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;

/*map cac param tu request
 * cac name cua param phai trung voi thuoc tinh cua model
 * */

public class FormUtil {
	@SuppressWarnings("unchecked")
	public static <T> T toModel(Class<T> clazz, HttpServletRequest request){		//truyen java class
		T object = null;
		try {
			object = clazz.newInstance();
			BeanUtils.populate(object, request.getParameterMap());
		} catch (InstantiationException | IllegalAccessException | InvocationTargetException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return 	object;
	}
}