package com.datn.web.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.datn.web.bean.Account;

@Repository
public class AccountRepository {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private class AccountRowMapper implements RowMapper<Account>{
		public Account mapRow(ResultSet rs, int rowNum) throws SQLException {
			Account account = new Account();
			account.setEmail(rs.getString("Email"));
			account.setPass(rs.getString("Pass"));
			account.setRole(rs.getString("Role"));
			return account;
		}
	}
	
	public Account findByUsername(String email) {
		String sql = "SELECT * FROM account WHERE email = ?";
		Object[] params = new Object[] {email};
		return jdbcTemplate.queryForObject(sql, params, new AccountRowMapper());
	}
	public String getRole(String email) {
		String sql = "SELECT role FROM account WHERE email = ?";
		Object[] params = new Object[] {email};
		String role = jdbcTemplate.queryForObject(sql, params, String.class);
		return role;
	}

}
