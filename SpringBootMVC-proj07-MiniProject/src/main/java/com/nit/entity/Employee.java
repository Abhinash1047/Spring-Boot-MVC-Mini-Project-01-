package com.nit.entity;

import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Version;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
public class Employee {
	
	@Id
	@SequenceGenerator(name = "gen1",sequenceName = "seq_emp",initialValue = 1000,allocationSize = 1)
	@GeneratedValue(generator = "gen1",strategy = GenerationType.SEQUENCE)
	private Integer eid;
	
	@Column(length = 30)
	@NonNull
	private  String ename;
	
	@Column(length = 30)
	@NonNull
	private String address;
	
	@NonNull
	private Double salary;
	
	@Column(length = 30)
	@NonNull
	private String designation;
	
	
	
	@CreationTimestamp
	private LocalDateTime createOn;
	@UpdateTimestamp
	private LocalDateTime updatedOn;
	@Version
	private Integer updatedCount;
	
	
	

}
