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

import com.solfood.dto.BoardVO;
import com.solfood.dto.BuyVO;
import com.solfood.dto.MemberVO;
import com.solfood.dto.ProductVO;
import com.solfood.service.ManagerService;

@Controller
public class ManagerController {

	//로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(ManagerController.class);
	
	@Inject
	private ManagerService service;
	
	//-------------------------------------------------------------
	//	managerMain 
	//-------------------------------------------------------------
	@RequestMapping("/managerMain")
	public String managerMain() throws Exception {
		return "/manager/managerMain";
	}
	
	//-------------------------------------------------------------
	//	product 
	//-------------------------------------------------------------
	@RequestMapping("/product_list")
	public String product_list(Model model) throws Exception{
		List<ProductVO> productList= service.selectProduct();
		model.addAttribute("productList", productList);
		
		return "/manager/product/product_list";
	}
	
	@RequestMapping("/productUpdateForm")
	public String productUpdateForm(String product_id, Model model) throws Exception{
		ProductVO productById= service.selectProductById(product_id);
		model.addAttribute("productById", productById);

		return "/manager/product/productUpdateForm";
	}
	@RequestMapping("/productUpdatePro")
	public String productUpdatePro(ProductVO vo) throws Exception{
		service.updateProduct(vo);		
		
		return "redirect:/product_list";
	}
		
	
	@RequestMapping("/productDeleteForm")
	public String productDeleteForm(String product_id, Model model) throws Exception{
		ProductVO productById= service.selectProductById(product_id);
		model.addAttribute("productById", productById);

		return "/manager/product/productDeleteForm";
	}
	@RequestMapping("/productDeletePro")
	public String productDeletePro(String product_id) throws Exception{
		service.deleteProduct(product_id);		
		
		return "redirect:/product_list";
	}
	
	
	@RequestMapping("/productInsertForm")
	public String productInsertForm() throws Exception{	
		return "/manager/product/productInsertForm";
	}
	@RequestMapping("/productInsertPro")
	public String productInsertPro(ProductVO vo) throws Exception{
		service.insertProduct(vo);		
		
		return "redirect:/product_list";
	}
	
	//-------------------------------------------------------------
	//	account 
	//-------------------------------------------------------------
	@RequestMapping("/account_list")
	public String account_list(Model model) throws Exception {
		List<MemberVO> accountList= service.selectAccount();
		model.addAttribute("accountList", accountList);
		
		return "/manager/account/account_list";
	}	
	
	//-------------------------------------------------------------
	//	board 
	//-------------------------------------------------------------
	@RequestMapping("/board_list")
	public String board_list(Model model) throws Exception{
		List<BoardVO> boardList= service.selectBoard();
		model.addAttribute("boardList", boardList);
		
		return "/manager/board/board_list";
	}
	
	//-------------------------------------------------------------
	//	buy 
	//-------------------------------------------------------------
	@RequestMapping("/buy_list")
	public String buy_list(Model model) throws Exception{
		List<BuyVO> buyList= service.selectBuy();
		model.addAttribute("buyList", buyList);
		
		return "/manager/buy/buy_list";
	}
}







