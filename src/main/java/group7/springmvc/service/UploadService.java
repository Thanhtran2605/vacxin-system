package group7.springmvc.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.ServletContext;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;


@Service
public class UploadService {

	private final ServletContext servletContext;
	
	public UploadService(ServletContext servletContext) {
		this.servletContext = servletContext;
	}
	
	public String handleSaveUploadFile(MultipartFile file, String targetFolder) throws IOException{
		if(file.isEmpty()) {
			return "";
		}
		byte[] bytes = file.getBytes();
//		String rootPath = this.servletContext.getRealPath("/resources/images");
		String rootPath = "D:/IconShotcut/vacxin-system/src/main/webapp/resources/images";
		File dir = new File(rootPath + File.separator + targetFolder); if (!dir.exists()) dir.mkdirs();
		// Create the file on server 
		String fileName = System.currentTimeMillis() + "-" + file.getOriginalFilename();
		File serverFile = new File(dir.getAbsolutePath() + File.separator + fileName);
		BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile)); 
		stream.write(bytes); 
		stream.close();
		return fileName;
	}
	
}
