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
    <title>Tipo de Examen de Admisión</title>
    <style>
    
body {
    font-family: 'Montserrat', sans-serif;
    margin: 0;
    padding: 40px;
    background: linear-gradient(135deg, #1a2b49 0%, #2a4073 100%);
    min-height: 100vh;
}

h1 {
    text-align: center;
    font-size: 50px;
    color: #e6f3ff;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
    margin-bottom: 40px;
}

.container {
    display: flex;
    justify-content: center;
    gap: 30px;
    flex-wrap: wrap;
    margin-top: 20px;
}

.option {
    margin: 15px;
    cursor: pointer;
    transition: all 0.4s ease;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 350px;
    height: 400px;
    border-radius: 15px;
    position: relative;
    overflow: hidden;
    
    /* White background with glass effect */
    background: #ffffff;
    backdrop-filter: blur(10px);
    -webkit-backdrop-filter: blur(10px);
    border: 1px solid rgba(255, 255, 255, 0.3);
    box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.1),
                inset 0 0 0 1px rgba(255, 255, 255, 0.5);
}

.option::before {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: linear-gradient(
        90deg,
        transparent,
        rgba(26, 43, 73, 0.05),
        transparent
    );
    transition: 0.5s;
}

.option:hover {
    transform: translateY(-10px);
    background: rgba(255, 255, 255, 0.98);
    border: 1px solid rgba(26, 43, 73, 0.2);
    box-shadow: 0 15px 45px rgba(0, 0, 0, 0.15),
                inset 0 0 0 1px rgba(255, 255, 255, 0.7);
}

.option:hover::before {
    left: 100%;
}

.option img {
    max-width: 90%;
    max-height: 90%;
    object-fit: contain;
    transition: transform 0.3s ease;
}

.option:hover img {
    transform: scale(1.05);
}

/* Add smooth scrolling */
html {
    scroll-behavior: smooth;
}

/* For mobile responsiveness */
@media (max-width: 768px) {
    body {
        padding: 20px;
    }
    
    h1 {
        font-size: 36px;
    }
    
    .option {
        width: 300px;
        height: 350px;
        margin: 10px;
    }
}
    </style>
</head>
<body>
    
    <h1>¿Qué tipo de examen de admisión deseas realizar?</h1>

    <div class="container">
        <a href="poli.jsp" class="option">
            <img src="../imagenes/IPN.jpg" alt="IPN" style="width:200px;height:270px;">
        </a>
        <a class="option" href="trabajando.jsp">
            <img src="../imagenes/unam.png" alt="UNAM">
        </a>
        <a class="option" href="trabajando.jsp">
            <img src="../imagenes/uam.png" alt="UAM">
        </a>
    </div>



</body>
</html>
