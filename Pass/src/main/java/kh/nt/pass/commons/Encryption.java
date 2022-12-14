package kh.nt.pass.commons;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class Encryption {
	
	private MessageDigest md;
	public String SHA256(String pass) {
		try {
			md=MessageDigest.getInstance("SHA-256");
			md.update(pass.getBytes());
			return String.format("%064x", new BigInteger(1, md.digest()));
		} catch (NoSuchAlgorithmException e) {
			log.info("Encryption(SHA-256) Error");
		}
		return null;
	}
}