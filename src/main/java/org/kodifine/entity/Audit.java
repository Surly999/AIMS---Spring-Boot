package org.kodifine.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity

public class Audit 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int auditid;
	private int cid;
	private int aid;
	private String compdetails;
	private String verifiedby;
	private String verifieddate;
	
	
	public Audit() {
		super();
	}


	public Audit(int auditid, int cid, int aid, String compdetails, String verifiedby, String verifieddate) {
		super();
		this.auditid = auditid;
		this.cid = cid;
		this.aid = aid;
		this.compdetails = compdetails;
		this.verifiedby = verifiedby;
		this.verifieddate = verifieddate;
	}


	public int getAuditid() {
		return auditid;
	}


	public void setAuditid(int auditid) {
		this.auditid = auditid;
	}


	public int getCid() {
		return cid;
	}


	public void setCid(int cid) {
		this.cid = cid;
	}


	public int getAid() {
		return aid;
	}


	public void setAid(int aid) {
		this.aid = aid;
	}


	public String getCompdetails() {
		return compdetails;
	}


	public void setCompdetails(String compdetails) {
		this.compdetails = compdetails;
	}


	public String getVerifiedby() {
		return verifiedby;
	}


	public void setVerifiedby(String verifiedby) {
		this.verifiedby = verifiedby;
	}


	public String getVerifieddate() {
		return verifieddate;
	}


	public void setVerifieddate(String verifieddate) {
		this.verifieddate = verifieddate;
	}
	
	
	

}
