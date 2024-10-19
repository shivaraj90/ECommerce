package com.tadigital.ecommerce.customer.entity;

public class User {
	
	private int id;
	private String name;
	private String email;
	private String password;
	private String newPassword;
	private String retypePassword;
	private String firstName;
	private String lastName;
	private String gender;
	private String address;
	private String city;
	private String zipcode;
	private String state;
	private String country;
	private String number;
	private String profilePicture;
	
	public User() {
	}
	
	public User( String email,String firstName, String lastName, String gender,
			String address, String city, String zipcode, String state, String country, String number) {
		this.email = email;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.address = address;
		this.city = city;
		this.zipcode = zipcode;
		this.state = state;
		this.country = country;
		this.number = number;

	}
	
	public User( int id ) {
		this.id = id;
	}

	public User( String email ) {
		this.email = email;
	}
	
	public User(String name, String email, String password) {
		this.name = name;
		this.email = email;
		this.password = password;
	}
	
	public User( String email, String password ) {
		this.email = email;
		this.password = password;
	}
	
	public void setId( int id ) {
		this.id = id;
	}
	
	public void setName( String name ) {
		this.name = name;
	}
	
	public void setEmail( String email ) {
		this.email = email;
	}
	
	public void setPassword( String password ) {
		this.password = password;
	}
	
	public void setProfilePicture( String profilePicture ) {
		this.profilePicture = profilePicture;
	}
	
	public void setNewPassword( String newPassword ) {
		this.newPassword = newPassword;
	}
	
	public void setRetypePassword(String retypePassword) {
		this.retypePassword = retypePassword;
	}
	
	public void setfirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setlastName(String lastName) {
		this.lastName = lastName;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public void setState(String state) {
		this.state = state;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public void setNumber(String number) {
		this.number = number;
	}
	
	public int getId() {
		return id;
	}

	public String getfirstName() {
		return firstName;
	}

	public String getlastName() {
		return lastName;
	}
	
	public String getProfilePicture() {
		return profilePicture;
	}

	public String getGender() {
		return gender;
	}

	public String getAddress() {
		return address;
	}

	public String getCity() {
		return city;
	}

	public String getZipcode() {
		return zipcode;
	}

	public String getState() {
		return state;
	}

	public String getCountry() {
		return country;
	}

	public String getNumber() {
		return number;
	}

	public String getName() {
		return name;
	}
	
	public String getEmail() {
		return email;
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
		return "User[name=" + name + ", email=" + email + ", password=" + password + ",firstName=" + firstName
				+ ", lastName=" + lastName + ", gender=" + gender + ", address=" + address + ", city=" + city
				+ ", zipcode=" + zipcode + ", state=" + state + ", country=" + country + ", number=" + number + "]";
	}
}