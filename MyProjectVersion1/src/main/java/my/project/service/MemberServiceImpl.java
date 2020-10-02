package my.project.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import my.project.dao.UserDAO;
import my.project.dto.UserDto;
import my.project.test.ImgtestDto;
import my.project.test.ProfileDto;
import my.project.test.ProfileDto2;
import my.project.test.ProfileSkill;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private SqlSession session;
	
	@Override
	public void userjoin(UserDto userdto)
	{
		session.getMapper(UserDAO.class).userjoin(userdto);
		System.out.println("로그인호출");
	}
	
	//로그인
	@Override
	public UserDto userlogin(UserDto userdto)
	{
		return session.getMapper(UserDAO.class).userlogin(userdto);
	}
	
	@Override
	public void imgtest(ImgtestDto imgdto)
	{
		session.getMapper(UserDAO.class).imgtest(imgdto);
	}
	
	@Override
	public String idcheck(String userid)
	{
		String result = session.getMapper(UserDAO.class).idcheck(userid);
		
		if(result == null)
			return "succeess";
		else
			return "fail";
	}
	//스킬값테스트
	@Override
	public ProfileSkill skilltest()
	{
		return session.getMapper(UserDAO.class).skilltest();
	}
	
	//프로필 인풋테스트
	@Override
	public void ProfileInputText(ProfileDto profiledto)
	{
		session.getMapper(UserDAO.class).ProfileInputText(profiledto);
	}
	
	@Override
	public ProfileDto2 ProfileSelectText(String userid)
	{
		return session.getMapper(UserDAO.class).ProfileSelectText(userid);
	}
	
	
}

