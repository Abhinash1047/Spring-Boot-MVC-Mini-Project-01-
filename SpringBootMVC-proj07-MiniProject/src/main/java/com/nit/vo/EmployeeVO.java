package com.nit.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class EmployeeVO 
{
    private Integer eid;
	@NonNull
	private  String ename;
	@NonNull
	private String address;
	@NonNull
	private Double salary;
	@NonNull
	private String designation;
}
