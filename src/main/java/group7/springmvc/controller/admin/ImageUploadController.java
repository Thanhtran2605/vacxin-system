package group7.springmvc.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import group7.springmvc.service.UploadService;
import java.io.IOException;

@Controller
public class ImageUploadController {
	
	@Autowired
	UploadService uploadService;

    @RequestMapping("/uploadForm")
    public String uploadForm() {
        return "admin/uploadForm";
    }

    @PostMapping("/uploadImage")
    public String uploadImage(@RequestParam("imageFile") MultipartFile file, Model model) throws IOException {
        if (!file.isEmpty()) {
            try {
            	String avatar = uploadService.handleSaveUploadFile(file, "avatar");

                // Add file path to the model to display in the view
                model.addAttribute("message", "Image uploaded successfully: " + avatar);
            } catch (IOException e) {
                e.printStackTrace();
                model.addAttribute("message", "Image upload failed: " + e.getMessage());
            }
        } else {
            model.addAttribute("message", "Please select a file to upload.");
        }
        return "admin/uploadStatus";
    }
}
