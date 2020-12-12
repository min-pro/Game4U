package com.ddit.game4u.action.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ddit.game4u.action.Action;

public class IframeStoreAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "/common/store";
		
		return url;
	}
	
	

}
