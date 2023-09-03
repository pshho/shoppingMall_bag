package bag.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("customServ")
public class CustomerService {
	@RequestMapping("{custSer}")
	String goServ(@PathVariable String custSer) {
		return "customService/templates";
	}
}
