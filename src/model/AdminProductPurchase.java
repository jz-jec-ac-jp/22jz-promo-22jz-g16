package model;

public class AdminProductPurchase {
	int itemId;
	int userId;
	String us_adress, us_prefectur, street_address;
	
	
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUs_adress() {
		return us_adress;
	}
	public void setUs_adress(String us_adress) {
		this.us_adress = us_adress;
	}
	public String getUs_prefectur() {
		return us_prefectur;
	}
	public void setUs_prefectur(String us_prefectur) {
		this.us_prefectur = us_prefectur;
	}
	public String getStreet_address() {
		return street_address;
	}
	public void setStreet_address(String street_address) {
		this.street_address = street_address;
	}
	
	public AdminProductPurchase(int itemId, int userId, String us_adress, String us_prefectur, String street_address) {
		this.itemId = itemId;
		this.userId = userId;
		this.us_adress = us_adress;
		this.us_prefectur = us_prefectur;
		this.street_address = street_address;
	}
	
	
	
}
