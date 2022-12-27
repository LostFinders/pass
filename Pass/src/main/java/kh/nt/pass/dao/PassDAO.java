package kh.nt.pass.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.nt.pass.dao.mapper.PassMapper;
import kh.nt.pass.model.OrderCost;
import kh.nt.pass.model.OrderList;
import kh.nt.pass.model.Pass;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class PassDAO {

	@Autowired
	private PassMapper pm;
	
	public List<OrderCost> searchCost(OrderCost oc){
		return pm.searchCost(oc);
	}
	public int insertPass(Pass pass) {		
		return pm.insertPass(pass);
	}
	public int insertList(OrderList ol) {
		return pm.insertList(ol);
	}
}