package com.nit.service;

import java.util.List;
import java.util.Optional;

import com.nit.entity.Employee;
import com.nit.vo.EmployeeVO;

public interface IEmployeeMngtService
{
      public List<EmployeeVO> showAll();
      public String addEmployeeRecord(Employee emp);
      public Optional<Employee> findEmployeById(Integer id);
      public String updateEmployee(EmployeeVO e);
      public String deleteEmployeeById(Integer id);
}
