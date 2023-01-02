package kh.nt.pass.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kh.nt.pass.model.Member;

@Mapper
public interface MemberMapper {
	int idCheck(String id);
	int passCheck(Member member);
	int phoneCheck(String phone);
	int emailCheck(String email);
	int signupCheck(Member member);
	int editidCheck(Member member);
	int idDelete(Member member);
	Member loginCheck(Member member);
	List<Member> viewMembers(String mSearch);
}
