package kh.nt.pass.controller;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import kh.nt.pass.model.Member;
import kh.nt.pass.model.ServiceBoard;
import kh.nt.pass.model.ServiceFile;
import kh.nt.pass.model.ServiceReply;
import kh.nt.pass.service.ServiceServiceImpl;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value = "/service/")
@SessionAttributes("signin")
@Controller
public class ServiceController {
	
	private static final String DOWNLOAD_PATH = "C://resource//";
	@Autowired
	private ServiceServiceImpl serviceService;
	
	@Autowired
	HttpSession hs;
	
	@RequestMapping(value = "board")
	public String toboard() {
		return "service/board";
	}
	@RequestMapping(value="boardcreate")
	public String tocreate() {
		return "service/boardcreate";
	}
	@RequestMapping(value="create")
	public String create(ServiceBoard serviceboard, @RequestParam("file") MultipartFile[] files) {
		try {
			serviceboard.setId(((Member)hs.getAttribute("signin")).getId());
			if(files.length==0) {
				if(serviceService.createboard(serviceboard))
					return "redirect:board?page=1";
			}else {
				ArrayList<ServiceFile> sf = new ArrayList<ServiceFile>();
				for(MultipartFile file:files) {
					if(!file.getOriginalFilename().isEmpty()) {
						String uuid=UUID.randomUUID().toString();
						file.transferTo(new File(DOWNLOAD_PATH + "/"+uuid+"_"+file.getOriginalFilename()));
						sf.add(new ServiceFile(uuid,((Member)hs.getAttribute("signin")).getId(),file.getOriginalFilename()));
						log.info(files.toString());
					}
				}
				if(serviceService.createboard(serviceboard, sf))
					return "redirect:board?page=1";
			}
		}catch(Exception e) {
			e.printStackTrace();
			log.info("Creating error");
		}
		return "redirect:board?page=1";
	}
	@RequestMapping(value="board", method=RequestMethod.GET)
	public String listboard(Model model, int page) {
		model.addAttribute("servicelist", serviceService.listboard(page));
		return "service/board";
	}
	@RequestMapping(value="viewboard", method=RequestMethod.GET)
	public String viewboard(Model model, int no, int replypage) {
		model.addAttribute("serviceview", serviceService.viewboard(no,replypage));
		return "service/view";
	}
	
	@RequestMapping(value="download")
	@ResponseBody
	public String download(ServiceFile servicefile, HttpServletResponse response) {
		servicefile.setId(((Member)hs.getAttribute("signin")).getId());
		String downpath = serviceService.downfile(servicefile);
		if(downpath!=null) {
			File file = new File(DOWNLOAD_PATH + downpath);
			try(OutputStream os = response.getOutputStream();FileInputStream fis = new FileInputStream(file);DataInputStream dis = new DataInputStream(fis)){
				response.setHeader("content-Disposition","attachment;filename="+new String(servicefile.getName().getBytes("utf8"),"ISO-8859-1"));
				byte[] fileContents = new byte[(int)file.length()];
				dis.readFully(fileContents);
				os.write(fileContents);
				os.flush();
			}catch(IOException e) {
				log.info(servicefile.toString());
			}
		}
		return null;
	}
	@RequestMapping(value="editboard", method=RequestMethod.GET)
	@ResponseBody
	public boolean editboard(ServiceBoard serviceboard) {
		serviceboard.setId(((Member)hs.getAttribute("signin")).getId());
		log.info(serviceboard.toString());
		return serviceService.editboard(serviceboard);
	}
	@RequestMapping(value="deleteboard", method=RequestMethod.GET)
	public String deleteboard(int no) {
		ServiceBoard sb = new ServiceBoard();
		sb.setNo(no);
		sb.setId(((Member)hs.getAttribute("signin")).getId());
		if(serviceService.deleteboard(no))
			return "board?page=1";
		log.info("delete fail");
		return "board/view?no="+no;
	}
	@RequestMapping(value="createreply")
	public String createreply(ServiceReply servicereply) {
		servicereply.setId(((Member)hs.getAttribute("signin")).getId());
		log.info(servicereply.toString());
		if(serviceService.createreply(servicereply))
			return "redirect:/service/viewboard?no="+servicereply.getService_no();
		return "redirect:/service/viewboard?no="+servicereply.getService_no();
	}
	@ResponseBody
	@RequestMapping(value="editreply")
	public boolean editreply(ServiceReply servicereply){
		servicereply.setId(((Member)hs.getAttribute("signin")).getId());
		log.info(servicereply.toString());
		return serviceService.editreply(servicereply);
	}
	@ResponseBody
	@RequestMapping(value="deletereply")
	public String deletereply(ServiceReply servicereply) {
		servicereply.setId(((Member)hs.getAttribute("signin")).getId());
		if(serviceService.deletereply(servicereply))
			return "redirect:/service/viewboard?no="+servicereply.getService_no();
		return "redirect:/service/viewboard?no="+servicereply.getService_no();
		
	}
}