package com.solfood.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.solfood.dto.MemberVO;
import com.solfood.dto.ProductVO;

public interface MemberService {
	
	/* 회원조회 */
    public List<MemberVO> selectMember() throws Exception;

	/* 회원가입 */
	public void joinMember(MemberVO vo) throws Exception;

	
	/* 로그인 */
	// 01_01. 회원 로그인 체크
    public boolean loginCheck(MemberVO vo, HttpSession session);
    // 01_02. 회원 로그인 정보
    public MemberVO viewMember(MemberVO vo);
    // 02. 회원 로그아웃
    public void logout(HttpSession session);

    
	
}



