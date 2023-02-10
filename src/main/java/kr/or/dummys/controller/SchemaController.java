package kr.or.dummys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/schema/")
public class SchemaController {

	@GetMapping("createdummys.do")
	public String createDummys() {
		return "schema/createdummy";
	}
	@GetMapping("schemaView.do")
	public String schemaView() {
		return "schema/schemaView"; 
	}
}
