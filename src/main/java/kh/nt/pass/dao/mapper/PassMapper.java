package kh.nt.pass.dao.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kh.nt.pass.model.Member;
import kh.nt.pass.model.OrderCost;
import kh.nt.pass.model.OrderList;
import kh.nt.pass.model.Pass;

@Mapper
public interface PassMapper {
	List<OrderCost> searchCost(OrderCost oc);
	int insertPass(Pass pass);
	int insertList(OrderList ol);
	List<Pass> viewPass(String id);
	List<OrderList> viewList(Pass pass);
	OrderCost viewCost(int no);
	List<Pass> viewPass(HashMap<String, String> hm);
	int countPage(String id);
	int refundPass(Pass pass);
	List<Pass> viewPassList(String pSearch);
}