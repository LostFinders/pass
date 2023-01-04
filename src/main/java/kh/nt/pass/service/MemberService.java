package kh.nt.pass.service;

import kh.nt.pass.model.Member;

public interface MemberService {
	public boolean idCheck(String id);
	public boolean passCheck(Member member);
	public boolean phoneCheck(String phone);
	public boolean emailCheck(String email);
	public boolean signupCheck(Member member);
	public boolean editidCheck(Member member);
	public boolean idDelete(Member member);
	public Member loginCheck(Member member);
}