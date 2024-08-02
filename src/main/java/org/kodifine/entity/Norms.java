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
public class Norms

{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	private int nid;
	private String normtitile;
	private String normdesc;
	private String normtype;
	private String acctype;
	private String normdate;
	
	
	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public String getNormtitile() {
		return normtitile;
	}
	public void setNormtitile(String normtitile) {
		this.normtitile = normtitile;
	}
	public String getNormdesc() {
		return normdesc;
	}
	public void setNormdesc(String normdesc) {
		this.normdesc = normdesc;
	}
	public String getNormtype() {
		return normtype;
	}
	public void setNormtype(String normtype) {
		this.normtype = normtype;
	}
	public String getAcctype() {
		return acctype;
	}
	public void setAcctype(String acctype) {
		this.acctype = acctype;
	}
	public String getNormdate() {
		return normdate;
	}
	public void setNormdate(String normdate) {
		this.normdate = normdate;
	}
	
	
	
	
}
