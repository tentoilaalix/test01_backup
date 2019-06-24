package com.solfood.dao;

import java.util.List;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.solfood.dto.MemberVO;
 
@Repository
public class MemberDAOImpl implements MemberDAO {
 
    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.solfood.mapper.memberMapper";
    
	/* 회원조회 */
    @Override
    public List<MemberVO> selectMember() throws Exception {
        return sqlSession.selectList(Namespace+".selectMember");
    }

	/* 회원가입 */
	@Override
	public void joinMember(MemberVO vo) throws Exception {
		sqlSession.insert(Namespace + ".joinMember", vo);
	}

	
	/* 로그인 */
	// login
	@Override
	public MemberVO login(MemberVO vo) {
		return sqlSession.selectOne(Namespace+".login", vo);
	}	
	
    // 01_02. 회원 로그인 정보
    @Override
    public MemberVO viewMember(MemberVO vo) {
        return sqlSession.selectOne(Namespace+".viewMember", vo);
    }
    // 02. 회원 로그아웃
    @Override
    public void logout(HttpSession sessin) {
    }

}
