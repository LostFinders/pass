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
	
	public boolean createreply(ServiceReply servicereply);
	public List<ServiceReply> listreply(int no);
}