package edu.spring.project03.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import edu.spring.project03.domain.ImageFile;
import edu.spring.project03.service.ImageService;
import edu.spring.project03.service.ImageView;

@Controller
public class ImageUploadController {
	
	private static final Logger logger = LoggerFactory.getLogger(ImageUploadController.class);
	
	private static final String SAVEPATH = "resources/images/";
	
	@Resource(name="imageView") ImageView imageView;
	
	@Autowired ImageService imageService;
	
	@Autowired 	
	
	/**
	 * 이미지 업로드를 위한 페이지 매핑 
	 */
	@RequestMapping("/uploadPage")
	private String uploadView() {
		return "upload";
	}
	
	/**
	 * 이미지 업로드 페이지의 폼에서 전송 시 받게 되는 메서드 
	 */
	@RequestMapping(value="/upload", method=RequestMethod.POST)
	private String upload(@RequestParam MultipartFile imageFile, ModelMap modelMap, Model model) {
		
		ImageFile fileInfo = imageService.save(imageFile);
		
		String img_url = SAVEPATH + fileInfo.getFileName();

		logger.info("파일명: " + img_url);
		
		model.addAttribute("img_url", img_url);
		modelMap.put("imageFile", fileInfo);
		
		return "";
	}
	
	@RequestMapping("/image/{imageId}")
	private ImageView getImage(@PathVariable String imageId, ModelMap modelMap) {
		ImageFile imageFile = imageService.get(imageId);
		
		modelMap.put("imageFile", imageFile);
		
		return imageView;
	}
}
