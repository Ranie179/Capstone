package com.datn.web.controller;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.datn.web.service.ImageService;

import com.datn.web.bean.Image;
@Controller
public class ImageController {

    @Autowired
    private ImageService imageService;

    @RequestMapping("/upload")
    public String uploadFile(@RequestParam("file") MultipartFile file) throws IOException {
        if (!file.isEmpty()) {
            try {
                String relativePath = "/resources/images/aaa.png";
                byte[] imageData = file.getBytes();

                String destinationPath = "C:\\Users\\Asus\\Downloads\\Medical\\src\\main\\webapp\\" + relativePath;
                File destinationFile = new File(destinationPath);
                Path destination = destinationFile.toPath();
                System.out.print(destination);
                InputStream inputStream = file.getInputStream();
                Files.copy(inputStream, destination, StandardCopyOption.REPLACE_EXISTING);
                
                Image image = new Image();
                image.setImageUrl(relativePath);
                image.setImageData(imageData);

                imageService.uploadImage(image);

                return "customer/home";
            } catch (IOException e) {
                e.printStackTrace();
                return "customer/upload";
            }
        } else {
            return "customer/upload";
        }
    }
    @RequestMapping(value = "load")
    public String load(Model model) {
    	List<Image> images = imageService.load();
    	model.addAttribute("image", images);
    	return "customer/load";
    }
}

