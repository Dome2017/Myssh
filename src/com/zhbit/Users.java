package com.zhbit;

import java.io.UnsupportedEncodingException;

public class Users {

	private String username;
	private String password;
	private String old;
	private String email;
	
	public Users() {
		// TODO Auto-generated constructor stub
	}
	//通过重构得到setter和getter方法
		public String getUsername() {
			return username;
		}


		public void setUsername(String username) throws UnsupportedEncodingException {
			this.username = toUTF8(username);
		}


		public String getPassword() {
			return password;
		}


		public void setPassword(String password) {
				this.password = password;
		}
		
		private String toUTF8(String str) throws UnsupportedEncodingException {
			return new String(str.getBytes("iso-8859-1"),"UTF-8");
		}


}
