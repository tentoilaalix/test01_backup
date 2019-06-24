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

	//로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	private MemberService memberService;
	

	
	/* 회원정보 등록 */
	@RequestMapping(value = "/joinMember.do", method = RequestMethod.GET)
	public void getWrite() throws Exception{
		
	}
	@RequestMapping(value = "/joinMember.do", method = RequestMethod.POST)
	public String memberRegister(MemberVO vo) throws Exception{
		
		memberService.joinMember(vo);
		
		return "/member/joinComp";
		//return "redirect:/member/joinComp";
	}
	
	
	
	// 로그인
	@RequestMapping("login.do")
    public String login(){
        return "member/login";    // views/member/login.jsp로 포워드
    }
    
    // 02. 로그인 처리
    @RequestMapping("loginCheck.do")
    public ModelAndView loginCheck(@ModelAttribute MemberVO vo, HttpSession session){
        boolean result = memberService.loginCheck(vo, session);
        ModelAndView mav = new ModelAndView();
        if (result == true) { // 로그인 성공
            // home.jsp로 이동
            mav.setViewName("home");
            mav.addObject("msg", "success");
        } else {    // 로그인 실패
            // login.jsp로 이동
            mav.setViewName("member/login");
            mav.addObject("msg", "failure");
        }
        return mav;
    }
    // 03. 로그아웃 처리
    @RequestMapping("logout.do")
    public ModelAndView logout(HttpSession session){
        memberService.logout(session);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("member/login");
        mav.addObject("msg", "logout");
        return mav;
    }
	
	/*
	 * // 로그인 페이지 이동
	 * @RequestMapping("/login.do") public String login() { return "/member/login";
	 * }
	 */
	
	
	// 회원가입 완료페이지 이동
	@RequestMapping("/joinComp.do")
	public String join() {
		return "/member/joinComp";
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
