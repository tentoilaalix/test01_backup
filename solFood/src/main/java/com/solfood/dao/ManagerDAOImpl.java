package com.solfood.dao;

import java.util.List;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.solfood.dto.BoardVO;
import com.solfood.dto.BuyVO;
import com.solfood.dto.MemberVO;
import com.solfood.dto.ProductVO;
 
@Repository
public class ManagerDAOImpl implements ManagerDAO {
    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.solfood.mapper.managerMapper";
    
    //-------------------------------------------------------------
    // product 
    //-------------------------------------------------------------
	@Override
	public List<ProductVO> selectProduct() throws Exception {
		return sqlSession.selectList(Namespace+".selectProduct");
	}
	@Override
	public ProductVO selectProductById(String product_id) throws Exception {
		return sqlSession.selectOne(Namespace+".selectProductById", product_id);
	}
	@Override
	public void updateProduct(ProductVO vo) throws Exception {
		sqlSession.update(Namespace+".updateProduct", vo);		
	}
	@Override
	public void deleteProduct(String product_id) throws Exception {
		sqlSession.delete(Namespace+".deleteProduct", product_id);
		
	}
	@Override
	public void insertProduct(ProductVO vo) throws Exception {
		sqlSession.insert(Namespace+".insertProduct", vo);
		
	}
	//-------------------------------------------------------------
    // account 
    //-------------------------------------------------------------
	@Override
	public List<MemberVO> selectAccount() throws Exception {
		return sqlSession.selectList(Namespace+".selectAccount");
	}

	@Override
	public List<BuyVO> selectBuy() throws Exception {
		return sqlSession.selectList(Namespace+".selectBuy");
	}

	@Override
	public List<BoardVO> selectBoard() throws Exception {
		return sqlSession.selectList(Namespace+".selectBoard");
	}
	
	
	
}
