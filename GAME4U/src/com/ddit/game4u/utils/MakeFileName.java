package com.ddit.game4u.utils;

import java.util.UUID;

public class MakeFileName {
	
	//파일명 안주면 여기 것을 쓰고 주면 준 것을 쓴다
	private static String delimiter="$$";	

	//원래 파일명에 UUID랑 구분자를 붙여 주는 것
	public static String toUUIDFileName(String fileName, String delimiter) {
		String uuid = UUID.randomUUID().toString().replace("-", "");
		if(delimiter!=null && !delimiter.isEmpty()) MakeFileName.delimiter = delimiter;
		
		return uuid + MakeFileName.delimiter + fileName;
	}
	
	//attachList 넘어왔을 때 떼어주는 작업
	public static String parseFileNameFromUUID(String fileName, String delimiter) {
		if(delimiter!=null && !delimiter.isEmpty()) MakeFileName.delimiter = delimiter;
		String[] uuidFileName = fileName.split(MakeFileName.delimiter);
		return uuidFileName[uuidFileName.length - 1];
	}
	
}
