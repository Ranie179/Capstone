package com.datn.web.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.datn.web.bean.Contracts;
import com.datn.web.bean.Departments;
import com.datn.web.bean.Payment;
import com.datn.web.bean.Positions;
import com.datn.web.bean.Graduate;
@Repository
public class ContractRepository {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private class ContractRowMapper implements RowMapper<Contracts> {
        public Contracts mapRow(ResultSet rs, int rowNum) throws SQLException {
        	Contracts contract = new Contracts();
        	contract.setIdContract(rs.getInt("ID_Contract"));
        	contract.setName(rs.getString("Name"));
        	Departments department = new Departments();
        	department.setDepartmentName(rs.getString("Department_Name"));
        	contract.setDepartment(department);
        	Positions position = new Positions();
        	position.setPositionName(rs.getString("Position_Name"));
        	Graduate graduate = new Graduate();
        	graduate.setGraduate(rs.getString("Graduate"));
        	contract.setGraduate(graduate);
        	contract.setPosition(position);
        	contract.setBirthDay(rs.getDate("Birth_Day"));
        	contract.setGender(rs.getString("Gender"));
        	contract.setNationality(rs.getString("Nationality"));
        	contract.setIdentityNumber(rs.getString("Identity_Number"));
        	contract.setIdentityDay(rs.getDate("Identity_Day"));
        	contract.setIdentityPlace(rs.getString("Identity_Place"));
        	contract.setAddress1(rs.getString("Address1"));
        	contract.setAddress2(rs.getString("Address2"));
        	contract.setPhone(rs.getString("Phone"));
        	contract.setBank(rs.getString("Bank"));
        	contract.setBankNumber(rs.getString("Bank_Number"));
        	contract.setWorkTime(rs.getInt("Work_Time"));
        	contract.setRestTime(rs.getInt("Rest_Time"));
        	contract.setLeaveTime(rs.getInt("Leave_Time"));
        	contract.setSalary(rs.getInt("Salary"));
        	Payment payment = new Payment();
        	payment.setPayment("Payment");
        	contract.setPayment(payment);
        	contract.setCreateDate(rs.getDate("Create_Date"));
        	contract.setEndDate(rs.getDate("End_Date"));
        	return contract;
        }
	}
	public int getNewID() {
		String sql = "SELECT MAX(ID_Contract) FROM Contract";
		Integer newID = jdbcTemplate.queryForObject(sql, Integer.class);
		if (newID == null) {
			newID = 0;
		}
		return newID;
	}
	public Object addContract(int newID, String name, String nationality, String phone, String iPlace, String identity,
			String gender, int idGraduate, String birthDay, String iDate, String address1, String address2, String createDate,
			String endDate, int salary, String bankNumber, String bank, int workTime, int restTime, int leaveTime,
			int idDepartment, int idPosition, int idPayment) {
		String sql = "INSERT INTO Contract (ID_Contract, Doctor_Name, Nationality, Phone, Identity_Place, Identity_Number, Gender, "
				+ "ID_Graduate, Birth_Day, Identity_Day, Address1, Address2, Create_Date, End_Date, Salary, Bank_Number, Bank, Work_Time, "
				+ "Rest_Time, Leave_Time, ID_Department, ID_Position, ID_Payment)\r\n"
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,?, ?, ?);";
		Object[] params = new Object[] {newID, name, nationality, phone, iPlace, identity, gender, idGraduate, birthDay, iDate, address1, address2,
				createDate, endDate, salary, bankNumber, bank, workTime, restTime, leaveTime, idDepartment, idPosition, idPayment};
		return jdbcTemplate.update(sql, params);
	}
	
	

}
