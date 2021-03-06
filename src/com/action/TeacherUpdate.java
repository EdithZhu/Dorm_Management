package com.action;

import java.io.PrintWriter;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import com.bean.*;
import com.dao.*;


public class TeacherUpdate extends ActionSupport {


	private String Teacher_ID;
	private TeacherBean cnbean;
	public String getTeacher_ID() {
		return Teacher_ID;
	}

	public void setTeacher_ID(String studentID) {
		Teacher_ID = studentID;
	}

	public TeacherBean getCnbean() {
		return cnbean;
	}

	public void setCnbean(TeacherBean cnbean) {
		this.cnbean = cnbean;
	}


	public String execute() throws Exception {
		

		HttpServletResponse response=null;
		response=ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		

		HttpSession session = ServletActionContext.getRequest().getSession();

		if(session.getAttribute("id")==null){
			out.print("<script language='javascript'>alert('Please log in again!');window.location='Login.jsp';</script>");
			out.flush();out.close();return null;
		}
		
		//search
		cnbean=new TeacherDao().GetBean(Integer.parseInt(Teacher_ID));
		return SUCCESS;
		
	}
	

	private boolean isInvalid(String value) {
		return (value == null || value.length() == 0);
	}
	

	public static void main(String[] args) {
		System.out.println();
	}
	
}
