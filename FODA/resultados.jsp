<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    Integer userId = (session != null) ? (Integer) session.getAttribute("userId") : null;

    if (userId == null) {
        response.sendRedirect("login.jsp");
    } else {
    }
%>
<%@ page import="javax.servlet.http.HttpSession, java.sql.*" %>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>LSA - Learn. Study. Achieve</title>
        <link rel="icon" type="image/png" href="imagenes/Savy.png">    <style>
    body {
    font-family: 'Montserrat', sans-serif;
    margin: 0;
    padding: 0;
    background: linear-gradient(135deg, #1a2b49 0%, #2a4073 100%);
    color: #E0E1DD;
    line-height: 1.8;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

header {
    text-align: center;
    padding: 20px 0;
    background: #1B263B;
    color: #F8F9FA;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
    margin-bottom: 20px;
}

header h1 {
    margin: 0;
    font-size: 3rem; /* Incremento del tamaño de la fuente */
    color: #A8DADC;
}

section {
    max-width: 1200px; /* Hacer más ancho el contenedor */
    margin: auto;
    padding: 40px; /* Incremento del padding */
    background: #27374A;
    border-radius: 16px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
    animation: fade-in 0.6s ease-in-out;
}

@keyframes fade-in {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

h2 {
    font-size: 2.2rem; /* Incremento del tamaño de la fuente */
    color: #A8DADC;
    margin-bottom: 20px;
}

p {
    font-size: 1.3rem; /* Incremento del tamaño de la fuente */
    margin-bottom: 20px;
    color: #F1FAEE;
}

a {
    display: inline-block;
    text-align: center;
    margin-top: 20px;
    text-decoration: none;
    font-weight: bold;
    font-size: 1.2rem; /* Incremento del tamaño de la fuente */
    color: #1B263B;
    background-color: #A8DADC;
    border-radius: 8px;
    padding: 14px 30px; /* Incremento del padding */
    transition: all 0.3s ease;
}

a:hover {
    background: #0D1B2A;
    color: #A8DADC;
    border: 2px solid #A8DADC;
}

.result-item {
    margin-bottom: 20px;
    padding: 20px; /* Incremento del padding */
    background: #1B263B;
    border-radius: 12px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.result-item:hover {
    transform: translateY(-5px);
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
}

    </style>
</head>
<body>
    <header>
        <h1>Resultados del Cuestionario</h1>
    </header>

    <section>
        <%
            // Validación de sesión
            if (session == null || session.getAttribute("userId") == null) {
                response.sendRedirect("login.jsp");
                return;
            }

            // Obtención de datos del cuestionario
            String fortaleza = request.getParameter("fortalezas-1");
            String oportunidadPrincipal = request.getParameter("oportunidad-principal");
            String frecuenciaUso = request.getParameter("frecuencia-uso");
            String debilidad = request.getParameter("debilidades-1");
            String aptitudPrincipal = request.getParameter("aptitud-principal");
            String frecuenciaAptitud = request.getParameter("frecuencia-aptitud");

            // Mensajes del cuestionario
            String fortalezaMensaje = "";
            switch (fortaleza) {
                case "A": fortalezaMensaje = "Tu perseverancia y creatividad te hacen destacar. "; break;
                case "B": fortalezaMensaje = "Tu capacidad de liderar e inspirar a otros es única. "; break;
                case "C": fortalezaMensaje = "Eres una persona responsable que trabaja bien en equipo. "; break;
                case "D": fortalezaMensaje = "Tu adaptabilidad y pensamiento crítico son impresionantes. "; break;
                default: fortalezaMensaje = "Tus fortalezas reflejan tu autenticidad y potencial. "; break;
            }

            String oportunidadMensaje = "En cuanto a tus oportunidades, ";
            if (oportunidadPrincipal != null) {
                oportunidadMensaje += "tu principal oportunidad es " + oportunidadPrincipal + ". ";
            } else {
                oportunidadMensaje += "aún estás explorando nuevas oportunidades. ";
            }

            if ("A menudo".equals(frecuenciaUso)) {
                oportunidadMensaje += "Es excelente que ya estés aprovechándola frecuentemente.";
            } else if ("A veces".equals(frecuenciaUso)) {
                oportunidadMensaje += "Te animo a aprovechar más esta oportunidad.";
            } else {
                oportunidadMensaje += "¡Es un buen momento para empezar a aprovechar las oportunidades que tienes!";
            }

            String debilidadMensaje = "";
            switch (debilidad) {
                case "A": debilidadMensaje = "Aunque la procrastinación y la falta de organización pueden ser desafíos, es genial que ya los reconozcas. "; break;
                case "B": debilidadMensaje = "Trabajar en tu confianza personal y superar el miedo al fracaso será clave para tu éxito. "; break;
                case "C": debilidadMensaje = "El manejo del estrés puede mejorar con cada paso que tomes. "; break;
                case "D": debilidadMensaje = "El desarrollo de habilidades técnicas requiere tiempo, pero lo lograrás. "; break;
                default: debilidadMensaje = "Reconocer tus debilidades es el primer paso para crecer. "; break;
            }

            String aptitudMensaje = "En cuanto a tus aptitudes, tu principal habilidad es " + (aptitudPrincipal != null ? aptitudPrincipal : "aún por descubrir") + ". ";
            if ("A menudo".equals(frecuenciaAptitud)) {
                aptitudMensaje += "Es fantástico que la utilices frecuentemente, lo que demuestra tu compromiso con tu crecimiento.";
            } else if ("A veces".equals(frecuenciaAptitud)) {
                aptitudMensaje += "La usas de vez en cuando, pero puedes integrarla más en tu vida diaria.";
            } else {
                aptitudMensaje += "Es importante que te enfoques en desarrollarla más en el futuro cercano.";
            }

            // Combinar el mensaje general
            String mensajeGeneral = fortalezaMensaje + oportunidadMensaje + debilidadMensaje + aptitudMensaje;

            // Obtener el userId de la sesión

            // Conexión a la base de datos
            Connection conn = null;
            PreparedStatement stmt = null;
            String jdbcUrl = "jdbc:mysql://localhost:3306/LSA";  // Cambia si es necesario
            String dbUser  = "root";  // Cambia con el usuario correcto
            String dbPassword = "n0m3l0";  // Cambia con la contraseña correcta

            try {
                // Establecer conexión a la base de datos
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(jdbcUrl, dbUser , dbPassword);

                // Insertar el mensaje en la tabla resultados_mensaje
                String query = "INSERT INTO resultados_mensaje (userId, mensaje_resumen, fecha) VALUES (?, ?, NOW())";
                stmt = conn.prepareStatement(query);

                // Insertar el userId y el mensaje
                stmt.setInt(1, userId);
                stmt.setString(2, mensajeGeneral);

                // Ejecutar la inserción
                stmt.executeUpdate();
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    if (stmt != null) stmt.close();
                    if (conn != null) conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

            // Mostrar el mensaje general
            out.print("<div class='result-item'>" + mensajeGeneral + "</div>");
        %>

        <a href="../pagina_principal/principal.jsp">Volver al Inicio</a>
    </section>
</body>
</html>