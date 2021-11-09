/*
 * 파일과 관련된 유용한 기능을 모아놓는 클래스
 * */
package org.kosta.sharecipe.common;

public class FileManager {
	
	//확장자만 추출하기 
	public static String getExtend(String path) {
		int lastIndex = path.lastIndexOf(".");  //.을 기준으로 갯수를 받아둔다음
		String ext = path.substring(lastIndex+1, path.length()); // .이후의 내용을 받아서 리턴해줌
		//System.out.println(ext);		
		return ext;
	}
}