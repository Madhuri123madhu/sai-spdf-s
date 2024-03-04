package com.motivity.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Student 
{
	@Id
	private int studentId;
	private String studentName;
	private String studentAddress;
	private int marks;
		
}
