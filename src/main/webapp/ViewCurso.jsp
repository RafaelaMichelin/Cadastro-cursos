<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.sistemaestagio.bean.Curso" %>
<%@ page import="com.sistemaestagio.dao.CursoDao" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Cursos</title>
    <style>
      table {
        border-collapse: collapse;
        width: 80%;
        margin: 20px auto;
      }
      th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
      }
      th {
        background-color: #f2f2f2;
      }
      a {
        text-decoration: none;
        color: blue;
      }
      a:hover {
        text-decoration: underline;
      }
      .btn {
        padding: 6px 12px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        margin: 10px;
        display: inline-block;
      }
    </style>
</head>
<body>

<h2 style="text-align:center;">Lista de Cursos</h2>

<p style="text-align:center;">
    <a href="formCurso.jsp" class="btn">➕ Novo Curso</a>
</p>

<%
    List<Curso> cursos = CursoDao.getAllCursos();
%>

<table>
    <tr>
        <th>ID</th>
        <th>Nome</th>
        <th>Instituição</th>
        <th>Semestre</th>
        <th>Ações</th>
    </tr>
<%
    for (Curso c : cursos) {
%>
    <tr>
        <td><%= c.getId() %></td>
        <td><%= c.getNome() %></td>
        <td><%= c.getInstituicao() %></td>
        <td><%= c.getSemestre() %></td>
        <td> <a href="deleteCurso.jsp?id=<%= c.getId() %>" class="btn" onclick="return confirm('Deseja realmente excluir este curso?');"> Excluir</a>
        
        
        
         <a href="editformCurso.jsp?id=<%= c.getId() %>" class="btn"> Editar</a>
         
         
        
        </td>
        
    </tr>
<%
    }
%>
</table>

</body>
</html>

