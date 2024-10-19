package com.tadigital.ecommerce.customer.entity;

public class Password {
	private String password;
	private String newPassword;
	private String retypePassword;
	
	public Password() {
	}
	
	public Password( String password, String newPassword, String retypePassword ) {
		this.password = password;
		this.newPassword = newPassword;
        this.retypePassword = retypePassword;
	}

	public void setPassword( String password ) {
		this.password = password;
	}
	
	public void setNewPassword( String newPassword ) {
		this.newPassword = newPassword;
	}
	
	public void setRetypePassword( String retypePassword ) {
		this.retypePassword = retypePassword;
	}
	
	public String getPassword() {
		return password;
	}
	public String getNewPassword() {
		return newPassword;
	}
	public String getRetypePassword() {
		return retypePassword;
	}
	
	
	public String toString() {
		return "Password[password=" + password + ", newpassword=" + newPassword + ", retypepassword=" + retypePassword + "]";
	}
}