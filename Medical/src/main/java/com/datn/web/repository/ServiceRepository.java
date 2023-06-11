package com.datn.web.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.datn.web.bean.Services;
@Repository
public class ServiceRepository {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	private class ServiceRowMapper implements RowMapper<Services> {
        public Services mapRow(ResultSet rs, int rowNum) throws SQLException {
            Services services = new Services();
            services.setId(rs.getInt("id"));
            services.setName(rs.getString("name"));
            services.setIcon(rs.getString("icon"));
            services.setDescription1(rs.getString("description1"));
            services.setDescription2(rs.getString("description2"));
            services.setDescription3(rs.getString("description3"));
            services.setImage1(rs.getString("image1"));
            services.setImage2(rs.getString("image2"));
            services.setImage3(rs.getString("image3"));
            services.setImage4(rs.getString("image4"));
            services.setImage5(rs.getString("image5"));
            services.setIntro(rs.getString("intro"));
            services.setEndline(rs.getString("endline"));
            return services;
        }
    }
	
	public List<Services> showMoreService() {
	    String sql = "SELECT * FROM service LIMIT 7";
	    return jdbcTemplate.query(sql, new ServiceRowMapper());
	}


	public List<Services> showServiceInfo(int id) {
		String sql = "SELECT * FROM service WHERE id = ?";
		Object[] params = new Object[] {id};
		return jdbcTemplate.query(sql, params, new ServiceRowMapper());
	}
	
	public List<Services> showAllService(int page, int pageSize) {
	    int offset = (page - 1) * pageSize;
	    String sql = "SELECT * FROM service LIMIT ? OFFSET ?";
	    Object[] params = new Object[]{pageSize, offset};
	    return jdbcTemplate.query(sql, params, new ServiceRowMapper());
	}
	
	public List<Services> showAllService(int page, int pageSize, String search) {
	    int offset = (page - 1) * pageSize;
	    String sql = "SELECT * FROM service WHERE UPPER(name) LIKE UPPER(?) LIMIT ? OFFSET ?";
	    Object[] params = new Object[]{"%" + search + "%", pageSize, offset};
	    return jdbcTemplate.query(sql, params, new ServiceRowMapper());
	}

	public int getTotalServiceCount() {
	    String sql = "SELECT COUNT(*) FROM service";
	    return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	public int getTotalServiceCount(String search) {
	    String sql = "SELECT COUNT(*) FROM service WHERE UPPER(name) LIKE UPPER(?)";
	    Object[] params = new Object[]{"%" + search + "%"};
	    return jdbcTemplate.queryForObject(sql, params, Integer.class);
	}

	public List<Services> searchServiceByName(String search) {
	    String sql = "SELECT * FROM service WHERE UPPER(name) LIKE UPPER(?)";
	    Object[] params = new Object[]{"%" + search + "%"};
	    return jdbcTemplate.query(sql, params, new ServiceRowMapper());
	}



}
