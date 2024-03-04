package com.motivity;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.motivity.dao.StudentDaoImpl;
import com.motivity.entity.Student;

public class App {
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("hibernateConfig.xml");
		StudentDaoImpl daoImpl = context.getBean("studentDaoImpl", StudentDaoImpl.class);
		Student student = new Student(503, "Akanksha Pujari", "GandiMaisamma", 94);
		//inserting
		//int result = daoImpl.insert(student);
		//System.out.println("rows added are " + result);
		
		//selecting one student
		Student selectedStudent = daoImpl.selectSingleStudent(501);
		System.out.println(selectedStudent);
		
		//selecting all students
//		List<Student> selectAllStudents = daoImpl.selectAllStudents();
//		for (Student student : selectAllStudents) {
//			System.out.println(student);
//		}
		
		//Updating student
		//daoImpl.update(student);
		
		//deleting student
		//daoImpl.delete(50);
	}
}
