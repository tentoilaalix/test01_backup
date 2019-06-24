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
}



