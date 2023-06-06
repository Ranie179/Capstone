package com.datn.web.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.datn.web.bean.Image;


@Repository
public class ImageRepository {
	
	private class ImageRowMapper implements RowMapper<Image> {
        public Image mapRow(ResultSet rs, int rowNum) throws SQLException {
        	Image image = new Image();
        	image.setImageUrl(rs.getString("Image_Url"));
        	return image;
        }
    }

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public void save(Image image) {
        String sql = "INSERT INTO image (Image_Url, Image_Data) VALUES (?, ?)";
        jdbcTemplate.update(sql, image.getImageUrl(), image.getImageData());
    }

	public List<Image> load() {
		String sql = "select * from image";
		return jdbcTemplate.query(sql, new ImageRowMapper());
	}
}
