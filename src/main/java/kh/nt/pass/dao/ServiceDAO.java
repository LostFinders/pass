package kh.nt.pass.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.nt.pass.dao.mapper.ServiceMapper;
import kh.nt.pass.model.ServiceBoard;
import kh.nt.pass.model.ServiceFile;
import kh.nt.pass.model.ServiceReply;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@Repository//Repository Class임을 Spring에 명시
public class ServiceDAO {

	@Autowired
	private ServiceMapper sm;
	
	public int createboard(ServiceBoard serviceboard) {
		return sm.createboard(serviceboard);
	}
	public int createboard(ServiceBoard serviceboard, List<ServiceFile> servicefile) {
		if(sm.createboard(serviceboard)==1) {
			if(servicefile.size()!=0) {
				for(ServiceFile file:servicefile) {
					file.setService_no(serviceboard.getNo());
					sm.createfile(file);
				}
				return(servicefile.size());
			}
		}
		return 0;
	}
//	public int createboard(ServiceBoard serviceboard, List<ServiceFile> servicefile) {
//		ServiceMapper session = sm;
//		if(session.createboard(serviceboard)==1) {
//			if(servicefile.size()!=0) {
//				for(ServiceFile file:servicefile)
//					session.createfile(file);
//				return(servicefile.size());
//			}
//		}
//		return 0;
//	}
	public List<HashMap<String, Object>> listboard(int page){
		return sm.listboard(page);
	}
	public int homepage() {
		return sm.homepage();
	}
	public ServiceBoard viewboard(int no){
		return sm.viewboard(no);
	}
	public int viewcountadd(int no) {
		return sm.viewcountadd(no);
	}
	public List<ServiceFile> viewfile(int no) {
		return (List<ServiceFile>)sm.viewfile(no);
	}
	public ServiceFile downfile(ServiceFile servicefile) {
		return sm.downfile(servicefile);
	}
	public int editboard(ServiceBoard serviceboard) {
		return sm.editboard(serviceboard);
	}
	public int deleteboard(int no) {
		return sm.deleteboard(no);
	}
	public int createreply(ServiceReply servicereply) {
		log.info(servicereply.toString());
		return sm.createreply(servicereply);
	}
	public List<ServiceReply> viewreply(HashMap<String, String> no) {
		return (List<ServiceReply>)sm.viewreply(no);
	}
	public List<ServiceReply> listreply(int page){
		log.info(String.valueOf(page));
		return sm.listreply(page);
	}
	public int replypage() {
		return sm.replypage();
	}
	public int editreply(ServiceReply servicereply) {
		return sm.editreply(servicereply);
	}
	public int deletereply(ServiceReply servicereply) {
		return sm.deletereply(servicereply);
	}
}