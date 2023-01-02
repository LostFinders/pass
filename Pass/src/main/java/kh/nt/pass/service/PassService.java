package kh.nt.pass.service;

import java.util.HashMap;
import java.util.List;

import kh.nt.pass.model.Member;
import kh.nt.pass.model.OrderCost;
import kh.nt.pass.model.Pass;

public interface PassService {
	public List<OrderCost> searchCost(OrderCost oc);
	public boolean insertPass(Pass ps, String ol);
	public HashMap<String, Object> viewPass(String id, int page);
	public HashMap<String, Object> viewList(Pass pass);
	public boolean refundPass(Pass pass, Member member);
}