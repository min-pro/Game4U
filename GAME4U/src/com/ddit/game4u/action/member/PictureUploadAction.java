package com.ddit.game4u.action.member;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.ddit.game4u.action.Action;
import com.ddit.game4u.dto.MemberVO;
import com.ddit.game4u.exception.NotMultipartFormDataException;
import com.ddit.game4u.service.MemberService;
import com.ddit.game4u.utils.GetUploadPath;
import com.ddit.game4u.utils.MakeFileName;
import com.ddit.game4u.utils.ServletFileUploadBuilder;

public class PictureUploadAction implements Action{
	
	// 업로드 파일 환경 설정
	private static final int MEMORY_THRESHOLD = 1024 * 500; // 500KB
	private static final int MAX_FILE_SIZE = 1024 * 1024 * 2; // 1MB
	private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 4; // 2MB
	
	private MemberService memberService;
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url="";
		
		String picture = pictureUpload(request);
		String email = ((MemberVO)request.getSession().getAttribute("loginUser")).getEmail();
		
		MemberVO member = new MemberVO();
		member.setEmail(email);
		member.setPicture(picture);
		
		try {
			memberService.pictureUpload(member);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		((MemberVO)request.getSession().getAttribute("loginUser")).setPicture(picture);
		
		return url;
	}

	private String pictureUpload(HttpServletRequest request) {
		
		ServletFileUpload upload = null;
		
		try {
			upload = ServletFileUploadBuilder.build(request,MEMORY_THRESHOLD, MAX_FILE_SIZE, MAX_REQUEST_SIZE);
		} catch (NotMultipartFormDataException e1) {
			System.out.println(e1.getMessage());
			return null;
		}
		
		//파일 저장 경로 설정
		String uploadPath = GetUploadPath.getUploadPath("user.picture.upload");
		
		File file = new File(uploadPath);
		if (!file.mkdirs()) {
			System.out.println(uploadPath + "가 이미 존재하거나 실패했습니다.");		
		};
		
		String picture= "";
		//request 변환
		try {
			List<FileItem> formItems = upload.parseRequest(request);
			
			// 파일 개수 확인
			if (formItems != null && formItems.size() > 0) {
				for (FileItem item : formItems) { // form items 반복하여 꺼내는 구문
					if (!item.isFormField()) { // 파일일 경우 해당
						// uuid+구분자+파일명
						String fileName = MakeFileName.toUUIDFileName(".jpg", "");
						String filePath = uploadPath + File.separator + fileName;
						File storeFile = new File(filePath);
						
						picture = fileName;
						// local HDD 에 저장
						item.write(storeFile);
						
					}else { // 일반 parameter text
						switch (item.getFieldName()) {
						case "oldPicture":
							String oldFileName = item.getString("utf-8").trim();
							File oldFile = new File(uploadPath + File.separator + oldFileName);
							if (oldFile.exists()) {
								oldFile.delete();
							}
							break;
						}
					}
				}
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return picture;
	}
}






