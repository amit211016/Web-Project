package com.validation;

import java.util.HashMap;
import java.util.HashSet;

public class Validate {

	// if password is correct so true
	public boolean isValidPassword(String password) {
		if(passwordSizeValidation(password))
			return false;
		
		HashSet<Character> hash = new HashSet<>();
		
		for(int i=0; i<password.length(); i++)
		hash.add(password.charAt(i));	
		
		
		// numbers
		if(!numberContain(hash))
			return false;
		
		// capital  
		if(!capitalContain(hash))
			return false;
			
		
		// small
		if(!smallContain(hash))
			return false;
		
		
		//special char
		if(!specialContain(hash))
			return false;
			
		
		HashMap<Character, Integer> map = new HashMap<>();
		//apart from number, special, upper, small will be false
		if(apartFrom(map, password))
			return false;
		
		return true;
	}
	
    
    
     
    
	private boolean apartFrom(HashMap<Character, Integer> map, String password) {
		String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+[]{}|;:',.<>?/";
		for(int i=0; i<str.length(); i++) {
			map.put(str.charAt(i), 0);
		}
		
		int count = 0;
		for(int i=0; i<password.length(); i++) {
			if(map.containsKey(password.charAt(i)))
				count++;
		}
		
		
		return (password.length()!=count)? true:false;
	}





	private boolean capitalContain(HashSet<Character> hash) {
		
		String upperLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		
		for(int i=0; i<upperLetters.length(); i++) {
			char ch = upperLetters.charAt(i);
			if(hash.contains(ch))
				return true;
		}
		
		return false;
	}

	private boolean numberContain(HashSet<Character> hash) {
		String numbers = "0123456789"; 
		for(int i=0; i<numbers.length(); i++) {
			char ch = numbers.charAt(i);
			if(hash.contains(ch))
				return true;
		}
		return false;
	}

	private boolean smallContain(HashSet<Character> hash) {
		// Lowercase letters
	    String smallLetters = "abcdefghijklmnopqrstuvwxyz";
	    for(int i=0; i<smallLetters.length(); i++) {
			char ch = smallLetters.charAt(i);
			if(hash.contains(ch))
				return true;
		}
		return false;
	}

	private boolean specialContain(HashSet<Character> hash) {
		String specialChars = "!@#$%^&*()-_=+[]{}|;:',.<>?/";
		for(int i=0; i<specialChars.length(); i++) {
			char ch = specialChars.charAt(i);
			if(hash.contains(ch))
				return true;
		}
		return false;
	}

	//if password size will be more then 20 or less then 8 so true means size invalid
	private boolean passwordSizeValidation(String password) {
		return (password.length()<8 || password.length()>20) ? true : false;
		
	}
	
	
}
