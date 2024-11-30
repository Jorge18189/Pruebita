<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.servlet.*" %>

<%
    String usernameActual = request.getParameter("username");
    String nuevoUsername = request.getParameter("nuevo_username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    if (usernameActual == null || usernameActual.isEmpty() || nuevoUsername == null || nuevoUsername.isEmpty() ||
        email == null || email.isEmpty() || password == null || password.isEmpty()) {
        out.println("Todos los campos son requeridos.");
        return;
    }

    String url = "jdbc:mysql://localhost:3306/LSA";
    String dbUsername = "root";
    String dbPassword = "n0m3l0";

    Connection con = null;
    PreparedStatement ps = null;
    boolean cambiosGuardados = false;

    try {
        con = DriverManager.getConnection(url, dbUsername, dbPassword);

        String sqlCheck = "SELECT * FROM usuarios WHERE username = ?";
        ps = con.prepareStatement(sqlCheck);
        ps.setString(1, usernameActual);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            String sqlUpdate = "UPDATE usuarios SET username = ?, email = ?, password = ? WHERE username = ?";
            ps = con.prepareStatement(sqlUpdate);
            ps.setString(1, nuevoUsername);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, usernameActual);

            int filasAfectadas = ps.executeUpdate();

            if (filasAfectadas > 0) {
                cambiosGuardados = true;
                out.println("Los cambios fueron guardados con éxito.");
            } else {
                out.println("Error al actualizar los datos.");
            }
        } else {
            out.println("No se encontró el usuario especificado.");
        }
    } catch (SQLException e) {
        e.printStackTrace();
        out.println("Error al realizar la actualización: " + e.getMessage());
    } finally {
        // Cerrar los recursos
        try {
            if (ps != null) ps.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
