package database;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import com.sun.corba.se.spi.orbutil.fsm.Input;

public class Encryption {

	public String MD5(String string) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] messsagedigest = md.digest(string.getBytes());
			BigInteger number = new BigInteger(1,messsagedigest);
			String hasnext = number.toString(16);
			while (hasnext.length()<32) {
				hasnext="0" + hasnext;
			}
			return hasnext;
		} catch (NoSuchAlgorithmException e) {
			throw new RuntimeException(e);
		}
		
	}
}
