package com.solfood.controller;

import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.solfood.dto.MemberVO;
import com.solfood.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	private MemberService memberService;
	
	
	//============================================================
	//	join-- 6/24 기준 수정필요 by 영민
	//============================================================
	@RequestMapping(value = "/joinMember.do", method = RequestMethod.GET)
	public void getWrite() throws Exception{
		
	}
	@RequestMapping(value = "/joinMember.do", method = RequestMethod.POST)
	public String memberRegister(MemberVO vo) throws Exception{
		
		memberService.joinMember(vo);
		
		return "/member/joinComp";
		//return "redirect:/member/joinComp";
	}
	
	
	// 회원가입 완료페이지 이동
	@RequestMapping("/joinComp.do")
	public String join() {
		return "/member/joinComp";
	}
	
	
	
	//============================================================
	//	login-- 6/24 기준 완료 by 영민
	//============================================================
	//---------------------------------------------
	// login form
	//---------------------------------------------
	@RequestMapping("login.do")
	   public String login(){
	       return "member/login";   
	}
	    
	//---------------------------------------------
	// login process
	//---------------------------------------------
	@RequestMapping("loginPro.do")
	public String loginProcess(HttpSession session, MemberVO dto){
	    String returnURL = "";
	    if ( session.getAttribute("login") != null ){
	        session.removeAttribute("login"); 					// 기존에 login이란 세션 값이 존재한다면 기존값을 제거해 준다.
	    }
	    MemberVO vo = memberService.login(dto);					// 로그인이 성공하면 UserVO 객체를 반환함.
	         
	    // 로그인 성공
	    if (vo!= null){ 
	        session.setAttribute("login", vo); 					// 세션에 login인이란 이름으로 UserVO 객체를 저장
	        System.out.println("==============================로그인 성공");
	        returnURL = "redirect:/"; 							// 로그인 성공시 메인으로 바로 이동
	        
	    // 로그인에 실패한 경우
	    }else { 
	        returnURL = "redirect:/login.do"; 					// 로그인 폼으로 다시 가도록 함
	        System.out.println("==============================로그인 실패");
	    }    
	    return returnURL; 										// 위에서 설정한 returnURL 을 반환해서 이동시킴
	}
		
	//---------------------------------------------
	//	logout form
	//---------------------------------------------
    @RequestMapping("logout.do")
    public ModelAndView logout(HttpSession session){
        memberService.logout(session);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("member/login");
        mav.addObject("msg", "logout");
        return mav;
    }
    //---------------------------------------------
  	//	logout process
  	//---------------------------------------------

    
    
    
	
	
	//============================================================
    //	mypage--> *** servlet-context.xml에서, mypage로 이동하기 전에 로그인이 되었는지 intercept하게 설정해두었음 ***
    // 				6/24 기준 수정 필요 by 영민
	//============================================================
	// ** 둘이 합칠 예정 ** 
    // 마이페이지 이동
	@RequestMapping(value="/mypage.do")
	public String mypage() throws Exception{
		return "/member/mypage";
	}	
	
	// 회원정보 관리
	@RequestMapping(value = "/status.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception{
	    logger.info("status");
	        
	    List<MemberVO> memberList = memberService.selectMember();
	    model.addAttribute("memberList", memberList);
	 
	    return "/member/status";
	}    
}
