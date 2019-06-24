package com.solfood.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.solfood.dto.MemberVO;
 
@Repository
public interface MemberDAO {   
	
	//회원정보 조회
	public List<MemberVO> selectMember() throws Exception;
	
	/*회원가입*/
	public void joinMember(MemberVO vo) throws Exception;

	
	/* 로그인 */
    // 01_01. 회원 로그인 체크
    public boolean loginCheck(MemberVO vo);
    // 01_02. 회원 로그인 정보
    public MemberVO viewMember(MemberVO vo);
    // 02. 회원 로그아웃
    public void logout(HttpSession session);
    
    
    
}

	
	
	/*회원정보 조회*/

	//public MemberVO view(String account_user) throws Exception;
	/*
	 * public List<MemberVO> selectMember() throws Exception{ return
	 * sqlsession.select("member.selectMember", account_user); }
	 */
    
    
	/* 아이디 중복 검사 */
	/*
	 * public int check_id(String account_user) throws Exception{ return
	 * sqlsession.selectOne("member.check_id", account_user); }
	 */
    
	/* 이메일 중복 검사 */
    
    

    
	/* 회원수정 */

    
	/* 회원탈퇴 */
    
    
    
 