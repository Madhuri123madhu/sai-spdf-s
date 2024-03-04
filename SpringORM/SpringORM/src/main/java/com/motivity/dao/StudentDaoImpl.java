package com.motivity.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.motivity.entity.Student;

public class StudentDaoImpl {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public int insert(Student student) {
		Integer result = (Integer) this.hibernateTemplate.save(student);
		return result;
	}

	@Transactional
	public void update(Student student) {
		this.hibernateTemplate.update(student);
		System.out.println("Record Updated");
	}

	@Transactional
	public void delete(int studentId) {
		Student student = this.hibernateTemplate.get(Student.class, studentId);
		this.hibernateTemplate.delete(student);
		System.out.println("Record Deleted Successfully");
	}

	public Student selectSingleStudent(int studentId) {
		Student student = this.hibernateTemplate.get(Student.class, studentId);
		return student;
	}

	public List<Student> selectAllStudents() {
		List<Student> list = this.hibernateTemplate.loadAll(Student.class);
		return list;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

}
