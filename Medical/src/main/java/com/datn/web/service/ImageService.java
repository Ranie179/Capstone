package com.datn.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.datn.web.repository.ImageRepository;

import com.datn.web.bean.Image;

@Service
public class ImageService {

    @Autowired
    private ImageRepository imageRepository;

    public void uploadImage(Image image) {
        imageRepository.save(image);
    }

	public List<Image> load() {
		return imageRepository.load();
	}
}



