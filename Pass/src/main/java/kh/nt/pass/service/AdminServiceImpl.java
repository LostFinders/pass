package kh.nt.pass.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.nt.pass.dao.MemberDAO;
import kh.nt.pass.dao.PassDAO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private MemberDAO md;
	@Autowired
	private PassDAO pd;

	@Override
	public HashMap<String, Object> viewControl(String pSearch, String mSearch) {
		HashMap<String, Object> ac=new HashMap<String, Object>();
		if(pSearch.equals(""))
			pSearch="%";
		if(mSearch.equals(""))
			mSearch="%";
		ac.put("pResult", pd.viewPass(pSearch));
		ac.put("mResult", md.viewMember(mSearch));
		return ac;
	}
}
