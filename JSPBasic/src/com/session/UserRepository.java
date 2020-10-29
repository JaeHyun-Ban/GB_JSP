package com.session;

import java.util.ArrayList;
import java.util.List;

public class UserRepository {
	
	//DB가정
	private static List<User> userList = new ArrayList<>();

	//유저 넣어주기
	public static void setUser(User user) {
		userList.add(user);
	}
	
	//>static과 user를 리턴해야하네
	//매개값으로 id를 받아서 userList에 있는지 확인하는 메서드
	public static User getUser(String id) {
		
		for(User user : userList) {
			if(user.getId().equals(id)) {
				return user;
			} 
		}
		return null;
	}
	
	
	//회원탈퇴
	public static void deleteUser(String id) {
		//remove는 User객체로 가능함
		
		//기존에 생성한 메서드를 이용해서 삭제해주기
		userList.remove(getUser(id)); //메서드 재활용
	}
	
	
}
