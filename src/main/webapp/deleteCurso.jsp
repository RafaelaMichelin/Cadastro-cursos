<%@ page import="com.sistemaestagio.dao.CursoDao"%>
<jsp:useBean id="c" class="com.sistemaestagio.bean.Curso"> </jsp:useBean>
<jsp:setProperty property="*" name="c"/>property

<%
CursoDao.deleteCurso(c);
response.sendRedirect("ViewCurso.jsp");	
%>
