package com.nit.controller;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.nit.entity.Employee;
import com.nit.service.IEmployeeMngtService;
import com.nit.vo.EmployeeVO;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class EmployeeController {

	  @Autowired
	  private IEmployeeMngtService empservice;
	  
	  @GetMapping("/")
	  public String showHome() {
		  
		return "welcome";
		
	}
	  
	  @GetMapping("/register")
	  public String showRegister(Map<String, Object> map)
	  {
		  List<EmployeeVO> showAll = empservice.showAll();
		  map.put("data", showAll);
		return "emp_report";
		  
	  }
	  
	  @GetMapping("/add")
	  public String employeeData(@ModelAttribute("emp") Employee em)
	  {
		  System.out.println("EmployeeController.addEmployee()");
		  return "register_emp";
		  
	  }
	  
	  @PostMapping("/regi")
	  public String addEmployee(@ModelAttribute("emp") Employee em,RedirectAttributes att) 
	  {
		  String record = empservice.addEmployeeRecord(em);
		  
		  att.addFlashAttribute("msg", record);
	  	return "redirect:register";
	  }
	  
	  @GetMapping("/edit")
	  public String getEmployeeById(@RequestParam("id") int no,@ModelAttribute("emp") Employee emp)
	  {
		  Optional<Employee> employeById = empservice.findEmployeById(no);
		  BeanUtils.copyProperties(employeById.get(),emp);
		  return "update_emp";
		  
	  }
	  
	  @PostMapping("/updatedata")
	  public String editEmployee(@ModelAttribute("emp") EmployeeVO em,RedirectAttributes attrs)
	  {
		  
		  String msg = empservice.updateEmployee(em);
		  
		  
		  attrs.addFlashAttribute("msg",msg);
		  return "redirect:register";
		  
		  
	  }	  
	  
	  @GetMapping("/delete")
	  public String deleteEmployee(@RequestParam("id") int no,RedirectAttributes attrs)
	  {
		  String emp1 = empservice.deleteEmployeeById(no);
		  attrs.addFlashAttribute("msg", emp1);
		  
		  return "redirect:register";
	  }
	  
	  
	  
	  
}
