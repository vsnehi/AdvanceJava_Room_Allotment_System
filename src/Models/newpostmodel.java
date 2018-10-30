package Models;

import javax.servlet.http.Part;

public class newpostmodel {

	private static Part Dfile;
	private static String dfileName;
    private static String hotel;
    private static String address;
    private static String ctype;
    private static String price;
    private static String rating;
    private static String UserImg;
    private static String UserName;
    private static String RoomViewed;
    private static String RoomComment;
    
    
    
	public static Part getDfile() {
		return Dfile;
	}
	public static void setDfile(Part dfile) {
		Dfile = dfile;
	}
	public static String getDfileName() {
		return dfileName;
	}
	public static void setDfileName(String dfileName) {
		newpostmodel.dfileName = dfileName;
	}
	public static String getHotel() {
		return hotel;
	}
	public static void setHotel(String hotel) {
		newpostmodel.hotel = hotel;
	}
	public static String getAddress() {
		return address;
	}
	public static void setAddress(String address) {
		newpostmodel.address = address;
	}
	public static String getCtype() {
		return ctype;
	}
	public static void setCtype(String ctype) {
		newpostmodel.ctype = ctype;
	}
	public static String getPrice() {
		return price;
	}
	public static void setPrice(String price) {
		newpostmodel.price = price;
	}
	public static String getRating() {
		return rating;
	}
	public static void setRating(String rating) {
		newpostmodel.rating = rating;
	}
	public static String getUserImg() {
		return UserImg;
	}
	public static void setUserImg(String userImg) {
		UserImg = userImg;
	}
	public static String getUserName() {
		return UserName;
	}
	public static void setUserName(String userName) {
		UserName = userName;
	}
	public static String getRoomViewed() {
		return RoomViewed;
	}
	public static void setRoomViewed(String roomViewed) {
		RoomViewed = roomViewed;
	}
	public static String getRoomComment() {
		return RoomComment;
	}
	public static void setRoomComment(String roomComment) {
		RoomComment = roomComment;
	}
    
    
 
    
    
    

}
