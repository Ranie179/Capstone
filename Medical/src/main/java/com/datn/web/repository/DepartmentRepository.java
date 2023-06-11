package com.datn.web.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.datn.web.bean.Departments;

@Repository
public class DepartmentRepository {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	private class DepartmentRowMapper implements RowMapper<Departments> {
        public Departments mapRow(ResultSet rs, int rowNum) throws SQLException {
        	Departments department = new Departments();
        	department.setDepartmentName(rs.getString("Department_Name"));
        	department.setIdDepartment(rs.getInt("ID_Department"));
        	department.setNumOfDoctors(rs.getInt("NumOfDoctors"));
        	return department;
        }
    }
	public List<Departments> showDepartmentAndDoctor() {
		String sql = "SELECT departments.ID_Department, departments.Department_Name, COUNT(doctors.ID_Doctor) "
				+ "as NumOfDoctors FROM departments LEFT JOIN doctors "
				+ "ON departments.ID_Department = doctors.ID_Department GROUP BY departments.Department_Name;";
		return jdbcTemplate.query(sql, new DepartmentRowMapper());
	}

}
