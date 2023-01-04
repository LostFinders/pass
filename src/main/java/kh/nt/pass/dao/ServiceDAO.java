package kh.nt.pass.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.nt.pass.dao.mapper.ServiceMapper;

@Repository//Repository Class임을 Spring에 명시
public class ServiceDAO {

	@Autowired
	private ServiceMapper sm;
	
}