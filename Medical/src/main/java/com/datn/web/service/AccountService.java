package com.datn.web.service;

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

}
