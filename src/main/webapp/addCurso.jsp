<%@ page import="com.sistemaestagio.dao.CursoDao"%>
<%@ page import="javax.servlet.RequestDispatcher" %>
<jsp:useBean id="c" class="com.sistemaestagio.bean.Curso"> </jsp:useBean>
<jsp:setProperty property="*" name="c"/>property

<%
	int i = CursoDao.addCurso(c);
	request.setAttribute("resultado", i > 0 ? "sucess" : "error");
	RequestDispatcher rd = request.getRequestDispatcher("formCurso.jsp");
	rd.forward(request, response);
%>

