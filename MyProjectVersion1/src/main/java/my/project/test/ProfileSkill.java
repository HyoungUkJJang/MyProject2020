package my.project.test;

public class ProfileSkill {

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getSkilname() {
		return skilname;
	}

	public void setSkilname(String skilname) {
		this.skilname = skilname;
	}

	public int getSkilnum() {
		return skilnum;
	}

	public void setSkilnum(int skilnum) {
		this.skilnum = skilnum;
	}

	public ProfileSkill(String userid, String skilname, int skilnum) {
		super();
		this.userid = userid;
		this.skilname = skilname;
		this.skilnum = skilnum;
	}

	private String userid;
	private String skilname;
	private int skilnum;

	public ProfileSkill() {};
	
}
