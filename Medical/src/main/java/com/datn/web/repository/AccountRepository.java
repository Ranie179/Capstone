package com.datn.web.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

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
			account.setIdAccount(rs.getInt("ID_ACcount"));
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
	
	public int checkExistEmail(String email) {
		String sql = "SELECT COUNT(*) FROM Account where email = ?";
		Object[] params = new Object[] {email};
		return jdbcTemplate.queryForObject(sql, params, Integer.class);
	}
	public void register(String email, String encodePass) {
		String sql1 = "INSERT INTO Account(Email, Pass)\r\n"
				+ "VALUES (?, ?);";
		Object[] params1 = new Object[] {email, encodePass};
		jdbcTemplate.update(sql1, params1);
		String sql2 = "INSERT INTO Profile (Email)\r\n"
				+ "VALUES (?);";
		Object[] params2 = new Object[] {email};
		jdbcTemplate.update(sql2, params2);
		
	}
	public List<Account> adminShowAccount(int page, int pageSize) {
		int offset = (page - 1) * pageSize;
		String sql = "SELECT * FROM ACCOUNT LIMIT ? OFFSET ?";
		Object[] params = new Object[]{pageSize, offset};
		return jdbcTemplate.query(sql, params, new AccountRowMapper());
	}
	public void adminDeleteAccount(int id) {
		String sql = "DELETE FROM ACCOUNT WHERE ID_ACCOUNT = ?";
		Object[] params = new Object[] {id};
		jdbcTemplate.update(sql, params);
		
	}
	public int getTotalAccount() {
		String sql = "SELECT COUNT(*) FROM account";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	public List<Account> adminShowAccountInfo(int id) {
		String sql = "SELECT * FROM ACCOUNT WHERE ID_ACCOUNT = ?";
		Object[] params = new Object[] {id};
		return jdbcTemplate.query(sql, params, new AccountRowMapper());
	}
	public void adminResetPassword(String password, int id) {
		String sql = "UPDATE ACCOUNT "
				+ "SET pass = ? WHERE ID_ACCOUNT = ?";
		Object[] params = new Object[] {password, id};
		jdbcTemplate.update(sql, params);
		
	}
	public void adminEditAccount(String role, int id) {
		String sql = "UPDATE ACCOUNT "
				+ "SET role = ? WHERE ID_ACCOUNT = ?";
		Object[] params = new Object[] {role, id};
		jdbcTemplate.update(sql, params);
		
	}
	public void adminAddAccount(String email, String hashpass, String role) {
		String sql = "INSERT INTO ACCOUNT(Email, Pass, Role) "
				+ "VALUES (?, ?, ?);";
		Object [] params = new Object[] {email, hashpass, role};
		jdbcTemplate.update(sql, params);
		
	}

}
