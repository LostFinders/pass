package kh.nt.pass.service;

import kh.nt.pass.model.Member;

public interface MemberService {
	public boolean idCheck(String id);
	public boolean phoneCheck(String phone);
	public boolean emailCheck(String email);
	public boolean signupCheck(Member member);
	public Member loginCheck(Member member);
}