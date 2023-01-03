package kh.nt.pass.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.nt.pass.dao.PassDAO;
import kh.nt.pass.model.Member;
import kh.nt.pass.model.OrderCost;
import kh.nt.pass.model.OrderList;
import kh.nt.pass.model.Pass;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class PassServiceImpl implements PassService{
	@Autowired
	private PassDAO pd;
	
	@Autowired
	private MemberServiceImpl ms;

	@Override
	public List<OrderCost> searchCost(OrderCost oc) {
		if(oc.getName()==""||oc.getName()==null)
			oc.setName("%");
		oc.setName("%"+oc.getName()+"%");
		return pd.searchCost(oc);
	}

	@Override
	public boolean insertPass(Pass ps, String list) {
		List<OrderList> ol=new ArrayList<OrderList>();
		long count=list.chars().filter(c -> c=='{').count();
		if(pd.insertPass(ps)==1) {
			for(int i=0;i<count;i++) {
				ol.add(new OrderList(ps.getNo(),ps.getId(),Integer.parseInt(list.substring(list.indexOf("ordercost_no")+13, list.indexOf(", "))),Integer.parseInt(list.substring(list.indexOf("amount")+7, (list.indexOf("},")>0?(list.indexOf("},")):(list.indexOf("}]")))))));
				list=list.substring(list.indexOf('}')+2);
			}
			for(OrderList o:ol) {
				if(pd.insertList(o)!=1)
					return false;
			}
			return true;
		}	
		return false;
	}

	@Override
	public HashMap<String,Object> viewPass(String id, int page) {
		HashMap<String, String> hm=new HashMap<String, String>();
		HashMap<String, Object> vp=new HashMap<String, Object>();
		hm.put("id", id);
		hm.put("page",String.valueOf(page));
		vp.put("pass", pd.viewPass(hm));
		vp.put("countPage", pd.countPage(id));
		return vp;
	}
	
	@Override
	public HashMap<String, Object> viewList(Pass pass){
		HashMap<String, Object> vl=new HashMap<String, Object>();
		List<OrderCost> oc=new ArrayList<OrderCost>();
		List<OrderList> ol=pd.viewList(pass);
		vl.put("list", ol);
		for(OrderList o:ol)
			oc.add(pd.viewCost(o.getOrdercost_no()));
		vl.put("cost", oc);
		return vl;
	}

	@Override
	public boolean refundPass(Pass pass, Member member) {
		if(ms.passCheck(member))
			if(pd.refundPass(pass)==1)
				return true;
		return false;
	}
}