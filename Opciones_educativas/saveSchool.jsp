<%@ page import="java.sql.*" %>
<%@ page import="java.text.Normalizer" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>LSA - Learn. Study. Achieve</title>
        <link rel="icon" type="image/png" href="imagenes/Savy.png">    <style>
        body {
            font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #1a2b49 0%, #2a4073 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .alert {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            padding: 20px;
            max-width: 400px;
            width: 90%;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        .alert-success {
            border-left: 5px solid #4CAF50;
        }
        .alert-error {
            border-left: 5px solid #f44336;
        }
        .alert-icon {
            font-size: 50px;
            margin-bottom: 15px;
        }
        .alert-success .alert-icon {
            color: #4CAF50;
        }
        .alert-error .alert-icon {
            color: #f44336;
        }
        .alert-message {
            font-size: 18px;
            color: #333;
            margin-bottom: 20px;
        }
        .alert-back-btn {
            display: inline-block;
            background-color: #3a86ff;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .alert-back-btn:hover {
            background-color: #0077b6;
        }
    </style>
</head>
<body>
<%
    Integer userId = (Integer) session.getAttribute("userId");
    if (userId == null) {
        response.sendRedirect("../index.html");
        return;
    }
    request.setCharacterEncoding("UTF-8");
    String schoolName = request.getParameter("school_name");
    if (schoolName != null && !schoolName.isEmpty()) {
        // Normalizar el nombre de la escuela para eliminar solo los acentos
        schoolName = Normalizer.normalize(schoolName, Normalizer.Form.NFD);
        schoolName = schoolName.replaceAll("[\\p{InCombiningDiacriticalMarks}]", "");
        String url = "jdbc:mysql://localhost:3306/LSA?useUnicode=true&characterEncoding=UTF-8";
        String user = "root";
        String password = "n0m3l0";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, password);
            // Verificar si la escuela ya existe
            String checkSql = "SELECT * FROM schools WHERE school_name = ? AND userId = ?";
            PreparedStatement checkStmt = conn.prepareStatement(checkSql);
            checkStmt.setString(1, schoolName);
            checkStmt.setInt(2, userId);
            ResultSet rs = checkStmt.executeQuery();
            if (!rs.next()) {
                String sql = "INSERT INTO schools (school_name, userId) VALUES (?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, schoolName);
                pstmt.setInt(2, userId);
                int rows = pstmt.executeUpdate();
                if (rows > 0) {
%>
                    <div class="alert alert-success">
                        <div class="alert-icon">✔</div>
                        <div class="alert-message">
                            La escuela "<%= schoolName %>" se guardó exitosamente.
                        </div>
                        <a href="opciones.jsp" class="alert-back-btn">Volver</a>
                    </div>
<%
                } else {
%>
                    <div class="alert alert-error">
                        <div class="alert-icon">✘</div>
                        <div class="alert-message">
                            Error al guardar la escuela.
                        </div>
                        <a href="opciones.jsp" class="alert-back-btn">Volver</a>
                    </div>
<%
                }
                pstmt.close();
            } else {
%>
                <div class="alert alert-error">
                    <div class="alert-icon">ⓘ</div>
                    <div class="alert-message">
                        La escuela "<%= schoolName %>" ya está guardada.
                    </div>
                    <a href="opciones.jsp" class="alert-back-btn">Volver</a>
                </div>
<%
            }
            checkStmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
%>
            <div class="alert alert-error">
                <div class="alert-icon">✘</div>
                <div class="alert-message">
                    Error al conectar con la base de datos.
                </div>
                <a href="opciones.jsp" class="alert-back-btn">Volver</a>
            </div>
<%
        }
    } else {
%>
        <div class="alert alert-error">
            <div class="alert-icon">✘</div>
            <div class="alert-message">
                Nombre de escuela no válido.
            </div>
            <a href="opciones.jsp" class="alert-back-btn">Volver</a>
        </div>
<%
    }
%>
</body>
</html>