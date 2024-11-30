<%-- 
    Document   : softskilld
    Created on : 19 nov. 2024, 21:15:16
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
        <link rel="icon" type="image/png" href="../imagenes/Savy.png">    
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&amp;display=swap" rel="stylesheet">

</head>
<style type="text/css">
    * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: 'Montserrat', sans-serif;
    background: linear-gradient(135deg, #1a2b49 0%, #2a4073 100%);
    color: #f5f5f5;
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;  /* Asegura que el contenido se centre en la pantalla */
    padding: 40px;
    flex-direction: column;
}

h1 {
    font-size: 3em;
    font-weight: 700;
    color: #e6f3ff;
    letter-spacing: 1.5px;
    margin-bottom: 20px;
    text-align: center;
}

.content {
    max-width: 1100px;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: flex-start;
    margin-bottom: 40px;
    gap: 30px;
    flex-wrap: wrap;
    padding: 30px;
    background: #1c2637; /* Fondo oscuro con un toque suave */
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.text-section {
    flex: 1;
    padding-right: 30px;
    color: #e0e0e0;
    font-size: 1.1em;
    line-height: 1.6;
    text-align: justify;
    margin-bottom: 20px;
}

.text-section h2 {
    font-size: 1.8em;
    font-weight: 600;
    margin-bottom: 15px;
    color: #f5f5f5;
}

.foda-image {
    max-width: 300px;
    width: 100%;
    height: auto;
    border-radius: 16px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
    transition: transform 0.3s ease;
}


.definition {
    font-size: 1.1em;
    line-height: 1.8;
    color: #b8c1c8;
    margin-bottom: 20px;
}

.button-container {
    display: flex;
    justify-content: center;  /* Centra los botones horizontalmente */
    align-items: center;      /* Centra los botones verticalmente */
    width: 100%;
    margin-top: 30px;
    gap: 20px;                /* Espacio entre los botones */
    flex-wrap: wrap;          /* Asegura que los botones no se desborden */
}

button {
    padding: 18px 36px;
    font-family: 'Montserrat', sans-serif;
    border: none;
    border-radius: 12px;
    background: linear-gradient(145deg, #1e3c72, #2a5298); /* Gradiente azul */
    color: white;
    cursor: pointer;
    font-size: 1.2em;
    font-weight: 600;
    transition: background 0.3s ease, transform 0.2s ease, box-shadow 0.3s ease;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
    text-transform: uppercase;
}

button:hover {
    background: linear-gradient(145deg, #2a5298, #1e3c72); /* Cambio de gradiente al pasar el ratón */
    box-shadow: 0 12px 30px rgba(0, 0, 0, 0.3);
}

button:active {
    transform: translateY(3px);
    box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
}

/* Ajustes adicionales para pantallas pequeñas */
@media (max-width: 768px) {
    .content {
        flex-direction: column;
        text-align: center;
    }
    
    .text-section {
        padding-right: 0;
    }

    h1 {
        font-size: 2.5em;
    }

    button {
        font-size: 1.1em;
    }

    .button-container {
        flex-direction: column;
    }
}

    
</style><div id="relaxer" style="
            transition: opacity 0.1s ease 0s; 
            z-index: 2147483647;
            margin: 0; 
            border-radius: 0; 
            padding: 0; 
            background: #fac563; 
            pointer-events: none; 
            position: fixed; 
            top: -10%; 
            right: -10%; 
            width: 120%; 
            height: 120%; 
            opacity: 0.3200;
            mix-blend-mode: multiply; 
            display: block;
        "></div>
<body class="__fb-dark-mode">
    <div class="container">
        <h1>Análisis softskills</h1>
        <div class="content">
            <div class="text-section">
                <p class="definition">
                    El análisis FODA es una herramienta estratégica que permite identificar las Fortalezas, Oportunidades, Debilidades y Amenazas de una organización o proyecto. A través de este análisis, se pueden formular estrategias que aprovechen las oportunidades y fortalezas, al mismo tiempo que se mitigan las debilidades y amenazas.
                </p>
            </div>
            <img src="../imagenes/savy22.png" alt="Análisis FODA" class="foda-image">
        </div>
        <button onclick="location.href='bienvenida.jsp'">Iniciar FODA</button>
        <button onclick="location.href='trabajando.jsp'">Test de Aptitudes e Intereses</button>
    </div>
    


</body></html>
