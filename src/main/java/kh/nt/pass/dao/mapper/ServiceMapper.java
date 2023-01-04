package kh.nt.pass.dao.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kh.nt.pass.model.ServiceBoard;
import kh.nt.pass.model.ServiceFile;
import kh.nt.pass.model.ServiceReply;

@Mapper//Mapper Class임을 Spring에 명시
public interface ServiceMapper {

	List<ServiceReply> listreply(int page);
	List<ServiceReply> viewreply(HashMap<String, String> no);
	List<ServiceFile> viewfile(int no);
	List<HashMap<String, Object>> listboard(int page);
	
	ServiceBoard viewboard(int no);
	ServiceFile downfile(ServiceFile servicefile);
	
	void createfile(ServiceFile file);
	
	int homepage();
	int replypage();
	int viewcountadd(int no);
	int createboard(ServiceBoard serviceboard);
	int createreply(ServiceReply servicereply);
	int editboard(ServiceBoard serviceboard);
	int editreply(ServiceReply servicereply);
	int deletereply(ServiceReply servicereply);
	int deleteboard(int no);

}
