package kh.nt.pass.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value = "/member/")
@Controller
public class MemberController {
	@RequestMapping(value = "login")
	public String tologin() {
		return "member/login";
	}
	@RequestMapping(value = "signup")
	public String tosignup() {
		return "member/signup";
	}
}
