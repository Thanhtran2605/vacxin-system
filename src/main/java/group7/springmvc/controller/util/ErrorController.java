/*
 *	(C) Copyright 2024. All Rights Reserved.
 *	@author DELL
 * 	@date Aug 26, 2024
 *	@version 1.0
*/
package group7.springmvc.controller.util;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ErrorController {
	
	@GetMapping("/access-dine")
    public String lock() {
        return "/error/access-dine";
    }
	
}
