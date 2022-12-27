package kh.nt.pass.service;

import java.util.List;

import kh.nt.pass.model.OrderCost;
import kh.nt.pass.model.OrderList;
import kh.nt.pass.model.Pass;

public interface PassService {
	public List<OrderCost> searchCost(OrderCost oc);
	public boolean insertPass(Pass ps, String ol);
}
