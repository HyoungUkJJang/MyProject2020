package my.project.dto;

public class UserDto {

	private String userid;
	private String userpwd;
	private String username;
	private String userphone;
	private String userbirth;
	private String usermail;
	private String usermajor;
	private String userconcentration;
	private String userimg;
	
	
	public UserDto() {};
	
	public UserDto(String userid, String username, String userphone, String userbirth, String usermail,
			String usermajor, String userconcentration, String userimg) {
		super();
		this.userid = userid;
		this.username = username;
		this.userphone = userphone;
		this.userbirth = userbirth;
		this.usermail = usermail;
		this.usermajor = usermajor;
		this.userconcentration = userconcentration;
		this.userimg = userimg;
	}


	public UserDto(String userid, String userpwd, String username, String userphone, String userbirth, String usermail,
			String usermajor, String userconcentration, String userimg) {
		super();
		this.userid = userid;
		this.userpwd = userpwd;
		this.username = username;
		this.userphone = userphone;
		this.userbirth = userbirth;
		this.usermail = usermail;
		this.usermajor = usermajor;
		this.userconcentration = userconcentration;
		this.userimg = userimg;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserphone() {
		return userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public String getUserbirth() {
		return userbirth;
	}

	public void setUserbirth(String userbirth) {
		this.userbirth = userbirth;
	}

	public String getUsermail() {
		return usermail;
	}

	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}

	public String getUsermajor() {
		return usermajor;
	}

	public void setUsermajor(String usermajor) {
		this.usermajor = usermajor;
	}

	public String getUserconcentration() {
		return userconcentration;
	}

	public void setUserconcentration(String userconcentration) {
		this.userconcentration = userconcentration;
	}

	public String getUserimg() {
		return userimg;
	}

	public void setUserimg(String userimg) {
		this.userimg = userimg;
	}


	
}
