package kh.nt.pass.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.nt.pass.dao.mapper.PassMapper;

@Repository
public class PassDAO {

	@Autowired
	private PassMapper pm;
}