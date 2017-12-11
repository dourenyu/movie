package dou.renyu.domain;

public class Order {
	
	private String oid;
	private String uid;
	private String mid;
	private String otime;
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getOtime() {
		return otime;
	}
	public void setOtime(String otime) {
		this.otime = otime;
	}
	public Order(String oid, String uid, String mid, String otime) {
		super();
		this.oid = oid;
		this.uid = uid;
		this.mid = mid;
		this.otime = otime;
	}

	
}
