<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$('#empList').load('empList.do table','deptno=${emp.deptno}');
	});
	function del(empno) {
		var cf = confirm("정말로 삭제 하시겠습니까?");
		if (cf) location.href="empDelete.do?empno="+empno;
		else alert("삭제가 취소 되었습니다");
	}
</script></head><body>
<div class="container" align="center">
	<h2 class="text-primary">직원정보 상세</h2>
<table class="table table-bordered">
	<tr class="danger">
		<th>사번</th><td>${emp.empno }</td><th>이름</th><td>${emp.ename }</td></tr>
	<tr class="warning">
		<th>업무</th><td>${emp.job}</td><th>관리자</th><td>${emp.mgrName}(${emp.mgr})</td></tr>
	<tr class="success">
		<th>입사일</th><td>${emp.hiredate}</td><th>급여</th><td>${emp.sal}</td></tr>
	<tr class="info">
		<th>COMM</th><td>${emp.comm}</td><th>부서코드</th><td>${emp.deptno}</td></tr>
	<tr class="default"><td colspan="4" align="center">
		<a href="empList.do?deptno=${emp.deptno }" class="btn btn-info">직원목록</a>
		<a href="empUpdateForm.do?empno=${emp.empno }" class="btn btn-warning">수정</a>
		<a onclick="del(${emp.empno })" class="btn btn-danger">삭제</a>
		<a href="deptList.do" class="btn btn-success">부서목록</a>
</table>
<div id="empList"></div>
</div>
</body>
</html>