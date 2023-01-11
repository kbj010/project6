<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function deptDupChk() {
		if (!frm.deptno.value) {
			alert("부서코드를 입력하고 체므 하시오");  frm.deptno.focus();
			return false;  		
		}
		$.post('deptDupChk.do', "deptno="+frm.deptno.value, function(data) {
			$('#dup').html(data);
		});
	}
</script></head><body>
<div class="container" align="center">
	<h2 class="text-primary">부서정보 입력</h2>
<form action="deptInsert.do" name="frm" method="post">
<table class="table table-hover">
	<tr><th>부서코드</th><td class="form-inline">
		<input type="number" name="deptno" min="10" max="99"
			class="form-control" required="required" autofocus="autofocus">
			<input type="button" value="중복체크" onclick="deptDupChk()"
			class="btn btn-success btn-sm">
		<div class="err" id="dup"></div>
		</td></tr>
	<tr><th>부서명</th><td><input type="text" name="dname" required="required"
		class="form-control"></td></tr>
	<tr><th>근무지</th><td><input type="text" name="loc" required="required"
		class="form-control"></td></tr>	
	<tr><td colspan="2" align="center"><input type="submit" class="btn btn-info"></td></tr>
</table>
<a href="deptList.do" class="btn btn-primary">부서목록</a>
</form>
</div>
</body>
</html>