package kh.nt.pass.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.nt.pass.commons.Encryption;
import kh.nt.pass.dao.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private Encryption en;
	
	@Autowired
	private MemberDAO md;
}
