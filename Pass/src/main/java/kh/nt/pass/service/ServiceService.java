package kh.nt.pass.service;

import java.util.HashMap;
import java.util.List;

import kh.nt.pass.model.ServiceBoard;
import kh.nt.pass.model.ServiceFile;
import kh.nt.pass.model.ServiceReply;

public interface ServiceService {
	public boolean createboard(ServiceBoard serviceboard);
	public boolean createboard(ServiceBoard serviceboard, ServiceFile servicefile);
	public HashMap<String,Object> listboard(int page);
	public HashMap<String,Object> viewboard(int no);
	public boolean editboard(ServiceBoard serviceboard);
	public boolean deleteboard(int no);
	public ServiceFile downfile(ServiceFile sf);
	
	public boolean createreply(ServiceReply servicereply);
	public List<ServiceReply> listreply(int no);
	public boolean editreply(ServiceReply servicereply);
	public boolean deletereply(ServiceReply servicereply);
}