package org.kodifine.entity;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import lombok.AllArgsConstructor;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity

public class Customers 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	private int id;
	private String name;
	private String address;
	private String number;
	private String pan;
	private String aadhaar;
	private String acctype;
	private String status;
//	private String fname;
//	private long fsize;
//	private String ftype;
//	@Lob
//	@Column(name = "files", nullable = false)
//	private byte[] files;
	
	
	
	

	public Customers() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Customers(int id,String status) {
		super();
		this.id=id;
		this.status = status;
	}
	

	public Customers(int id, String name, String acctype, String status) 
	{
		super();
		this.id = id;
		this.name = name;
		this.acctype = acctype;
		this.status = status;
	}

	public Customers(int id, String name, String address, String number, String pan, String aadhaar, String acctype,
			String status) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.number = number;
		this.pan = pan;
		this.aadhaar = aadhaar;
		this.acctype = acctype;
		this.status = status;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getPan() {
		return pan;
	}

	public void setPan(String pan) {
		this.pan = pan;
	}

	public String getAadhaar() {
		return aadhaar;
	}

	public void setAadhaar(String aadhaar) {
		this.aadhaar = aadhaar;
	}

	public String getAcctype() {
		return acctype;
	}

	public void setAcctype(String acctype) {
		this.acctype = acctype;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
//
//	public byte[] getFiles() {
//		return files;
//	}
//
//	public void setFiles(byte[] files) {
//		this.files = files;
//	}
//	public String getFname() {
//		return fname;
//	}
//
//	public void setFname(String fname) {
//		this.fname = fname;
//	}
//
//	public long getFsize() {
//		return fsize;
//	}
//
//	public void setFsize(long l) {
//		this.fsize = l;
//	}
//
//	public String getFtype() {
//		return ftype;
//	}
//
//	public void setFtype(String ftype) {
//		this.ftype = ftype;
//	}

	
	
	
}
