package com.datn.web.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.datn.web.bean.Blogs;
import com.datn.web.bean.Tags;

@Repository
public class BlogRepository {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private class BlogRowMapper implements RowMapper<Blogs> {
        public Blogs mapRow(ResultSet rs, int rowNum) throws SQLException {
        	Blogs blog = new Blogs();
        	blog.setCreateDate(rs.getDate("Create_Date"));
        	blog.setIdBlog(rs.getInt("ID_Blog"));
        	blog.setImage1(rs.getString("Image1"));
        	blog.setImage2(rs.getString("Image2"));
        	blog.setImage3(rs.getString("Image3"));
        	blog.setIntro(rs.getString("Intro"));
        	blog.setParagraph1(rs.getString("Paragraph1"));
        	blog.setParagraph2(rs.getString("Paragraph2"));
        	blog.setParagraph3(rs.getString("Paragraph3"));
        	blog.setQuote(rs.getString("Quotation"));
        	blog.setTitle(rs.getString("Title"));
        	Tags tag = new Tags();
        	tag.setIdTag(rs.getInt("ID_Tag"));
        	tag.setTag(rs.getString("Tag"));
        	blog.setTag(tag);
        	return blog;
        }
	}

	public List<Blogs> showAllBlogs(int page, int pageSize) {
		int offset = (page - 1) * pageSize;
		String sql = "SELECT blogs.*, tags.Tag\r\n"
				+ "FROM blogs JOIN tags ON blogs.ID_Tag = tags.ID_Tag\r\n"
				+ "LIMIT ? OFFSET ?";
		Object[] params = new Object[] {pageSize, offset};
		return jdbcTemplate.query(sql, params, new BlogRowMapper());
	}

	public int getTotalBlogCount() {
		String sql = "SELECT COUNT(*) FROM blogs";
	    return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	//				+ "WHERE UPPER(blogs.Title) LIKE UPPER(?)\r\n"

	public List<Blogs> showBlogInfo(int idBlog) {
		String sql = "SELECT blogs.*, tags.Tag\r\n"
				+ "FROM blogs\r\n"
				+ "JOIN tags ON blogs.ID_Tag = tags.ID_Tag\r\n"
				+ "WHERE blogs.ID_Blog = ?";
		Object[] params = new Object[] {idBlog};
		return jdbcTemplate.query(sql, params, new BlogRowMapper());
	}

	public List<Blogs> getRecentBlog() {
		String sql = "SELECT blogs.*, tags.Tag\r\n"
				+ "FROM blogs JOIN tags ON blogs.ID_Tag = tags.ID_Tag\r\n"
				+ "ORDER BY Create_Date DESC\r\n"
				+ "LIMIT 5";
		return jdbcTemplate.query(sql, new BlogRowMapper());
	}

	public List<Blogs> showBlogByTag(int idTag) {
		String sql = "SELECT blogs.*, tags.Tag\r\n"
				+ "FROM blogs JOIN tags ON blogs.ID_Tag = tags.ID_Tag\r\n"
				+ "WHERE tags.ID_Tag = ?";
		Object[] params = new Object[] {idTag};
		return jdbcTemplate.query(sql, params, new BlogRowMapper());
	}
	

}
