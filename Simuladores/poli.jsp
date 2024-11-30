<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    Integer userId = (session != null) ? (Integer) session.getAttribute("userId") : null;

    if (userId == null) {
        response.sendRedirect("login.jsp");
    } else {
    }
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

        <title>LSA - Learn. Study. Achieve</title>
        <link rel="icon" type="image/png" href="../imagenes/Savy.png">    <link rel="stylesheet" href="poli.css">
</head>
<body>
 <h1>Examen-IPN</h1>
    <h1>Selecciona en que tipo de área realizaras el exámen</h1>
    <div class="container">
        <div class="option" onclick="location.href='fisicomatematicas.jsp'">
            <i class="fa-solid fa-wrench"></i>
            <h3>Ingeniería y Ciencias </h3>
            <H3>Físico-Matemáticas</h3>
        </div>
        <div class="option" onclick="location.href='trabajando.jsp'">
            <i class="fa-brands fa-react"></i>
            <h3>Ciencias Médico-Biológicas</h3>
        </div>
        <div class="option" onclick="location.href='trabajando.jsp'">
            <i class="fa-solid fa-book-open"></i>
            <h3>Ciencias Sociales y Administrativas</h3>
        </div>
    </div>
</body>
</html>
