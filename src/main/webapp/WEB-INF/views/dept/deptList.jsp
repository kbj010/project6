<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function del(deptno) {
		var cf = confirm("정말로 삭제 하시겠습니까?");
		if (cf) location.href="deleteDept.do?deptno="+deptno;
		else alert("삭제가 취소 되었습니다");
	}
</script></head><body>
<div class="container" align="center">
	<h2 class="text-primary">부서 목록</h2>
<table class="table table-striped">
	<tr class="warning"><th>부서코드</th><th>부서명</th><th>근무지</th><th>수정</th><th>삭제</th></tr>
<c:if test="${empty deptList }">
	<tr><td colspan="5">부서정보가 없습니다</td></tr>
</c:if>
<c:if test="${not empty deptList }">
	<c:forEach var="dept" items="${deptList }">
		<tr><td>${dept.deptno }</td>
			<td><a href="empList.do?deptno=${dept.deptno }" 
				class="btn btn-success btn-sm">${dept.dname }</a></td>
			<td>${dept.loc }</td>
			<td><a href="updateDeptForm.do?deptno=${dept.deptno }" 
				class="btn btn-warning btn-sm">수정</a></td>
			<td><button onclick="del(${dept.deptno})" class="btn btn-danger btn-sm">삭제</button></td></tr>
	</c:forEach>
</c:if>
</table>
<a class="btn btn-info" href="insertDeptForm.do">부서정보 입력</a> 
<a class="btn btn-primary" href="allEmplist.do">전직원 목록</a>
</div>
</body>
</html>