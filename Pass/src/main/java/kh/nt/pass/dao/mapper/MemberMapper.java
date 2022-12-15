package kh.nt.pass.dao.mapper;

import org.apache.ibatis.annotations.Mapper;

import kh.nt.pass.model.Member;

@Mapper
public interface MemberMapper {
	int idCheck(String id);
	int phoneCheck(String phone);
	int emailCheck(String email);
	int signupCheck(Member member);
	Member loginCheck(Member member);
}
