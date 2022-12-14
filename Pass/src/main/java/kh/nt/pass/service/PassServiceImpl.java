package kh.nt.pass.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.nt.pass.dao.PassDAO;

@Service
public class PassServiceImpl implements PassService{
	@Autowired
	private PassDAO pass;
}
