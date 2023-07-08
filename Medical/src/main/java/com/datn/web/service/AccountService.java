package com.datn.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import com.datn.web.bean.Account;
import com.datn.web.repository.AccountRepository;

@Service
public class AccountService {
	@Autowired
	private AccountRepository accountRepository;

	public boolean authenticate(String email, String password) {
		Account account = accountRepository.findByUsername(email);
		if (account == null) {
			throw new EmptyResultDataAccessException("Sai tài khoản hoặc mật khẩu", 0);
	    }
		 return account != null && account.getPass().equals(password);
	}

	public String getRole(String email) {
		return accountRepository.getRole(email);
	}
	
	public boolean checkExistEmail(String email) {
		int i = accountRepository.checkExistEmail(email);
		if(i != 0) {
			return false;
		}
		else return true;
	}

	public void register(String email, String encodePass) {
		accountRepository.register(email, encodePass);
		
	}

	public List<Account> adminShowAccount(int page, int pageSize) {
		return accountRepository.adminShowAccount(page, pageSize);
	}

	public void adminDeleteAccount(int id) {
		accountRepository.adminDeleteAccount(id);
		
	}

	public int getTotalAccount() {
		return accountRepository.getTotalAccount();
	}

	public List<Account> adminShowAccountInfo(int id) {
		return accountRepository.adminShowAccountInfo(id);
	}

	public void adminResetPassword(String password, int id) {
		accountRepository.adminResetPassword(password, id);
		
	}

	public void adminEditAccount(String role, int id) {
		accountRepository.adminEditAccount(role, id);
		
	}

	public void adminAddAccount(String email, String hashpass, String role) {
		accountRepository.adminAddAccount(email, hashpass, role);
		
	}

}
