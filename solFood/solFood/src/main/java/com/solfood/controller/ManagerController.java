package com.solfood.controller;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.activation.CommandMap;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.solfood.dto.MemberVO;
import com.solfood.dto.ProductVO;

import com.solfood.service.ManagerService;

@Controller
@RequestMapping("/manager/")
public class ManagerController {

	//로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(ManagerController.class);
	
	@Inject
	private ManagerService service;
	
	
	/* 매니저 메인 페이지 이동 */
	@RequestMapping("/managerMain.do")
	public String managerMain() {
		return "/manager/managerMain";
	}
	

	/* 회원관리 페이지 이동 */
	@RequestMapping(value = "account/account_list.do", method = RequestMethod.GET)
    public String home2(Locale locale, Model model) throws Exception{

        List<MemberVO> memberList = service.selectMember();
        model.addAttribute("memberList", memberList);

        return "/manager/account/account_list";
    }
	
	
	/* 매니저 메인 페이지 이동 */
	/*@RequestMapping("account/accountUpdate.do") public String accountUpdate() {
	 * return "manager/account/accountUpdate"; } */
	
	
	
	/* 회원정보 상세조회 */
	@RequestMapping(value = "account/accountUpdate.do", method = RequestMethod.GET) 
	public void getView(@RequestParam("account_user") String account_user, Model model) throws Exception{ 
		 MemberVO accountUpdate = null;
		 accountUpdate = service.accountUpdate(account_user);
	
		 model.addAttribute("accountUpdate", accountUpdate);
	}

	/* 회원정소 수정 */
	@RequestMapping(value="account/accountUpdate.do", method=RequestMethod.POST)
	public String getModify(MemberVO memberVo) throws Exception{
		service.updateMember(memberVo);
		
		//목록으로 리다이렉트
		return "redirect:account_list.do";
		//return "redirect:accountUpdate.do" + accountUpdate;
	}
	 
	/* 회원정보 삭제 */
	@RequestMapping(value="account/accountDelete.do")
	public String getDelete(MemberVO memberVo) throws Exception{
		service.deleteMember(memberVo);
		
		return "redirect:account_list.do";
	}
	
	
	/* 구매관리 페이지 이동 */
	@RequestMapping("buy/buy_list.do")
	public String buy_list() {
		return "/manager/buy/buy_list";
	}
	
	
	
	@RequestMapping("product/product_list")
	public String product_list(Model model) throws Exception{
		List<ProductVO> productList= service.selectProduct();
		model.addAttribute("productList", productList);
		
		return "/manager/product/product_list";
	}
	
	@RequestMapping("product/productUpdateForm")
	public String productUpdateForm(String product_id, Model model) throws Exception{
		ProductVO productById= service.selectProductById(product_id);
		model.addAttribute("productById", productById);

		return "/manager/product/productUpdateForm";
	}
	@RequestMapping("product/productUpdatePro")
	public String productUpdatePro(ProductVO vo) throws Exception{
		service.updateProduct(vo);		
		
		return "redirect:/product_list";
	}	
	
	@RequestMapping("product/productDeleteForm")
	public String productDeleteForm(String product_id, Model model) throws Exception{
		ProductVO productById= service.selectProductById(product_id);
		model.addAttribute("productById", productById);

		return "/manager/product/productDeleteForm";
	}
	@RequestMapping("product/productDeletePro")
	public String productDeletePro(String product_id) throws Exception{
		service.deleteProduct(product_id);		
		
		return "redirect:/product_list";
	}
	
	@RequestMapping("product/product_register")
	public String product_register() throws Exception{	
		return "/manager/product/product_register";
	}
	@RequestMapping("/productInsertPro")
	public String productInsertPro(String product_id) throws Exception{
		service.deleteProduct(product_id);		
		
		return "redirect:/product_list";
	}
	
	
}
