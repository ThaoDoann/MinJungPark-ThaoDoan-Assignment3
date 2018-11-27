package Model;

import java.io.Serializable;

public class Shoe implements Serializable{
	private int itemId;
	private String itemName;
	private String category;
	private int shoeSize;
	private double price;
	
	public Shoe() {
		
	}

	public Shoe(int itemId, String itemName, String category, int shoeSize, double price) {
		super();
		this.itemId = itemId;
		this.itemName = itemName;
		this.category = category;
		this.shoeSize = shoeSize;
		this.price = price;
	}

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getShoeSize() {
		return shoeSize;
	}

	public void setShoeSize(int shoeSize) {
		this.shoeSize = shoeSize;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
	
}
