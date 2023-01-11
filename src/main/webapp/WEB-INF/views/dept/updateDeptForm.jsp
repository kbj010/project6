<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<div class="container" align="center">
	<h2 class="text-primary">부서정보 수정</h2>
<form action="deptUpdate.do" name="frm" method="post">
	<input type="hidden" name="deptno" value="${dept.deptno }">
<table class="table table-hover">
	<tr class="warning"><th>부서코드</th><td>${dept.deptno }</tr>
	<tr class="info"><th>부서명</th><td><input type="text" name="dname" required="required"
		class="form-control" value="${dept.dname }"></td></tr>
	<tr class="success"><th>근무지</th><td><input type="text" name="loc" required="required"
		class="form-control" value="${dept.loc }"></td></tr>	
	<tr class="danger"><td colspan="2" align="center"><input type="submit" value="확인"
		class="btn btn-info"></td></tr>
</table>
<a href="deptList.do" class="btn btn-primary">부서목록</a>
</form>
</div>
</body>
</html>