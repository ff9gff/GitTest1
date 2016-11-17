package edu.spring.project03;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ImageUploadController {
	@Resource(name="imageView") ImageView imageView;
	@Autowired ImageService imageService;
	
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
	private String upload(@RequestParam MultipartFile imageFile, ModelMap modelMap) {
		ImageFile fileInfo = imageService.save(imageFile);
		
		modelMap.put("imageFile", fileInfo);
		
		return "uploadComplete";
	}
	
	@RequestMapping("/image/{imageId}")
	private ImageView getImage(@PathVariable String imageId, ModelMap modelMap) {
		ImageFile imageFile = imageService.get(imageId);
		
		modelMap.put("imageFile", imageFile);
		
		return imageView;
	}
}
