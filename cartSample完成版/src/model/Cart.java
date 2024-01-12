package model;

public class Cart {
	private int id;
	private int itemId;
	private int userId;
	
	public int getId() {
		return id;
	}
	public int getItemId() {
		return itemId;
	}
	public int getUserId() {
		return userId;
	}
	
	public Cart(int id, int itemId, int userId) {
		super();
		this.id = id;
		this.itemId = itemId;
		this.userId = userId;
	}
	
	
}
