package kh.nt.pass.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import kh.nt.pass.model.Member;
import kh.nt.pass.service.AdminServiceImpl;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@SessionAttributes("signin")
@RequestMapping(value="/admin/")
@Controller
public class AdminController {
	@Autowired
	HttpSession hs;
	@Autowired
	AdminServiceImpl as;
	
	@RequestMapping(value = "control", method = RequestMethod.GET)
	public String adminhome(Model model, String pSearch, String mSearch) {
		if(((Member)hs.getAttribute("signin")).getLevel()!=9)
			return "redirect:/";
		model.addAttribute("admin",as.viewControl(pSearch, mSearch));
		return "admin/control";
	}
}
