<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<div class="container" align="center">
	<h2 class="text-primary">직원정보 수정</h2>
<form action="empUpdate.do" method="post" name="frm" onsubmit="return chk2()">
	<input type="hidden" name="empno" value="${emp.empno }">
<table class="table table-bordered">
	<tr class="danger"><td>사번</td><td class="form-inline">${emp.empno }</td></tr>
	<tr class="warning"><td>이름</td><td><input type="text" name="ename"
		required="required" class="form-control" value="${emp.ename }"></td></tr>
	<tr class="success"><td>업무</td><td><input type="text" name="job"
		required="required" class="form-control" value="${emp.job }"></td></tr>
	<tr class="info"><td>관리자사번</td><td><select name="mgr" class="form-control">
		<c:forEach var="e" items="${empList }">
			<c:if test="${e.empno==emp.mgr }">
				<option value="${e.empno}" selected="selected">${e.ename}(${e.empno })</option>
			</c:if>
			<c:if test="${e.empno!=emp.mgr }">
				<option value="${e.empno}">${e.ename}(${e.empno })</option>
			</c:if>			
		</c:forEach>
	</select> </td></tr>
	<tr class="default"><td>입사일</td><td><input type="date" name="hiredate"
		required="required" class="form-control" value="${emp.hiredate }"></td></tr>
	<tr class="warning"><td>급여</td><td><input type="number" name="sal"
		required="required" class="form-control" value="${emp.sal }"></td></tr>
	<tr class="danger"><td>커미션</td><td><input type="number" name="comm"
		required="required" class="form-control" value="${emp.comm }"></td></tr>
	<tr class="info"><td>부서코드</td><td><select name="deptno" class="form-control">
		<c:forEach var="dept" items="${deptList }">
			<c:if test="${dept.deptno==emp.deptno }">
				<option value="${dept.deptno}" selected="selected">
					${dept.dname}(${dept.deptno })</option>
			</c:if>
			<c:if test="${dept.deptno!=deptno }">
				<option value="${dept.deptno}">${dept.dname}(${dept.deptno })</option>
			</c:if>			
		</c:forEach>
	</select></td></tr>
	<tr class="warning"><td colspan="2" align="center"><input type="submit" value="확인"
		class="btn btn-success"></td></tr>
</table>
</form>
</div>
</body>
</html>