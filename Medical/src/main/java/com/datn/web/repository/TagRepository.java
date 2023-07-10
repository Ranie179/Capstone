package com.datn.web.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.datn.web.bean.Tags;

@Repository
public class TagRepository {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private class TagRowMapper implements RowMapper<Tags> {
        public Tags mapRow(ResultSet rs, int rowNum) throws SQLException {
        	Tags tag = new Tags();
        	tag.setIdTag(rs.getInt("ID_Tag"));
        	tag.setTag(rs.getString("Tag"));
        	tag.setNumOfPosts(rs.getInt("NumOfPosts"));
        	return tag;
        	}
        
	}
	public List<Tags> showTags() {
		String sql = "SELECT tags.ID_Tag, tags.Tag, COUNT(blogs.ID_Blog) "
				+ "as NumOfPosts FROM tags LEFT JOIN blogs "
				+ "ON tags.ID_Tag = blogs.ID_Tag GROUP BY tags.Tag;";
		return jdbcTemplate.query(sql, new TagRowMapper());
	}
}
