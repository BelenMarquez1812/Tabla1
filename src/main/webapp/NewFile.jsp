<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dataBase.ConexionDB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
  <title>Title</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

</head>

<body>
  <table class="table">
    <thead class="table-dark">
      <h1>Animes Historicos</h1>
    </thead>
    <th scope="col">#Id</th>
    <th scope="col">Nombre</th>
    <th scope="col">Capitulos</th>
    <th scope="col">Actualidad</th>
    <th scope="col">Creador</th>  
    <tbody>
      <%
      //nos conectabmos a la db
      ConexionDB conexionDB=new ConexionDB();
      Statement st= conexionDB.conectarCreateStatement();
      ResultSet rs=st.executeQuery("SELECT * FROM historicos");
      
      while (rs.next()) {
        out.println("<tr>");
        
        //ID
        out.println("<td>");
        out.println(rs.getInt("id"));
        out.println("</td>");
        
        //Nombre
        
        out.println("<td>");
        out.println(rs.getString("Nombre"));
        out.println("</td>");
        
        //Capitulos
        
        out.println("<td>");
        out.println(rs.getInt("Capitulos"));
        out.println("</td>");
        
        //Actualidad
        
        out.println("<td>");
        out.println(rs.getString("Actualidad"));
        out.println("</td>");
        
        //Creador
        
        out.println("<td>");
        out.println(rs.getString("Creador"));
        out.println("</td>");
        
        out.println("</tr>");
        
      }
      %>
    </tbody>
  </table>
  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
    integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
  </script>
</body>

</html>