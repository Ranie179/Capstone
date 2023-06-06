package com.datn.web.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.datn.web.bean.Doctors;
import com.datn.web.bean.Positions;
import com.datn.web.bean.Departments;
@Repository
public class DoctorRepository {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	private class DoctorRowMapper implements RowMapper<Doctors> {
        public Doctors mapRow(ResultSet rs, int rowNum) throws SQLException {
        	Doctors doctor = new Doctors();
            doctor.setIdDoctor(rs.getInt("ID_Doctor"));
            doctor.setDoctorName(rs.getString("Doctor_Name"));
            doctor.setImageUrl(rs.getString("Image_URL"));
            doctor.setGender(rs.getString("Gender"));
            doctor.setBirthDay(rs.getDate("BirthDay"));
            Positions position = new Positions();
            position.setIdPosition(rs.getInt("ID_Position"));
            position.setPositionName(rs.getString("Position_Name"));
            doctor.setPosition(position);
            Departments department = new Departments();
            department.setIdDepartment(rs.getInt("ID_Department"));
            department.setDepartmentName(rs.getString("Department_Name"));
            doctor.setDepartment(department);
            doctor.setInformation(rs.getString("Information"));
            doctor.setGraduate(rs.getString("Graduate"));
            doctor.setExpYear(rs.getInt("EXP_YEARS"));
            doctor.setWorkYear(rs.getInt("WORK_YEARS"));
            return doctor;
        }
    }
	public List<Doctors> showAllDoctor(int page, int pageSize) {
		int offset = (page - 1) * pageSize;
		Object[] params = new Object[]{pageSize, offset};
		String sql = "select doc.*, d.Department_Name, p.Position_Name\r\n"
				+ "from doctors as doc\r\n"
				+ "join positions as p ON doc.ID_Position = p.ID_Position\r\n"
				+ "join departments as d ON doc.ID_Department = d.ID_Department LIMIT ? OFFSET ?";
		return jdbcTemplate.query(sql, params, new DoctorRowMapper());
	}
	
	public List<Doctors> showDoctorInfo(int idDoctor) {
		String sql = "select doc.*, d.Department_Name, p.Position_Name\r\n"
				+ "from doctors as doc \r\n"
				+ "join positions as p ON doc.ID_Position = p.ID_Position\r\n"
				+ "join departments as d ON doc.ID_Department = d.ID_Department\r\n"
				+ "where doc.ID_Doctor = ?";
		Object[] params = new Object[] {idDoctor};
		return jdbcTemplate.query(sql, params, new DoctorRowMapper());
	}

	public List<Doctors> doctorBonus(int idDepartment) {
		String sql = "select doc.*, d.Department_Name, p.Position_Name\r\n"
				+ "from doctors as doc \r\n"
				+ "join positions as p ON doc.ID_Position = p.ID_Position\r\n"
				+ "join departments as d ON doc.ID_Department = d.ID_Department\r\n"
				+ "where d.ID_Department = ?\r\n"
				+ "LIMIT 3";
		Object[] params = new Object[] {idDepartment};
		return jdbcTemplate.query(sql, params, new DoctorRowMapper());
	}
	
	public int getTotalDoctorCount() {
		String sql = "SELECT COUNT(*) FROM doctors";
	    return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	public List<Doctors> searchDoctorByName(String search) {
		String sql = "select doc.*, d.Department_Name, p.Position_Name\r\n"
				+ "from doctors as doc \r\n"
				+ "join positions as p ON doc.ID_Position = p.ID_Position\r\n"
				+ "join departments as d ON doc.ID_Department = d.ID_Department\r\n"
				+ "WHERE UPPER(Doctor_Name) LIKE UPPER(?)";
		Object[] params = new Object[]{"%" + search + "%"};
	    return jdbcTemplate.query(sql, params, new DoctorRowMapper());
	}




}
