package com.datn.web.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.datn.web.bean.Appointment;
import com.datn.web.bean.Departments;

@Repository
public class AppointmentRepository {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	private class AppointmentRowMapper implements RowMapper<Appointment> {
        public Appointment mapRow(ResultSet rs, int rowNum) throws SQLException {
        	Appointment appointment = new Appointment();
        	appointment.setId(rs.getInt("ID"));
        	appointment.setName(rs.getString("Name"));
        	appointment.setAppointmentDate(rs.getTimestamp("Appointment_Date"));
        	appointment.setEmail(rs.getString("Email"));
        	appointment.setGender(rs.getString("Gender"));
        	appointment.setNote(rs.getString("Note"));
        	appointment.setPhone(rs.getString("Phone"));
        	appointment.setToken(rs.getString("Token"));
        	appointment.setInformation(rs.getString("Information"));
        	Departments department = new Departments();
        	department.setDepartmentName(rs.getString("Department_Name"));
        	appointment.setDepartment(department);
            return appointment;
        }
    }
	public void setAppointment(String name, String phone, String date, String email, String gender,
			int idDepartment, String note, String token) throws Exception {
		String sql = "INSERT INTO appointment(name, phone, appointment_date, email, gender, id_department, note, token, information)"
				+ " VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		Object[] params = new Object[] {name, phone, date, email, gender, idDepartment, note, token, "Không có thông báo"};
		int rs =jdbcTemplate.update(sql, params);
		if(rs!= 1) {
			throw new Exception(); 
		}
		
	}

	public List<Appointment> searchAppointment(String token) {
		String sql = "SELECT * FROM `appointment` join departments on appointment.ID_Department = departments.ID_Department where token = ?";
		Object[] params = new Object[] {token};
		return jdbcTemplate.query(sql, params, new AppointmentRowMapper());
	}



}
