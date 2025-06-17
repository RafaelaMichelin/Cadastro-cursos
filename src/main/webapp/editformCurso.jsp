<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.sistemaestagio.bean.Curso"%>
<%@ page import="com.sistemaestagio.dao.CursoDao"%>

<%
    String paramId = request.getParameter("id");
    if (paramId == null || paramId.trim().isEmpty()) {
     
        response.sendRedirect("ViewCurso.jsp");
        return;
    }
    int id = Integer.parseInt(paramId);
    Curso curso = CursoDao.getCursoById(id);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Curso</title>
    <style>
        /* Copiei o estilo do seu cadastro, para manter padrão */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            margin: 0; padding: 0;
        }
        .container {
            width: 400px;
            margin: 80px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
            color: #444;
        }
        input[type="text"], input[type="number"], select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 4px;
            border: 1px solid #ccc;
            margin-bottom: 15px;
        }
        input[type="submit"] {
            width: 100%;
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            font-weight: bold;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        p {
            text-align: center;
        }
        a {
            text-decoration: none;
            color: #007bff;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Editar Curso</h2>
    <form action="updateCurso.jsp" method="post">
        
        <input type="hidden" name="id" value="<%= curso.getId() %>" />

        <label>Nome do curso:</label>
        <input type="text" name="nome" required value="<%= curso.getNome() %>">

        <label>Instituição:</label>
        <select name="instituicao" required>
            <option value="UNICESUMAR" <%= "UNICESUMAR".equals(curso.getInstituicao()) ? "selected" : "" %>>UNICESUMAR</option>
            <option value="UEL" <%= "UEL".equals(curso.getInstituicao()) ? "selected" : "" %>>UEL</option>
            <option value="UNIFIL" <%= "UNIFIL".equals(curso.getInstituicao()) ? "selected" : "" %>>UNIFIL</option>
            <option value="PUC" <%= "PUC".equals(curso.getInstituicao()) ? "selected" : "" %>>PUC</option>
            <option value="POSITIVO" <%= "POSITIVO".equals(curso.getInstituicao()) ? "selected" : "" %>>POSITIVO</option>
        </select>

        <label>Semestre:</label>
        <input type="number" name="semestre" required value="<%= curso.getSemestre() %>">

        <input type="submit" value="Atualizar">
    </form>
    <p><a href="ViewCurso.jsp">← Voltar para lista</a></p>
</div>
</body>
</html>
