package my.project.version1;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import my.project.dto.UserDto;
import my.project.service.MemberServiceImpl;
import my.project.test.ProfileDto;
import my.project.test.ProfileDto2;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	

	@Autowired
	private MemberServiceImpl service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		//	model.addAttribute("serverTime", formattedDate );
		//return "Board/BoardTest.tiles";
		//return "test";
		return "index";
		//return "ProfileInput";
		//return "tiles/TilesMain.tiles";
	}
	
	//아이디 중복체크
	@RequestMapping(value = "/check", method = RequestMethod.POST)
	@ResponseBody
	public String IdCheck(@RequestParam("username") String data,HttpServletRequest request) 
	{
		System.out.println("---아이디체크---");
		String result = service.idcheck(data);
		
		return result;
	}
	
	//프로필 페이지 이동
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String IdCheck(HttpServletRequest request,HttpSession session) 
	{
		
		return "profile.tiles";
		//return "Profile/profile";
	}
	//회원가입 처리
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String JoinData(Locale locale, Model model, UserDto userinfo) throws IOException 
	{	
		System.out.println(userinfo);
		
		//이미지 처리부분
		//MultipartHttpServletRequest ex = (MultipartHttpServletRequest)request;
		//Iterator<String> iterator = ex.getFileNames();
		//MultipartFile file = null;
		//file = ex.getFile(iterator.next());
		//String url3 = file.getOriginalFilename();
		//userinfo.setUserimg(url3);
		//File f = new File("C:\\Users\\dnr75\\Desktop\\myprojectBackUp1\\MyProjectVersion1\\src\\main\\webapp\\resources\\myimage\\"+url3);
		//file.transferTo(f);
		
		//기본이미지 이름 세팅해주고 디비 인서트
		userinfo.setUserimg("standard.png");
		service.userjoin(userinfo);
		
		return "index";
	}
	
	// 로그아웃 처리부분
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String LogoutProc(HttpSession session,Locale locale, Model model, UserDto userinfo) 
	{	
		session.invalidate();
		return "index";
	}
	
	// 로그인처리
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String LoginProc(HttpSession session,Locale locale, Model model, UserDto userinfo) 
	{	
		System.out.println(userinfo);
	
		System.out.println(userinfo.getUserid() + userinfo.getUserpwd());
		
		UserDto result = service.userlogin(userinfo);

		if(result == null)
		{	
			System.out.println("로그인 실패");
			return "index";
		}
		else
		{
			System.out.println(result.getUserimg());
			result.setUserimg("./resources/myimage/"+result.getUserimg()); // 이미지 url세팅해주기
			System.out.println("로그인 성공");
			
			//프로필테스트
			ProfileDto2 profile = service.ProfileSelectText(result.getUserid());
			session.setAttribute("profile", profile);
			session.setAttribute("obj", result);
			return "Board/BoardTest.tiles";
			//return "Profile/profile";
		}
	}
	
	//프로필 입력처리테스트
	@RequestMapping(value = "/profiletext", method = RequestMethod.POST)
	public String ProfileText(Locale locale, Model model, ProfileDto profiledto) throws IOException 
	{	
		service.ProfileInputText(profiledto);
		return "index";
	}
	
	/* 이미지 삽입 참고 
	//@RequestParam("report") MultipartFile file
	@RequestMapping(value = "/imgtest", method=RequestMethod.POST)
	public String Imgtest(MultipartHttpServletRequest request) throws IOException 
	{	
		
		MultipartHttpServletRequest ex = (MultipartHttpServletRequest)request;
		Iterator<String> iterator = ex.getFileNames();
		MultipartFile file = null;
		
		while(iterator.hasNext())
		{
			file = ex.getFile(iterator.next());
			String url3 = file.getOriginalFilename();
			File f = new File("C:\\Users\\dnr75\\Desktop\\myprojectBackUp1\\MyProjectVersion1\\src\\main\\webapp\\resources\\myimage\\"+url3);
			file.transferTo(f);

			System.out.println("-----------------file start-------------------");
			System.out.println("name : "+file.getName());
			System.out.println("filename : "+file.getOriginalFilename());
			System.out.println("size : "+file.getSize());
			System.out.println("-------------------END------------------------");
		}
		
		return "index";
	}
	*/
}
