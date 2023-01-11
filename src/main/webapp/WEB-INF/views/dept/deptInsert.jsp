<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<c:if test="${result > 0}">
	<script type="text/javascript">
		alert("입력 성공 ㅋㅋ");
		location.href="deptList.do";
	</script>
</c:if>
<c:if test="${result == 0}">
	<script type="text/javascript">
		alert("입력 실패 ㅠㅠ");
		history.back();
	</script>
</c:if>
<c:if test="${result == -1}">
	<script type="text/javascript">
		alert("중복 됐다는데 , 왜그래 꺼져 !!!");
		history.back();
	</script>
</c:if>
</body>
</html>