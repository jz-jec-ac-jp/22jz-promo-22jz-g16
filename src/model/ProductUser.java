package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class ProductUser implements Serializable{

	private int id;
	private String name_kanji, name_kana, mail_adress, us_pasward , us_adress, tel_number, us_prefectur, street_address;
	private Timestamp  create_date, update_date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName_kanji() {
		return name_kanji;
	}
	public void setName_kanji(String name_kanji) {
		this.name_kanji = name_kanji;
	}
	public String getName_kana() {
		return name_kana;
	}
	public void setName_kana(String name_kana) {
		this.name_kana = name_kana;
	}
	public String getMail_adress() {
		return mail_adress;
	}
	public void setMail_adress(String mail_adress) {
		this.mail_adress = mail_adress;
	}
	public String getUs_pasward() {
		return us_pasward;
	}
	public void setUs_pasward(String us_pasward) {
		this.us_pasward = us_pasward;
	}
	public String getUs_adress() {
		return us_adress;
	}
	public void setUs_adress(String us_adress) {
		this.us_adress = us_adress;
	}
	public String getTel_number() {
		return tel_number;
	}
	public void setTel_number(String tel_number) {
		this.tel_number = tel_number;
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
	public Timestamp getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Timestamp create_date) {
		this.create_date = create_date;
	}
	public Timestamp getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Timestamp update_date) {
		this.update_date = update_date;
	}
	
	public ProductUser() {}
	
	public ProductUser(int id, String name_kanji, String name_kana, String mail_adress, String us_pasward,
			String us_adress, String tel_number, String us_prefectur, String street_address, Timestamp create_date,
			Timestamp update_date) {
		super();
		this.id = id;
		this.name_kanji = name_kanji;
		this.name_kana = name_kana;
		this.mail_adress = mail_adress;
		this.us_pasward = us_pasward;
		this.us_adress = us_adress;
		this.tel_number = tel_number;
		this.us_prefectur = us_prefectur;
		this.street_address = street_address;
		this.create_date = create_date;
		this.update_date = update_date;
	}
	
	
}
