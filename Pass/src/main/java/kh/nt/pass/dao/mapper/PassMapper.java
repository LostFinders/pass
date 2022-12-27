package kh.nt.pass.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kh.nt.pass.model.OrderCost;
import kh.nt.pass.model.OrderList;
import kh.nt.pass.model.Pass;

@Mapper
public interface PassMapper {
	List<OrderCost> searchCost(OrderCost oc);
	int insertPass(Pass pass);
	int insertList(OrderList ol);
}
