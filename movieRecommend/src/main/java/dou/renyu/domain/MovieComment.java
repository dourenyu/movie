package dou.renyu.domain;

public class MovieComment {

	private String mcid;//评论id
	private String mid;//电影id
	private String uid;//用户id
	private String mccontent;//评论内容
	private String mctime;//评论时间

	public String getMcid() {
		return mcid;
	}
	public void setMcid(String mcid) {
		this.mcid = mcid;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getMccontent() {
		return mccontent;
	}
	public void setMccontent(String mccontent) {
		this.mccontent = mccontent;
	}
	public String getMctime() {
		return mctime;
	}
	public void setMctime(String mctime) {
		this.mctime = mctime;
	}
	
	
}
