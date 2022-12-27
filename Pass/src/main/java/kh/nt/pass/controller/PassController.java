package kh.nt.pass.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

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
		log.info(pass.toString()+olist.get("OrderList").toString());
		return String.valueOf(ps.insertPass(pass,olist.get("OrderList").toString()));
	}
}