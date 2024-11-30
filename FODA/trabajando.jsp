<%-- 
    Document   : trabajando
    Created on : 29 nov. 2024, 11:30:57
    Author     : Usuario
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
 Integer userId = (Integer) session.getAttribute("userId");
    if (userId == null) {
        response.sendRedirect("../index.html");
        return;
    }
%><!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
        <title>LSA - Learn. Study. Achieve</title>
        <link rel="icon" type="image/png" href="imagenes/Savy.png">    <style>
        body {
            margin: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
        }

        .message {
            font-size: 5rem;
            color: #2d3436;
            margin-bottom: 2rem;
            text-align: center;
            animation: pulse 2s infinite;
        }

        .button {
            padding: 1rem 2rem;
            font-size: 2.8rem;
            background-color: #0984e3;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: transform 0.2s;
        }

        .button:hover {
            transform: scale(1.05);
            background-color: #0770c5;
        }

        @keyframes pulse {
            0% { opacity: 1; }
            50% { opacity: 0.7; }
            100% { opacity: 1; }
        }

        @media screen and (max-width: 768px) {
            .message {
                font-size: 4rem;
            }
            .button {
                font-size: 2.8rem;
            }
        }

        @media screen and (max-width: 480px) {
            .message {
                font-size: 3rem;
            }
            .button {
                font-size: 2.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="message">Estamos trabajando en ello...</div>
    <button class="button" onclick="history.back()">Regresar</button>
</body>
</html>