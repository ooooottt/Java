package dto;

public class Kakeibo{
	private int day;
	private String name;
	private int price;


	public Kakeibo(int day,String name,int price){
		this.day = day;
		this.name = name;
		this.price = price;

	}


	public int getDay() {
		return day;
	}


	public void setDay(int day) {
		this.day = day;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}
}