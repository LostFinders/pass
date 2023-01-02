package kh.nt.pass.controller;

import java.sql.Timestamp;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kh.nt.pass.commons.Encryption;
import kh.nt.pass.dao.MemberDAO;
import kh.nt.pass.model.Member;
import kh.nt.pass.model.OrderCost;
import kh.nt.pass.model.OrderList;
import kh.nt.pass.model.Pass;
import kh.nt.pass.service.PassServiceImpl;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value = "/pass/")
@SessionAttributes("signin")
@Controller
public class PassController {
	
	@Autowired
	PassServiceImpl ps;
	
	@Autowired
	HttpSession hs;
	
	@RequestMapping(value = "request")
	public String toRequest() {
		return "pass/request";
	}
	
	@RequestMapping(value = "search")
	public String toSearch(OrderCost oc, Model model) {
		model.addAttribute("oclist",ps.searchCost(oc));
		return "pass/search";
	}
	
	@RequestMapping(value = "view")
	public String toView(int page, Model model) {
		model.addAttribute("pass",ps.viewPass(((Member)hs.getAttribute("signin")).getId(),page));
		return "pass/view";
	}
	
	@RequestMapping(value = "receipt")
	public String toReceipt(Pass pass,Model model) {
		pass.setId(((Member)hs.getAttribute("signin")).getId());
		model.addAttribute("order",ps.viewList(pass));
		return "pass/receipt";
	}
	
	@RequestMapping(value = "requestpass")
	public String toSearch(Pass pass, OrderList ol, Model model) {
		log.info(pass.toString()+ol.toString());
		return "pass/request";
	}
	
	@RequestMapping(value = "insertpass")
	@ResponseBody
	public String insertPass(Pass pass,@RequestBody Map<String, Object> olist) {
		pass.setAddress((String)olist.get("address"));
		pass.setPayment_check((String)olist.get("payment_check"));
		pass.setRequest_date(Timestamp.valueOf((String)olist.get("request_date")));
		pass.setId(((Member)hs.getAttribute("signin")).getId());
		return String.valueOf(ps.insertPass(pass,olist.get("OrderList").toString()));
	}
	
	@RequestMapping(value = "refund")
	@ResponseBody
	public String refundPass(Pass pass, Member member) {
		member.setId(((Member)hs.getAttribute("signin")).getId());
		pass.setId(((Member)hs.getAttribute("signin")).getId());
		return String.valueOf(ps.refundPass(pass, member));
	}
}