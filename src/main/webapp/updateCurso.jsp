<%@ page import="com.sistemaestagio.dao.CursoDao"%>
<jsp:useBean id="c" class="com.sistemaestagio.bean.Curso" />
<jsp:setProperty property="*" name="c" />

<%
    int i = CursoDao.updateCurso(c);
    response.sendRedirect("ViewCurso.jsp");
%>
