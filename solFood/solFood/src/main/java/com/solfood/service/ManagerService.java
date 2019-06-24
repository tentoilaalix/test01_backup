package com.solfood.service;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.solfood.dto.BoardVO;
import com.solfood.dto.BuyVO;
import com.solfood.dto.MemberVO;
import com.solfood.dto.ProductVO;


public interface ManagerService {
	
	 public List<ProductVO> selectProduct() throws Exception;
	 public ProductVO selectProductById(String product_id) throws Exception;
	 public void updateProduct(ProductVO vo) throws Exception;
	 public void deleteProduct(String product_id) throws Exception;
	 public void insertProduct(ProductVO vo) throws Exception;
	 
	 public List<MemberVO> selectAccount() throws Exception;
	 public List<BuyVO> selectBuy() throws Exception;
	 public List<BoardVO> selectBoard() throws Exception;

	 
	 /* 회원조회 */
    public List<MemberVO> selectMember() throws Exception;
    public MemberVO accountUpdate(String account_user) throws Exception;
    
	public void updateMember(MemberVO memberVo) throws Exception;
	public void deleteMember(MemberVO memberVo) throws Exception; 
    
	/* 상품등록 */
	//public void product_register(ProductVO vo);
	
}



