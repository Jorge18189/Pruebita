<%-- 
    Document   : bienvenida
    Created on : 19 nov. 2024, 21:03:16
    Author     : Zianya
--%>
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
        <title>LSA - Learn. Study. Achieve</title>
        <link rel="icon" type="image/png" href="../imagenes/Savy.png">    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
        <style>
/* Estilos generales */
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: 'Montserrat', sans-serif;
    background: linear-gradient(135deg, #1a2b49 0%, #2a4073 100%);
    color: #f0f0f0;
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
}

/* Contenedor principal */
.container {
    max-width: 900px;
    margin: 30px auto;
    padding: 40px 60px;
    background: #2c3e50;
    border-radius: 20px;
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
    text-align: center;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}



/* Título */
h1 {
    font-size: 2.5em;
    font-weight: 700;
    color: #f0f0f0;
    margin-bottom: 20px;
    letter-spacing: 1px;
}

/* Texto de bienvenida */
.welcome-text {
    font-size: 1.2em;
    line-height: 1.8;
    color: #e0e0e0;
    margin-bottom: 30px;
}

/* Instrucciones */
.instructions {
    background: #34495e;
    padding: 20px;
    border-radius: 12px;
    margin-bottom: 30px;
    text-align: left;
}

.instructions h2 {
    font-size: 1.5em;
    font-weight: 700;
    color: #f0f0f0;
    margin-bottom: 15px;
}

.instructions ul {
    list-style: none;
    padding-left: 0;
}

.instructions ul li {
    font-size: 1em;
    line-height: 1.6;
    color: #d0d0d0;
    margin-bottom: 10px;
    position: relative;
    padding-left: 40px;
}

.instructions ul li::before {
    content: '✔️';
    position: absolute;
    left: 0;
    top: 0;
    color: #78c2ad;
    font-size: 1.2em;
}

/* Botones */
.button-container {
    display: flex;
    justify-content: center;
    gap: 20px;
    flex-wrap: wrap;
}

button {
    padding: 16px 32px;
    font-family: 'Montserrat', sans-serif;
    border: none;
    border-radius: 12px;
    background: linear-gradient(145deg, #78c2ad, #3e8e7e);
    color: #f0f0f0;
    cursor: pointer;
    font-size: 1.2em;
    font-weight: 550;
    transition: background 0.3s ease, transform 0.2s ease, box-shadow 0.3s ease;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.4);
}

button:hover {
    background: linear-gradient(145deg, #3e8e7e, #78c2ad);
    box-shadow: 0 12px 30px rgba(0, 0, 0, 0.5);
}

button:active {
    transform: translateY(3px);
    box-shadow: 0 6px 15px rgba(0, 0, 0, 0.4);
}

/* Media queries para móviles */
@media (max-width: 768px) {
    .container {
        padding: 30px 20px;
    }

    .instructions {
        text-align: center;
    }

    .button-container {
        flex-direction: column;
    }
}
        </style>
</head>
<body>
    <div class="container">
        <h1>¡Bienvenido al Cuestionario FODA!</h1>
        <p class="welcome-text">
            Antes de comenzar, te daremos una breve introducción sobre cómo proceder con el cuestionario. 
            El análisis FODA te permitirá identificar las <strong>Fortalezas</strong>, <strong>Oportunidades</strong>, 
            <strong>Debilidades</strong> y <strong>Amenazas</strong> en diferentes aspectos de tu organización o proyecto. 
        </p>
        <div class="instructions">
            <h2>Instrucciones Básicas</h2>
            <ul>
                <li>Responde cada pregunta con sinceridad para obtener un análisis efectivo.</li>
                <li>El cuestionario se divide en cuatro secciones: Fortalezas, Oportunidades, Debilidades y Amenazas.</li>
                <li>Dedica tiempo a reflexionar sobre cada respuesta para obtener el mejor resultado.</li>
            </ul>
        </div>
        <div class="button-container">
            <button onclick="location.href='completo.jsp'">Iniciar FODA</button>
        </div>
    </div>
</body>
</html>

