package kh.nt.pass.commons;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import lombok.extern.slf4j.Slf4j;

@Slf4j 
public class Authentication implements HandlerInterceptor{
	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
		HttpSession hs=request.getSession();
		if(hs.getAttribute("signin")==null) {
			try {
				response.sendRedirect("/pass");
			} catch (IOException e) {
				log.error("Authentication"+e.toString());
			}
			return false;
		}
		return true;
	}
}