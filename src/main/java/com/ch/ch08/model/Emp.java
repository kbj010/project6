package com.ch.ch08.model;
import java.sql.Date;
import lombok.Data;
@Data
public class Emp {
	// 데이터값에 null이 들어있는 경우에는 Integer권장함
	private int empno;
	private String ename;
	private String job;
	private Integer mgr;
	private Date hiredate;
	private int sal;
	private Integer comm;
	private int deptno;
	// 관리자 이름
	private String mgrName;
	// join용
	private String dname;
	private String loc;
	// table전체 조인
	private Dept dept;
}
