<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String jdbcURL = "jdbc:mysql://localhost:3306/LSA";
    String dbUser = "root";
    String dbPassword = "n0m3l0";
    
    Integer userId = (Integer) session.getAttribute("userId");
    if (userId == null) {
        response.sendRedirect("../index.html");
        return;
    }

    String username = "";
    String email = "";
    String password = ""; 
    String mensaje = "";
    
 if ("POST".equalsIgnoreCase(request.getMethod())) {
    String action = request.getParameter("action");
    
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
        
if ("update".equals(action)) {
    String newUsername = request.getParameter("newUsername");
    String newEmail = request.getParameter("newEmail");
    String newPassword = request.getParameter("newPassword");

    StringBuilder sql = new StringBuilder("UPDATE usuarios SET ");
    boolean needsComma = false;

    if (newUsername != null && !newUsername.trim().isEmpty()) {
        sql.append("username = ?");
        needsComma = true;
    }

    if (newEmail != null && !newEmail.trim().isEmpty()) {
        if (needsComma) sql.append(", ");
        sql.append("email = ?");
        needsComma = true;
    }

    if (newPassword != null && !newPassword.trim().isEmpty()) {
        if (needsComma) sql.append(", ");
        sql.append("password = ?");
    }

    sql.append(" WHERE id = ?");

    PreparedStatement pstmt = conn.prepareStatement(sql.toString());

    int parameterIndex = 1;
    if (newUsername != null && !newUsername.trim().isEmpty()) {
        pstmt.setString(parameterIndex++, newUsername);
    }
    if (newEmail != null && !newEmail.trim().isEmpty()) {
        pstmt.setString(parameterIndex++, newEmail);
    }
    if (newPassword != null && !newPassword.trim().isEmpty()) {
        pstmt.setString(parameterIndex++, newPassword);
    }
    pstmt.setInt(parameterIndex, userId);

    pstmt.executeUpdate();
    mensaje = "Datos actualizados correctamente";
} else if ("delete".equals(action)) {
            PreparedStatement pstmt = conn.prepareStatement("DELETE FROM usuarios WHERE id = ?");
            pstmt.setInt(1, userId);
            pstmt.executeUpdate();
            session.invalidate();
            response.sendRedirect("success.html");
            return;
            
        } else if ("logout".equals(action)) {
            session.invalidate();
            response.sendRedirect("success.html");
            return;
        }
        
        PreparedStatement pstmt = conn.prepareStatement("SELECT username, email, password FROM usuarios WHERE id = ?");
        pstmt.setInt(1, userId);
        ResultSet rs = pstmt.executeQuery();
        
        if (rs.next()) {
            username = rs.getString("username");
            email = rs.getString("email");
            password = rs.getString("password");
        }
        
        rs.close();
        pstmt.close();
        conn.close();
        
    } catch (SQLException e) {
        if (e.getErrorCode() == 1062) {
            mensaje = "Error: El nombre de usuario o email ya está en uso";
        } else {
            mensaje = "Error en la base de datos: " + e.getMessage();
        }
    } catch (Exception e) {
        mensaje = "Error: " + e.getMessage();
    }
} else {
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
        PreparedStatement pstmt = conn.prepareStatement("SELECT username, email, password FROM usuarios WHERE id = ?");
        pstmt.setInt(1, userId);
        ResultSet rs = pstmt.executeQuery();
        
        if (rs.next()) {
            username = rs.getString("username");
            email = rs.getString("email");
            password = rs.getString("password");
        }
        
        rs.close();
        pstmt.close();
        conn.close();
    } catch (Exception e) {
        mensaje = "Error: " + e.getMessage();
    }
}
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LSA - Learn. Study. Achieve</title>
    <link rel="icon" type="image/png" href="../imagenes/Savy.png">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet">
 
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>


    <style>
        body {
font-family: 'Montserrat', sans-serif;
            background: linear-gradient(135deg, #0a1a36 0%, #1d2d50 100%);
            min-height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            background-color: white;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
            display: flex;
            width: 90%;
            max-width: 1400px;
            overflow: hidden;
            position: relative;
        }

        .user-info {
            background: linear-gradient(135deg, #405b80 0%, #2a3d66 100%);
            color: white;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            padding: 50px 30px;
            width: 35%;
            position: relative;
            min-height: 600px;
        }

        .user-image {
            width: 180px;
            height: 180px;
            border-radius: 50%;
            border: 5px solid rgba(255, 255, 255, 0.3);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            margin-bottom: 25px;
            transition: transform 0.3s;
        }

        .user-image:hover {
            transform: scale(1.05);
        }

        .user-name {
            font-size: 32px;
            font-weight: 600;
            margin-bottom: 10px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        }

        .user-greeting {
            font-size: 22px;
            opacity: 0.9;
            margin-bottom: 30px;
        }

        .account-options {
            padding: 40px;
            width: 65%;
            background: #ffffff;
        }

        .option-container {
            background: #f8f9fa;
            border-radius: 15px;
            padding: 20px 25px;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            cursor: pointer;
            transition: all 0.3s ease;
            border: 1px solid #e9ecef;
        }

        .option-container:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            background: #ffffff;
            border-color: #3a86ff;
        }

     
.option-icon {
    font-size: 40px;
    margin-right: 25px;
    color: #1d2d50; /* Azul oscuro */
    transition: transform 0.3s;
}

        .option-container:hover .option-icon {
            transform: scale(1.1);
        }

    .option-title {
    font-size: 24px;
    font-weight: 600;
    color: #1d2d50; /* Azul oscuro */
    margin: 0 0 5px 0;
}
        .option-description {
            font-size: 16px;
            color: #6c757d;
            margin: 0;
        }

        .user-data {
            padding: 30px;
            display: none;
            animation: fadeIn 0.3s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .form-group {
            margin-bottom: 25px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: white;
            font-size: 16px;
        }

        .form-group input {
            width: 100%;
            padding: 12px;
            border: 2px solid rgba(255, 255, 255, 0.2);
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.1);
            color: white;
            font-size: 16px;
            transition: all 0.3s;
        }

        .form-group input:focus {
            outline: none;
            border-color: white;
            background: rgba(255, 255, 255, 0.2);
        }

        .form-group p {
            color: white;
            font-size: 16px;
            margin: 8px 0;
            padding: 8px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 8px;
        }

        .button-container {
            display: flex;
            gap: 15px;
            justify-content: center;
            margin-top: 30px;
        }

 .btn-submit {
    background: white;
    color: #1d2d50; /* Azul oscuro */
    border: none;
    padding: 12px 30px;
    border-radius: 8px;
    font-weight: 600;
    font-size: 16px;
    cursor: pointer;
    transition: all 0.3s;
    text-transform: uppercase;
    letter-spacing: 1px;
}

        .btn-submit:hover {
            background: rgba(255, 255, 255, 0.9);
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            z-index: 1000;
            animation: fadeIn 0.3s ease;
        }

        .modal-content {
            background: white;
            margin: 15% auto;
            padding: 30px;
            border-radius: 15px;
            width: 90%;
            max-width: 500px;
            position: relative;
            animation: slideIn 0.3s ease;
        }

        @keyframes slideIn {
            from { transform: translateY(-50px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

    .mensaje {
    background: #d4edda;
    color: #155724;
    padding: 15px;
    margin-bottom: 25px;
    border-radius: 8px;
    border-left: 4px solid #1d2d50; /* Azul oscuro */
    display: none;
    animation: slideIn 0.3s ease;
}

        @media (max-width: 992px) {
            .container {
                flex-direction: column;
                width: 95%;
                margin: 20px 0;
            }

            .user-info {
                width: 100%;
                min-height: auto;
                padding: 40px 20px;
            }

            .account-options {
                width: 100%;
                padding: 30px 20px;
            }

            .user-image {
                width: 150px;
                height: 150px;
            }
        }

        @media (max-width: 576px) {
            .user-name {
                font-size: 26px;
            }

            .user-greeting {
                font-size: 18px;
            }

            .option-container {
                padding: 15px;
            }

            .option-icon {
                font-size: 30px;
                margin-right: 15px;
            }

            .option-title {
                font-size: 20px;
            }

            .option-description {
                font-size: 14px;
            }

            .button-container {
                flex-direction: column;
            }

            .btn-submit {
                width: 100%;
            }
        }
        .option-container i {
    font-size: 48px; /* Ajusta el tamaño del icono a tu preferencia */
    margin-right: 25px; /* Espacio entre el icono y el texto */
    color: #405b80; /* Color del icono */
    transition: transform 0.3s ease;
}

.option-container:hover i {
    transform: scale(1.1); /* Efecto de agrandar el icono al pasar el cursor */
}

    </style>
</head>
<body>
    <div class="container">
        <div class="user-info">
            <div id="userImage">
                <img src="../imagenes/Savy.png" alt="Foto de usuario" class="user-image">
                <h2 class="user-name">¡Hola, <%= username %>!</h2>
                <p class="user-greeting">Bienvenido a tu perfil</p>
            </div>

            <div id="userData" class="user-data">
                <h2>Tus Datos Personales</h2>
                <div class="form-group">
                    <label>Usuario:</label>
                    <p><%= username %></p>
                </div>
                <div class="form-group">
                    <label>Email:</label>
                    <p><%= email %></p>
                </div>
<div class="form-group">
                <label>Contraseña:</label>
                <div class="password-container" style="position: relative; display: flex; align-items: center;">
                    <p id="currentPassword" style="margin: 0;">
                        <span id="passwordText">********</span>
                        <span id="actualPassword" style="display: none;"><%= password %></span>
                    </p>
                    <button type="button" 
                            onclick="toggleCurrentPassword()" 
                            style="margin-left: 10px; background: none; border: none; cursor: pointer;">
                        <svg xmlns="http://www.w3.org/2000/svg" 
                             width="20" 
                             height="20" 
                             viewBox="0 0 24 24" 
                             fill="none" 
                             stroke="currentColor" 
                             stroke-width="2" 
                             stroke-linecap="round" 
                             stroke-linejoin="round" 
                             id="currentEyeIcon">
                            <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
                            <circle cx="12" cy="12" r="3"></circle>
                            <line x1="1" y1="1" x2="23" y2="23" class="current-eye-slash" style="display: none;"></line>
                        </svg>
                    </button>
                </div>
            </div>
                <button class="btn-submit" onclick="showSection('userImage')">Volver</button>
            </div>

            <div id="updateForm" class="user-data">
                <h2>Actualizar Datos</h2>
                <form method="POST" onsubmit="return validateForm()">
                    <input type="hidden" name="action" value="update">
                    <div class="form-group">
                        <label>Nuevo Usuario:</label>
                        <input type="text" name="newUsername" value="<%= username %>"  minlength="2" maxlength="8" required >
                    </div>
                    <div class="form-group">
                        <label>Nuevo Email:</label>
                        <input type="email" name="newEmail" value="<%= email %>"  minlength="6" maxlength="120" 
                               pattern="[a-z0-9._%+\-]+@(gmail\.com|yahoo\.com|outlook\.com|hotmail\.com)" 
                               title="Por favor, ingresa un correo electrónico válido. Ejemplo: usuario@gmail.com" required >
                    </div>
<div class="form-group">
    <label for="newPassword">Nueva Contraseña:</label>
    <div class="password-container" style="position: relative; display: flex; align-items: center;">
        <input type="password" id="newPassword" name="newPassword" value="" style="width: 100%; padding-right: 30px;" minlength="8" maxlength="16"pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="La contraseña debe de tener entre 8 y 16 caracteres, 
                               una mayuscula, una minuscula y un número"
                               required>
        <button type="button" 
                onclick="togglePassword('newPassword', 'newPasswordEyeIcon') "
                style="position: absolute; right: 10px; background: none; border: none; cursor: pointer;">
            <svg xmlns="http://www.w3.org/2000/svg" 
                 width="20" 
                 height="20" 
                 viewBox="0 0 24 24" 
                 fill="none" 
                 stroke="currentColor" 
                 stroke-width="2" 
                 stroke-linecap="round" 
                 stroke-linejoin="round" 
                 id="newPasswordEyeIcon">
                <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
                <circle cx="12" cy="12" r="3"></circle>
                <line x1="1" y1="1" x2="23" y2="23" style="display: none;"></line>
            </svg>
        </button>
    </div>
</div>

                    <div class="button-container">
                        <button type="submit" class="btn-submit">Guardar</button>
                        <button type="button" class="btn-submit" onclick="showSection('userImage')">Cancelar</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="account-options">
            <% if (!mensaje.isEmpty()) { %>
                <div class="mensaje" style="display: block;"><%= mensaje %></div>
            <% } %>
            
            <div class="option-container" onclick="showSection('userData')">
              <i class="fa-solid fa-folder-open"></i>
                <div>
                    <h3 class="option-title">Datos Personales</h3>
                    <p class="option-description">Revisa tus datos personales.</p>
                </div>
            </div>

            <div class="option-container" onclick="showSection('updateForm')">
<i class="fa-solid fa-key"></i>                <div>
                    <h3 class="option-title">Cambiar Datos</h3>
                    <p class="option-description">Modifica tu nombre de usuario, correo y contraseña.</p>
                </div>
            </div>

            <div class="option-container" onclick="showDeleteModal()">
<i class="fa-solid fa-trash"></i>                <div>
                    <h3 class="option-title">Borrar Cuenta</h3>
                    <p class="option-description">Elimina tu cuenta permanentemente y todos tus datos.</p>
                </div>
            </div>

            <div class="option-container" onclick="logout()">
<i class="fa-solid fa-arrow-right"></i>                <div>
                    <h3 class="option-title">Cerrar Sesión</h3>
                    <p class="option-description">Finaliza tu sesión y sal de tu cuenta.</p>
                </div>
            </div>
        </div>
    </div>

    <div id="deleteModal" class="modal">
        <div class="modal-content">
            <h2>¿Estás seguro?</h2>
            <p>Esta acción eliminará permanentemente tu cuenta y todos tus datos. Esta acción no se puede deshacer.</p>
            <div class="button-container">
                <form method="POST">
                    <input type="hidden" name="action" value="delete">
                    <button type="submit" class="btn-submit">Sí, eliminar cuenta</button>
                </form>
                <button class="btn-submit" onclick="closeDeleteModal()">Cancelar</button>
            </div>
        </div>
    </div>
            <script>
function toggleCurrentPassword() {
    const passwordText = document.getElementById('passwordText');
    const actualPassword = document.getElementById('actualPassword');
    const eyeIcon = document.querySelector('#currentEyeIcon .current-eye-slash');
    
    if (passwordText.style.display !== 'none') {
        passwordText.style.display = 'none';
        actualPassword.style.display = 'inline';
        eyeIcon.style.display = 'block';
    } else {
        passwordText.style.display = 'inline';
        actualPassword.style.display = 'none';
        eyeIcon.style.display = 'none';
    }
}
</script>
<script>
function togglePassword(inputId, iconId) {
    const passwordInput = document.getElementById(inputId);
    const eyeIcon = document.getElementById(iconId);
    
    if (passwordInput.type === "password") {
        passwordInput.type = "text";
    } else {
        passwordInput.type = "password";
    }
}
</script>

    <script>
        function showSection(sectionId) {
            // Ocultar todas las secciones
            document.getElementById('userImage').style.display = 'none';
            document.getElementById('userData').style.display = 'none';
            document.getElementById('updateForm').style.display = 'none';
            
            document.getElementById(sectionId).style.display = 'block';
        }

        function showDeleteModal() {
            document.getElementById('deleteModal').style.display = 'block';
        }

        function closeDeleteModal() {
            document.getElementById('deleteModal').style.display = 'none';
        }

        function logout() {
            const form = document.createElement('form');
            form.method = 'POST';
            form.action = 'gestion.jsp';
            
            const input = document.createElement('input');
            input.type = 'hidden';
            input.name = 'action';
            input.value = 'logout';
            
            form.appendChild(input);
            document.body.appendChild(form);
            form.submit();
        }

        function validateForm() {
            const newUsername = document.querySelector('input[name="newUsername"]').value.trim();
            const newEmail = document.querySelector('input[name="newEmail"]').value.trim();
            const newPassword = document.querySelector('input[name="newPassword"]').value.trim();

            if (!newUsername && !newEmail && !newPassword) {
                alert('Por favor, modifica al menos un campo para actualizar.');
                return false;
            }

            if (newEmail && !isValidEmail(newEmail)) {
                alert('Por favor, ingresa un email válido.');
                return false;
            }

            if (newUsername && (newUsername.length < 3 || newUsername.length > 50)) {
                alert('El nombre de usuario debe tener entre 3 y 50 caracteres.');
                return false;
            }

            if (newPassword && newPassword.length < 6) {
                alert('La contraseña debe tener al menos 6 caracteres.');
                return false;
            }

            return true;
        }

        function isValidEmail(email) {
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return emailRegex.test(email);
        }

        function hideMensaje() {
            const mensaje = document.querySelector('.mensaje');
            if (mensaje && mensaje.style.display === 'block') {
                setTimeout(() => {
                    mensaje.style.opacity = '0';
                    setTimeout(() => {
                        mensaje.style.display = 'none';
                        mensaje.style.opacity = '1';
                    }, 500);
                }, 3000);
            }
        }

        window.onclick = function(event) {
            const modal = document.getElementById('deleteModal');
            if (event.target === modal) {
                closeDeleteModal();
            }
        }

        document.addEventListener('DOMContentLoaded', function() {
            hideMensaje();

            const buttons = document.querySelectorAll('.btn-submit');
            buttons.forEach(button => {
                button.addEventListener('mouseover', function() {
                    this.style.transform = 'scale(1.05)';
                });
                button.addEventListener('mouseout', function() {
                    this.style.transform = 'scale(1)';
                });
            });

            const inputs = document.querySelectorAll('input[type="text"], input[type="email"], input[type="password"]');
            inputs.forEach(input => {
                input.addEventListener('keypress', function(e) {
                    if (e.key === 'Enter') {
                        e.preventDefault();
                    }
                });
            });
        });
    </script>
</body>
</html>