package com.solfood.service;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Service;
import com.solfood.dao.ManagerDAO;
import com.solfood.dto.BoardVO;
import com.solfood.dto.BuyVO;
import com.solfood.dto.MemberVO;
import com.solfood.dto.ProductVO;
 
@Service
public class ManagerServiceImpl implements ManagerService {
    @Inject
    private ManagerDAO dao;
    
    //-------------------------------------------------------
    //	product
    //-------------------------------------------------------
	@Override
	public List<ProductVO> selectProduct() throws Exception {
		 return dao.selectProduct();
	}
	@Override
	public ProductVO selectProductById(String product_id) throws Exception {
		return dao.selectProductById(product_id);
	}
	@Override
	public void updateProduct(ProductVO vo) throws Exception {
		dao.updateProduct(vo);
	}
	@Override
	public void deleteProduct(String product_id) throws Exception {
		dao.deleteProduct(product_id);
		
	}
	@Override
	public void insertProduct(ProductVO vo) throws Exception {
		dao.insertProduct(vo);
		
	}
    
	//-------------------------------------------------------
    //	account
    //-------------------------------------------------------
    @Override
    public List<MemberVO> selectAccount() throws Exception {
        return dao.selectAccount();
    }

	@Override
	public List<BuyVO> selectBuy() throws Exception {
		 return dao.selectBuy();
	}

	@Override
	public List<BoardVO> selectBoard() throws Exception {
		 return dao.selectBoard();
	}
	
	
	
}




