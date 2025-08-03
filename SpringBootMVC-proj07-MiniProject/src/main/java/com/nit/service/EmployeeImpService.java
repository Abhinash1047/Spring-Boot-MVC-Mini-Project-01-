package com.nit.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nit.entity.Employee;
import com.nit.repository.IEmployeeRepository;
import com.nit.vo.EmployeeVO;

@Service
public class EmployeeImpService implements IEmployeeMngtService {
	@Autowired
	private IEmployeeRepository empRepo;

	@Override
	public List<EmployeeVO> showAll() 
	{
		List<Employee> all = empRepo.findAll();
		List<EmployeeVO> vo= new ArrayList<EmployeeVO>();
		all.forEach(emp->
		{
			EmployeeVO e1= new EmployeeVO();
			BeanUtils.copyProperties(emp, e1);
			vo.add(e1);
		});
		return vo;
	}
	@Override
	public String addEmployeeRecord(Employee emp) {
		Employee employee = empRepo.save(emp);
		EmployeeVO v1= new EmployeeVO();
		BeanUtils.copyProperties(employee, v1);
		return "Employee Add with "+v1.getEid() +" " +"Id" ;
	}
    
	
//	@Override
//	public Optional<EmployeeVO> updateEmployee(Integer id) 
//	{
//		 Employee employee = empRepo.findById(id).get();
//		 EmployeeVO evo = new EmployeeVO();
//		 BeanUtils.copyProperties(employee, evo);
//		 
//		return Optional.of(evo);
//	}
	
	@Override
	public Optional<Employee> findEmployeById(Integer id) {
		 Employee employee = empRepo.findById(id).orElseThrow(()->new IllegalArgumentException("Invalid Id"));
		 
		
		return Optional.of(employee);
	}
	
	@Override
	public String updateEmployee(EmployeeVO e) {
		 Employee employee = empRepo.findById(e.getEid()).orElseThrow(()->new IllegalArgumentException("Invalid Id"));
		 BeanUtils.copyProperties(e,employee);
		 return "Employee Is Updated With id value :"+empRepo.save(employee).getEid();
	}
	
	@Override
	public String deleteEmployeeById(Integer id) {
		empRepo.deleteById(id);
		return "Employee Deleted with id "+id;
	}
	
	
	
	
	
	
	
}
