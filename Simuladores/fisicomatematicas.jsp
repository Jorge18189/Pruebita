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
    <link rel="stylesheet" href="instrucciones.css">
</head>
<body>
    <div class="container">
        <h1>Simulacro de Examen IPN</h1>
        <p class="welcome-text">
            Prepárate para tu examen de ingreso al IPN con nuestro simulacro. Aquí te explicamos cómo completar el simulacro de manera óptima.
        </p>
        <div class="instructions">
            <h2>Instrucciones</h2>
            <ul>
                <li>Lee cada pregunta cuidadosamente antes de seleccionar tu respuesta.</li>
                <li>El simulacro consta de varias secciones, incluyendo Matemáticas, Física, y Habilidad Verbal.</li>
                <li>Tienes un tiempo límite para cada sección. Administra bien tu tiempo.</li>
                <li>Selecciona la respuesta que consideres correcta. No podrás regresar a preguntas anteriores.</li>
                <li>Al finalizar, revisa tu puntuación y las respuestas correctas para identificar áreas de mejora.</li>
            </ul>
        </div>
        <div class="button-container">
            <button onclick="startCountdown('simulacro1.jsp')">Iniciar Simulacro 1</button>
            <button onclick="('trabajando.jsp')">Iniciar Simulacro 2</button>
            <button onclick="('trabajando.jsp')">Iniciar Simulacro 3</button>
        </div>
    </div>

    <div class="countdown-overlay">
        <div class="countdown-circle">
            <div class="countdown-number"></div>
        </div>
    </div>

    <script>
        function startCountdown(destination) {
            const overlay = document.querySelector('.countdown-overlay');
            const numberDisplay = document.querySelector('.countdown-number');
            overlay.style.display = 'flex';
            
            let count = 3;
            numberDisplay.textContent = count;

            const countInterval = setInterval(() => {
                count--;
                if (count > 0) {
                    numberDisplay.textContent = count;
                } else if (count === 0) {
                    numberDisplay.textContent = '¡Vamos!';
                    numberDisplay.style.fontSize = '7em';
                } else {
                    clearInterval(countInterval);
                    window.location.href = destination;
                }
            }, 1000);
        }
    </script>
</body>
</html>
