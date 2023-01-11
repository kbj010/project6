package com.ch.ch08.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ch.ch08.model.Dept;
import com.ch.ch08.model.Emp;
import com.ch.ch08.service.DeptService;
import com.ch.ch08.service.EmpService;
@Controller
public class EmpController {
	@Autowired
	private DeptService ds;
	@Autowired
	private EmpService es;
	@RequestMapping("empUpdateForm")
	public String empUpdateForm(int empno, Model model) {
		Emp emp = es.select(empno);
		List<Dept> deptList = ds.list();
		List<Emp>  empList  = es.list();
		model.addAttribute("emp", emp);
		model.addAttribute("deptList", deptList);
		model.addAttribute("empList", empList);
		return "/emp/empUpdateForm";
	}
	@RequestMapping("empUpdate")
	public String empUpdate(Emp emp, Model model) {
		int result = es.update(emp);
		model.addAttribute("result", result);
		model.addAttribute("emp", emp);
		return "/emp/empUpdate";
	}
	@RequestMapping("empInsertForm")
	public String empInsertForm(int deptno, Model model) {
		List<Dept> deptList = ds.list();
		List<Emp>  empList  = es.list();
		model.addAttribute("deptno", deptno);
		model.addAttribute("deptList", deptList);
		model.addAttribute("empList", empList);
		return "/emp/empInsertForm";
	}
	@RequestMapping("empInsert")
	public String empInsert(Emp emp, Model model) {
		int result = 0;
		Emp emp2 = es.select(emp.getEmpno());
		if (emp2 == null) result = es.insert(emp);
		else result = -1; // 중복
		model.addAttribute("result", result);
		model.addAttribute("emp", emp);
		return "/emp/empInsert";
	}
	@RequestMapping("empDelete")
	public String empDelete(int empno, Model model) {
		Emp emp = es.select(empno);
		int result = es.delete(empno);
		model.addAttribute("result", result);
		model.addAttribute("emp", emp);
		return "/emp/empDelete";
	}
	@RequestMapping(value = "empnoChk", produces = "text/html;charset=utf-8")
	@ResponseBody
	public String empnoChk(int empno) {
		String data = "";
		Emp emp = es.select(empno);
		if (emp == null) data = "사용 가능한 사번입니다";
		else data = "이미 사용중이니 다른 것을 사용하세요";
		return data;
	}
	@RequestMapping("allEmplist")
	public String allEmplist(Model model) {
		List<Emp> list = es.allEmplist();
		model.addAttribute("list", list);
		return "/emp/allEmplist";
	}
	@RequestMapping("empList")
	public String empList(int deptno, Model model) {
		Dept dept = ds.select(deptno);
		List<Emp> empList = es.empList(deptno);
		model.addAttribute("dept", dept);
		model.addAttribute("empList", empList);
		return "/emp/empList";
	}
	@RequestMapping("empSelect")
	public String empSelect(int empno, Model model) {
		Emp emp = es.select(empno);
		model.addAttribute("emp",emp);
		return "/emp/empSelect";
	}
}