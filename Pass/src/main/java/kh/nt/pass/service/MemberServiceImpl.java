package kh.nt.pass.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.nt.pass.commons.Encryption;
import kh.nt.pass.dao.MemberDAO;
import kh.nt.pass.model.Member;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private Encryption en;
	
	@Autowired
	private MemberDAO md;

	@Override
	public boolean idCheck(String id) {
		if(md.idCheck(id)==0)
			return true;
		return false;
	}
	
	@Override
	public boolean passCheck(Member member) {
		member.setPass(en.SHA256(member.getPass()));
		if(md.passCheck(member)==1)
			return true;
		return false;
	}

	@Override
	public boolean phoneCheck(String phone) {
		if(md.phoneCheck(phone)==0)
			return true;
		return false;
	}

	@Override
	public boolean emailCheck(String email) {
		if(md.emailCheck(email)==0)
			return true;
		return false;
	}

	@Override
	public boolean signupCheck(Member member) {
		member.setPass(en.SHA256(member.getPass()));
		if(md.signupCheck(member)==1)
			return true;
		return false;
	}
	
	@Override
	public boolean editidCheck(Member member) {
		member.setPass(en.SHA256(member.getPass()));
		if(md.editidCheck(member)==1)
			return true;
		return false;
	}

	@Override
	public Member loginCheck(Member member) {
		member.setPass(en.SHA256(member.getPass()));
		Member session = md.loginCheck(member);
		if(session!=null)
			session.setPass("");
		return session;
	}
}
