package my.project.dao;

import my.project.dto.UserDto;
import my.project.test.ImgtestDto;
import my.project.test.ProfileDto;
import my.project.test.ProfileDto2;
import my.project.test.ProfileSkill;

public interface UserDAO {

	public void userjoin(UserDto userdto);
	public UserDto userlogin(UserDto userdto);
	public void imgtest(ImgtestDto imgdto);
	public String idcheck(String userid);
	
	//프로필부분
	public ProfileSkill skilltest();
	
	//프로필 인풋테스트
	public void ProfileInputText(ProfileDto profiledto);
	public ProfileDto2 ProfileSelectText(String userid);
	
}
