package kh.nt.pass.service;

import kh.nt.pass.model.ServiceBoard;
import kh.nt.pass.model.ServiceFile;

public interface ServiceService {
	public boolean createboard(ServiceBoard serviceboard);
	public boolean createboard(ServiceBoard serviceboard, ServiceFile servicefile);
	public ServiceBoard listboard(ServiceBoard serviceboard);
}
