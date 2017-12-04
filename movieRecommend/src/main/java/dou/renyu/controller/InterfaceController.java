package dou.renyu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/toSkip")
public class InterfaceController {

	@RequestMapping("/index")
	public String toIndex(){
		return "/index";
	}
}
