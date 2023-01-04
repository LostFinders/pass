package kh.nt.pass.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kh.nt.pass.model.Member;
import kh.nt.pass.service.MemberServiceImpl;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value = "/member/")
@SessionAttributes("signin")
@Controller
public class MemberController {
	
	@Autowired
	private MemberServiceImpl ms;
	
	@Autowired
	HttpSession hs;
	
	@RequestMapping(value = "login")
	public String tologin(SessionStatus ss) {
		if(hs.getAttribute("signin")==null)
			return "member/login";
		ss.setComplete();
		return "redirect:/";
	}
	
	@RequestMapping(value = "signup")
	public String tosignup() {
		return "member/signup";
	}
	
	@RequestMapping(value = "mypage")
	public String tomypage() {
		return "member/mypage";
	}
	
	@RequestMapping(value = "editid")
	public String toeditedid() {
		return "member/editid";
	}
	
	@RequestMapping(value = "id_check", method = RequestMethod.POST)
	@ResponseBody
	public String idcheck(String id) {
		return String.valueOf(ms.idCheck(id));
	}
	
	@RequestMapping(value = "pass_check", method = RequestMethod.POST)
	@ResponseBody
	public String passcheck(Member member) {
		member.setId(((Member)hs.getAttribute("signin")).getId());
		return String.valueOf(ms.passCheck(member));
	}
	
	@RequestMapping(value = "phone_check", method = RequestMethod.POST)
	@ResponseBody
	public String phonecheck(String phone) {
		return String.valueOf(ms.phoneCheck(phone));
	}
	
	@RequestMapping(value = "email_check", method = RequestMethod.POST)
	@ResponseBody
	public String emailcheck(String email) {
		return String.valueOf(ms.emailCheck(email));
	}
	
	@RequestMapping(value = "signup_check", method = RequestMethod.POST)
	public String signupcheck(Member member) {
		if(ms.signupCheck(member))
			return "redirect:/";
		return "member/signup";
	}
	
	@RequestMapping(value = "login_check", method = RequestMethod.POST)
	public String logincheck(Member member) {
		Member session=ms.loginCheck(member);
		if(session!=null) {
			hs.setAttribute("signin", session);
			return "redirect:/";
		}
		return "member/login";
	}
	
	@RequestMapping(value = "editid_check", method = RequestMethod.POST)
	public String editidcheck(Member member, String changepass, SessionStatus ss) {
		member.setId(((Member)hs.getAttribute("signin")).getId());
		String localpass=member.getPass();
		if(ms.passCheck(member)) {
			member.setPass(localpass);
			if(changepass!=""&&changepass.length()>=8)
				member.setPass(changepass);
			if(ms.editidCheck(member)) {
				ss.setComplete();
				return "redirect:/member/mypage";
			}
		}
		return "member/editid";
	}
	
	@RequestMapping(value = "leave", method = RequestMethod.POST)
	@ResponseBody
	public String leave(Member member) {
		member.setId(((Member)hs.getAttribute("signin")).getId());
		return String.valueOf(ms.idDelete(member));
	}
	
	
}
