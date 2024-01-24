package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class ProductImag implements Serializable{
	
		private int id, purchase_id;
		private String img_url;
		private Timestamp  create_date, update_date;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public int getPurchase_id() {
			return purchase_id;
		}
		public void setPurchase_id(int purchase_id) {
			this.purchase_id = purchase_id;
		}
		public String getImg_url() {
			return img_url;
		}
		public void setImg_url(String img_url) {
			this.img_url = img_url;
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
		
		public ProductImag() {}
		
		public ProductImag(int id, int purchase_id, String img_url, Timestamp create_date, Timestamp update_date) {
//			super();
			this.id = id;
			this.purchase_id = purchase_id;
			this.img_url = img_url;
			this.create_date = create_date;
			this.update_date = update_date;
		}
		
		

}
