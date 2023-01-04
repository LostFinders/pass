package kh.nt.pass.service;

import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.nt.pass.dao.ServiceDAO;
import kh.nt.pass.model.ServiceBoard;
import kh.nt.pass.model.ServiceFile;
import kh.nt.pass.model.ServiceReply;
import lombok.extern.slf4j.Slf4j;

//interface (ServiceService interface)의 구체클래스.
@Slf4j
@Service //Service Class임을 Spring에 명시
public class ServiceServiceImpl implements ServiceService{
	
	@Autowired // 바로 아랫줄 1줄의 변수의 [타입] Bean 자동세팅.(단 Spring에 등록된 빈만 가능하다.)
	private ServiceDAO sd;

	@Override
	public boolean createboard(ServiceBoard serviceboard) {
		if(sd.createboard(serviceboard)==1)
		return true;
	return false;
	}
	
	@Override
	public boolean createboard(ServiceBoard serviceboard, List<ServiceFile> servicefile) {
		int count=sd.createboard(serviceboard, servicefile);
		log.info(count+"");
		if(count>=1)
			return true;
		return false;
	}

	@Override
	public HashMap<String, Object> listboard(int page) {
		HashMap<String,Object> hm = new HashMap<String, Object>();
		hm.put("board", sd.listboard(page));
		hm.put("page", sd.homepage());
		hm.put("selectpage",page);
		hm.put("replypage",sd.replypage());
		hm.put("replylist",sd.listreply(page));
		return hm;
	}

	@Override
	public HashMap<String, Object> viewboard(int no, int replypage) {
		HashMap<String, Object> hmv = new HashMap<String, Object>();
		HashMap<String, String> re = new HashMap<String,String>();
		sd.viewcountadd(no);
		hmv.put("board", sd.viewboard(no));
		hmv.put("file", sd.viewfile(no));
		re.put("no", String.valueOf(no));
		re.put("replypage", String.valueOf(replypage));
		hmv.put("reply", sd.viewreply(re));

		return hmv;
	}
	
	@Override
	public boolean editboard(ServiceBoard serviceboard) {
		if(sd.editboard(serviceboard)==1)
			return true;
		return false;
	}
	@Override
	public boolean deleteboard(int no) {
		if(sd.deleteboard(no)==1)
			return true;
		return false;
	}
	
	@Override
	public String downfile(ServiceFile servicefile) {
		ServiceFile sf = sd.downfile(servicefile);
		return sf.getUuid()+"_"+sf.getName();
	}
	
	@Override
	public boolean createreply(ServiceReply servicereply) {
		String uuid=UUID.randomUUID().toString();
		servicereply.setUuid(uuid);
		if(sd.createreply(servicereply)==1)
			return true;
		log.info(servicereply.toString());
		return false;
	}

	@Override
	public boolean editreply(ServiceReply servicereply) {
		if(sd.editreply(servicereply)==1)
			return true;
		return false;
	}

	@Override
	public boolean deletereply(ServiceReply servicereply) {
		int sr = sd.deletereply(servicereply);
		if(sr==1)
			return true;
		return false;
	}

	@Override
	public boolean createboard(ServiceBoard serviceboard, ServiceFile servicefile) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public HashMap<String, Object> viewboard(int no) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<ServiceReply> listreply(int no) {
		// TODO Auto-generated method stub
		return null;
	}
}