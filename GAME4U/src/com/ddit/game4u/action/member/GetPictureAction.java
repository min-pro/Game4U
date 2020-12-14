package com.ddit.game4u.action.member;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ddit.game4u.action.Action;
import com.ddit.game4u.utils.GetUploadPath;

public class GetPictureAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "";
		
		request.setCharacterEncoding("utf-8");
		String picName = request.getParameter("picName");
		String savedPath = GetUploadPath.getUploadPath("user.picture.upload");
		
		String filePath = savedPath + File.separator + picName;
		// 보낼 파일 설정
		File downloadFile = new File(filePath);
		FileInputStream inStream = new FileInputStream(downloadFile);
		
		ServletContext context = request.getServletContext();
		
		//파일 포맷으로 MIME을 결정한다.
		String mimeType = context.getMimeType(filePath);
		if(mimeType==null) {
			mimeType = "application/octet-stream";
		}
		
		//response수정
		response.setContentType(mimeType);
		response.setContentLength((int)downloadFile.length());
		
		String headerKey = "Content-Disposition";
		String headerValue = String.format("attachment; filename=\"%s\"", downloadFile.getName());
		
		response.setHeader(headerKey, headerValue);
		
		//파일 내보내기
		OutputStream outStream = response.getOutputStream();
		byte[] buffer = new byte[4096];
		int bytesRead = -1;
		while((bytesRead=inStream.read(buffer)) != -1) {
			outStream.write(buffer,0,bytesRead);
		}
		
		inStream.close();
		outStream.close();
		
		return url;
	}

}
