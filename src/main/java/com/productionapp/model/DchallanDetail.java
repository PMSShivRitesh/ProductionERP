package com.productionapp.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name="DchallanDetail")
public class DchallanDetail {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="dchallanno")
	private int dchallanno;
	@Column(name="custId")
	private int custId;
	@Column(name="dchallandate")
	@Temporal(TemporalType.DATE)
	private Date dchallandate;
	@Column(name="dchallantype")
	private String dchallantype;
	@Column(name="pono")
	private String pono;
	@Temporal(TemporalType.DATE)
	@Column(name="podate")
	private Date podate;
	@Column(name="dchallanstatus")//,columnDefinition=" default 'Pending'")
	private String dchallanstatus;
	public String getDchallanstatus() {
		return dchallanstatus;
	}
	public void setDchallanstatus(String dchallanstatus) {
		this.dchallanstatus = dchallanstatus;
	}
	public int getDchallanno() {
		return dchallanno;
	}
	public void setDchallanno(int dchallanno) {
		this.dchallanno = dchallanno;
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public Date getDchallandate() {
		return dchallandate;
	}
	public void setDchallandate(Date dchallandate) {
		this.dchallandate = dchallandate;
	}
	public String getDchallantype() {
		return dchallantype;
	}
	public void setDchallantype(String dchallantype) {
		this.dchallantype = dchallantype;
	}
	public String getPono() {
		return pono;
	}
	public void setPono(String pono) {
		this.pono = pono;
	}
	public Date getPodate() {
		return podate;
	}
	public void setPodate(Date podate) {
		this.podate = podate;
	}
	
	

}
