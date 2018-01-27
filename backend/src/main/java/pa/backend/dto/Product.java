package pa.backend.dto;

import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {

	/*
	 * Product
	 * 
	 * id PRIMARY INCREMENT name description code unitPrice availableQty Brand
	 * isActive categoryId supplierId soldQty views
	 * 
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String brand;
	private String description;
	private String code;
	@Column(name = "UNIT_PRICE")
	private int unitPrice;
	@Column(name = "AVAILABLE_QTY")
	private int availableQty;
	@Column(name = "SOLD_QTY")
	private int soldQty;
	@Column(name = "IS_ACTIVE")
	private boolean active;
	@Column(name = "CATEGORY_ID")
	private int categoryId;
	@Column(name = "SUPPLIER_ID")
	private int supplierId;
	private int views;

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", brand=" + brand + ", description=" + description + ", code="
				+ code + ", unitPrice=" + unitPrice + ", availableQty=" + availableQty + ", soldQty=" + soldQty
				+ ", active=" + active + ", categoryId=" + categoryId + ", supplierId=" + supplierId + ", views="
				+ views + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}

	public int getAvailableQty() {
		return availableQty;
	}

	public void setAvailableQty(int availableQty) {
		this.availableQty = availableQty;
	}

	public int getSoldQty() {
		return soldQty;
	}

	public void setSoldQty(int soldQty) {
		this.soldQty = soldQty;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public Product() {
		this.code = "PRD" + UUID.randomUUID().toString().substring(15,28).toUpperCase();
	}

}
