package dou.renyu.domain;

public class Movie {

	private String mid;
	private String mname;
	private String mcontent;
	private int mview;
	private double mgrade;
	private double mprice;
	
	
	
	public double getMprice() {
		return mprice;
	}
	public void setMprice(double mprice) {
		this.mprice = mprice;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMcontent() {
		return mcontent;
	}
	public void setMcontent(String mcontent) {
		this.mcontent = mcontent;
	}
	public int getMview() {
		return mview;
	}
	public void setMview(int mview) {
		this.mview = mview;
	}
	public double getMgrade() {
		return mgrade;
	}
	public void setMgrade(double mgrade) {
		this.mgrade = mgrade;
	}
	
	
}
