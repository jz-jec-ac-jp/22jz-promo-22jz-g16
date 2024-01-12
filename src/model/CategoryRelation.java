package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class CategoryRelation implements Serializable{
	private int categoryi_d, base_id, category_merchandise;
	private Timestamp  create_date, update_date;
	public int getCategoryi_d() {
		return categoryi_d;
	}
	public void setCategoryi_d(int categoryi_d) {
		this.categoryi_d = categoryi_d;
	}
	public int getBase_id() {
		return base_id;
	}
	public void setBase_id(int base_id) {
		this.base_id = base_id;
	}
	public int getCategory_merchandise() {
		return category_merchandise;
	}
	public void setCategory_merchandise(int category_merchandise) {
		this.category_merchandise = category_merchandise;
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
	
	public CategoryRelation() {}
	
	public CategoryRelation(int categoryi_d, int base_id, int category_merchandise, Timestamp create_date,
			Timestamp update_date) {
		super();
		this.categoryi_d = categoryi_d;
		this.base_id = base_id;
		this.category_merchandise = category_merchandise;
		this.create_date = create_date;
		this.update_date = update_date;
	}

	

}
