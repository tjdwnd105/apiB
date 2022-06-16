<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="jspstudy.domain.*"  %>  
<%@ page import="java.util.*" %>  
<%
	ArrayList<MemberVo> alist = (ArrayList<MemberVo>)request.getAttribute("alist");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if (session.getAttribute("midx") != null){
	out.println("회원아이디:"+session.getAttribute("memberId")+"<br>");
	out.println("회원이름:"+session.getAttribute("memberName")+"<br>");
	
	out.println("<a href='"+request.getContextPath()+"/member/memberLogout.do'>로그아웃</a><br>");
}

%>
<h1>회원 목록 만들기</h1>
<table border="1" style="width:800px">
<tr style="color:green;">
<td>midx번호</td>
<td>이름</td>
<td>전화번호</td>
<td>작성일</td>
</tr>
<% for (MemberVo mv : alist){ %>
<tr>
<td><%=mv.getMidx() %></td>
<td><%=mv.getMembername()%></td>
<td><%=mv.getMemberphone() %> </td>
<td><%=mv.getWriteday() %></td>
</tr>
<% } %>

</table>
</body>
</html>