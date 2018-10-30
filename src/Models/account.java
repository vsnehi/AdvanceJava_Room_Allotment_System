package Models;

import java.math.BigInteger;
import java.security.MessageDigest;

public class account {

	public account() {
		 
	}

	 
	private static String email;
	private static String password;
	private static String name;
	private static String mobile;
	private static String address;
	private static String gender;
	private static String dob;
	private static String image;
	private static String UserType;
	
 


	
	

	
	


public static String getEmail() {
		return email;
	}












	public static String getPassword() {
		return password;
	}












	public static String getName() {
		return name;
	}












	public static String getMobile() {
		return mobile;
	}












	public static String getAddress() {
		return address;
	}












	public static String getGender() {
		return gender;
	}












	public static String getDob() {
		return dob;
	}












	public static String getImage() {
		return image;
	}












	public static String getUserType() {
		return UserType;
	}












	public static void setEmail(String email) {
		account.email = email;
	}












	public static void setPassword(String password) {
		account.password = password;
	}












	public static void setName(String name) {
		account.name = name;
	}












	public static void setMobile(String mobile) {
		account.mobile = mobile;
	}












	public static void setAddress(String address) {
		account.address = address;
	}












	public static void setGender(String gender) {
		account.gender = gender;
	}












	public static void setDob(String dob) {
		account.dob = dob;
	}












	public static void setImage(String image) {
		account.image = image;
	}












	public static void setUserType(String userType) {
		UserType = userType;
	}




	
	 
	
	   /*	MD 5 Security */












public static String MD5(String input) {
   	
   	try {
   		
   		MessageDigest md =MessageDigest.getInstance("MD5");
   		
   		 byte[] messageDigest =md.digest(input.getBytes());
   		
   		 BigInteger number=new BigInteger(1,messageDigest);
   		
   		 String hashtext=number.toString(16);
   		 
   		 while(hashtext.length() <32)
   		 {
   			 hashtext="0"+hashtext;
   		 }
   		 return hashtext;
   	}catch(Exception e) {
   		throw new RuntimeException(e);
   	}
   	                            }
}
