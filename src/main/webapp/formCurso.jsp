<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastrar Curso</title>
    <style>
        /* Seu CSS aqui */
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
    <h2>Cadastro de Curso</h2>
    <form action="addCurso.jsp" method="post">
   <label>Nome do curso:</label>
        <input type="text" name="nome" required>
     <label>Instituição:</label>
     
          <select name="instituicao" required>
            <option value="UNICESUMAR">UNICESUMAR</option>
            <option value="UEL">UEL</option>
            <option value="UNIFIL">UNIFIL</option>
            <option value="PUC">PUC</option>
            <option value="POSITIVO">POSITIVO</option>
         </select>

        <label>Semestre:</label>
        <input type="number" name="semestre" required>

      
     <input type="submit" value="Salvar">
    </form>
    <p><a href="ViewCurso.jsp">← Voltar para lista</a></p>
</div>
</body>
</html>
