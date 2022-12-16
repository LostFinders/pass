package kh.nt.pass.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.nt.pass.dao.mapper.MemberMapper;
import kh.nt.pass.model.Member;

@Repository
public class MemberDAO {
	
	@Autowired
	private MemberMapper mm;
	
	public int idCheck(String id) {
		return mm.idCheck(id);
	}
	
	public int passCheck(Member member) {
		return mm.passCheck(member);
	}
	
	public int phoneCheck(String phone) {
		return mm.phoneCheck(phone);
	}
	
	public int emailCheck(String email) {
		return mm.emailCheck(email);
	}
	
	public int signupCheck(Member member) {
		return mm.signupCheck(member);
	}
	
	public int editidCheck(Member member) {
		return mm.editidCheck(member);
	}
	
	public Member loginCheck(Member member) {
		return mm.loginCheck(member);
	}
}