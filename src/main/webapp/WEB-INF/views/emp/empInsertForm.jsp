<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function empnoChk() {
		if (!frm.empno.value) {
			alert('사번을 입력한 후에 체크하시오'); frm.empno.focus(); return false;
		}
		$.post('empnoChk.do','empno='+frm.empno.value, function(data) {
			$('#empnoChk').html(data);
			frm.chk.value = '1';
		});
	}
	function chk2() {
		if (frm.chk.value == '0') {
			alert("중복체크한 후에 입력하시오");
			frm.empno.focus();
			return false;
		}
	}
</script></head><body>
<div class="container" align="center">
	<h2 class="text-primary">직원정보 입력</h2>
<form action="empInsert.do" method="post" name="frm" onsubmit="return chk2()">
	<input type="hidden" name="chk" value="0">
<table class="table table-bordered">
	<tr class="danger"><td>사번</td><td class="form-inline"><input type="number" name="empno" 
		class="form-control" required="required" autofocus="autofocus">
		<input type="button" value="중복체크" onclick="empnoChk()" 
		class="btn btn-warning btn-sm"><div id="empnoChk" class="err"></div></td></tr>
	<tr class="warning"><td>이름</td><td><input type="text" name="ename"
		required="required" class="form-control"></td></tr>
	<tr class="success"><td>업무</td><td><input type="text" name="job"
		required="required" class="form-control"></td></tr>
	<tr class="info"><td>관리자사번</td><td><select name="mgr" class="form-control">
		<c:forEach var="emp" items="${empList }">
			<option value="${emp.empno}">${emp.ename}(${emp.empno })</option>
		</c:forEach>
	</select> </td></tr>
	<tr class="default"><td>입사일</td><td><input type="date" name="hiredate"
		required="required" class="form-control"></td></tr>
	<tr class="warning"><td>급여</td><td><input type="number" name="sal"
		required="required" class="form-control"></td></tr>
	<tr class="danger"><td>커미션</td><td><input type="number" name="comm"
		required="required" class="form-control"></td></tr>
	<tr class="info"><td>부서코드</td><td><select name="deptno" class="form-control">
		<c:forEach var="dept" items="${deptList }">
			<c:if test="${dept.deptno==deptno }">
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