<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.text.DecimalFormat" %>

<%
    Integer userId = (Integer) session.getAttribute("userId");
    if (userId == null) {
        response.sendRedirect("../index.html");
        return;
    }

    Connection conn = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    String mensajeResumen = "";

    double promedio = 0.0;
    int testsCompletados = 0;
    int mejorScore = 0;
    StringBuilder scoresArray = new StringBuilder("[");
    StringBuilder labelsArray = new StringBuilder("[");

    List<String> savedSchools = new ArrayList<>();

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");

        conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/LSA",
                "root",
                "n0m3l0"
        );

        String statsQuery = "SELECT COUNT(*) as total_tests, "
                + "AVG(score) as promedio, "
                + "MAX(score) as mejor_score "
                + "FROM resultados WHERE userId = ?";
        pst = conn.prepareStatement(statsQuery);
        pst.setInt(1, userId);
        rs = pst.executeQuery();

        if (rs.next()) {
            testsCompletados = rs.getInt("total_tests");
            promedio = rs.getDouble("promedio");
            mejorScore = rs.getInt("mejor_score");
        }
        String query = "SELECT score FROM resultados WHERE userId = ? ORDER BY fecha ASC";
        pst = conn.prepareStatement(query);
        pst.setInt(1, userId);
        rs = pst.executeQuery();

        int testNumber = 1;
        boolean first = true;

        while (rs.next()) {
            if (!first) {
                scoresArray.append(",");
                labelsArray.append(",");
            }
            scoresArray.append(rs.getInt("score"));
            labelsArray.append("'Test ").append(testNumber).append("'");
            first = false;
            testNumber++;
        }

        String messageQuery = "SELECT mensaje_resumen FROM resultados_mensaje WHERE userId = ? ORDER BY fecha DESC LIMIT 1";
        pst = conn.prepareStatement(messageQuery);
        pst.setInt(1, userId);
        rs = pst.executeQuery();
        if (rs.next()) {
            mensajeResumen = rs.getString("mensaje_resumen");
        }

        String schoolsQuery = "SELECT school_name FROM schools WHERE userId = ? ORDER BY id DESC";
        pst = conn.prepareStatement(schoolsQuery);
        pst.setInt(1, userId);
        rs = pst.executeQuery();
        while (rs.next()) {
            savedSchools.add(rs.getString("school_name"));
        }

        scoresArray.append("]");
        labelsArray.append("]");

        double siguienteMeta = Math.min(100, Math.ceil(promedio + 5));

        promedio = (promedio / 145.0) * 100;
        double porcentajeMejorScore = (mejorScore / 145.0) * 100;
%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">        <title>LSA - Learn. Study. Achieve</title>
        <link rel="icon" type="image/png" href="../imagenes/Savy.png">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="principal.css">
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.0/gsap.min.js"></script>
    </head>
    <style>
/* Ajuste base */
main {
    width: 100%;
    padding: 10px;
    box-sizing: border-box;
}

.contenido-principal {
    width: 100%;
    max-width: 1500px;
    margin: 0 auto;
    padding: 0 15px;
    box-sizing: border-box;
}

/* Ajustes responsive */
@media screen and (max-width: 768px) {
    .services {
        display: grid;
        grid-template-columns: 3fr;
        gap: 20px;
        width: 100%;
    }

    .results-panel,
    .additional-results {
        width: 100%;
        margin: 20px 0;
    }

    .stats-grid {
        grid-template-columns: 1fr 1fr;
    }
}

@media screen and (max-width: 480px) {
    .stats-grid {
        grid-template-columns: 1fr;
    }
}
</style>
<style>
.stats-grid {
    display: grid;
    gap: 20px;
    width: 100%;
    grid-template-columns: repeat(2, 1fr);
}

.stat-card {
    padding: 20px;
    text-align: center;
    border-radius: 10px;
    background: rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(10px);
}

@media screen and (max-width: 768px) {
    .stats-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 15px;
        padding: 0 10px;
    }
    
    .stat-card {
        padding: 15px;
    }
}

@media screen and (max-width: 480px) {
    .stats-grid {
        gap: 10px;
    }
}
</style>
    <body>
        <header class="glass">
            <button class="hamburger" aria-label="Menu">
                <span></span>
                <span></span>
                <span></span>
            </button>
            <div class="brand-text">LSA</div>
        </header>

        <nav class="sidebar-menu" id="sidebarMenu">
            <div class="menu-header">
                <br>
                <br>
                <h2>Bienvenido</h2>
            </div>
            <hr>
            <div class="menu-items">
                <a href="../Opciones_educativas/opciones.jsp" class="menu-link">Opciones Educativas</a>
                <a href="../Simuladores/simulador.jsp" class="menu-link">Simuladores</a>
                <a href="../FODA/softskills.jsp" class="menu-link">Tests (Softskills/FODA)</a>
                <a href="#" class="menu-link">Juegos</a>
                <a href="#" class="menu-link">Mentor Virtual</a>
            </div>
            <hr>
            <div class="menu-settings">
                <a href="../Usuario_info/gestion.jsp" class="menu-link">Gestionar Cuenta</a>
                <br>
                <br>
                <br>
                <a href="success.html" class="menu-link logout">Cerrar Sesión</a>
            </div>
        </nav>
        <div class="overlay" id="overlay"></div>
        
        <main>
            <div class="contenido-principal">

            <aside class="results-panel">
                <h2>Tus Resultados</h2>
                <br>
                <div class="chart-container glass">
                    <canvas id="progressChart"></canvas>
                </div>
                <div class="stats-grid">
                    <div class="stat-card glass">
                        <h3>Promedio</h3>
                        <p class="stat-value"><%= new DecimalFormat("#.##").format(promedio)%>%</p>
                    </div>
                    <div class="stat-card glass">
                        <h3>Tests Completados</h3>
                        <p class="stat-value"><%= testsCompletados%></p>
                    </div>
                    <div class="stat-card glass">
                        <h3>Mayor numero de aciertos</h3>
                        <p class="stat-value"><%= mejorScore%></p>
                    </div>
                    <div class="stat-card glass">
                        <h3>Siguiente Meta</h3>
                        <p class="stat-value"><%= siguienteMeta%>%</p>
                    </div>
                </div>
            </aside>

            <div class="services">
                <div class="service glass">
                    <a href="../Opciones_educativas/opciones.jsp">
                        <img src="../imagenes/escuela2.png" alt="Opciones Educativas">
                        <h2>Opciones Educativas</h2>
                        <p>Descubre tu camino académico ideal</p>
                    </a>
                </div>
                <div class="service glass">
                    <a href="../Simuladores/simulador.jsp">
                        <img src="../imagenes/simu.png" alt="Simuladores">
                        <h2>Simuladores</h2>
                        <p>Practica con casos reales</p>
                    </a>
                </div>
                <div class="service glass">
                    <a href="../FODA/softskills.jsp">
                        <img src="../imagenes/foda.png" alt="Tests">
                        <h2>Tests</h2>
                        <p>Evalúa tus habilidades blandas</p>
                    </a>
                </div>
                <div class="service glass">
                    <a href="#">
                        <img src="../imagenes/juegos2.png" alt="Juegos">
                        <h2>Juegos</h2>
                        <p>Aprende mientras te diviertes</p>
                    </a>
                </div>
                <div class="service glass">
                    <a href="#">
                        <img src="../imagenes/ai.png" alt="Mentor Virtual">
                        <h2>Mentor Virtual</h2>
                        <p>Tu guía personalizado 24/7</p>
                    </a>
                </div>
                <div class="service glass">
                    <a href="#">
                        <img src="../imagenes/tuerca.png" alt="Opciones Educativas">
                        <h2>Desafios Semanales</h2>
                        <p>Tu guía personalizado 24/7</p>
                    </a>
                </div>
            </div>

            <div class="additional-results"> 
                <div class="additional-result-card glass"> 
                    <h2>Resultados FODA</h2> 
                    <div class="result-content"> 
                        <p>Análisis de fortalezas, oportunidades, debilidades y amenazas</p>
                        <div class="result-stats"> 
                            <p><%= mensajeResumen%></p> 
                        </div> 
                    </div>
                </div>
                <div class="additional-result-card glass">
                    <h2>Escuelas Guardadas</h2>
                    <% if (savedSchools.isEmpty()) { %>
                    <p>No has guardado ninguna escuela.</p>
                    <% } else { %>
                    <ul class="school-list">
                        <% for (String school : savedSchools) {%>
                        <li><%= school%></li>
                            <% } %>
                    </ul>
                    <% }%>
                </div>
            </div>
        </div>
    </main>



    <script>
const hamburger = document.querySelector('.hamburger');
const sidebarMenu = document.getElementById('sidebarMenu');
const overlay = document.getElementById('overlay');
const body = document.body;

hamburger.addEventListener('click', () => {
    const isActive = sidebarMenu.classList.toggle('show');
    overlay.classList.toggle('show', isActive);
    body.classList.toggle('sidebar-active', isActive);
});

overlay.addEventListener('click', () => {
    sidebarMenu.classList.remove('show');
    overlay.classList.remove('show');
    body.classList.remove('sidebar-active');
});

const menuLinks = document.querySelectorAll('.menu-link');
menuLinks.forEach(link => {
    link.addEventListener('click', () => {
        sidebarMenu.classList.remove('show');
        overlay.classList.remove('show');
        body.classList.remove('sidebar-active');
    });
});

        const ctx = document.getElementById('progressChart').getContext('2d');
        const scores = <%= scoresArray.toString()%>;
        const labels = <%= labelsArray.toString()%>;

        new Chart(ctx, {
            type: 'bar',
            data: {
                labels: labels,
                datasets: [{
                        label: 'Puntajes de Tests',
                        data: scores,
                        backgroundColor: '#818CF8',
                        borderColor: '#5A67D8',
                        borderWidth: 1
                    }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        display: true,
                        labels: {
                            color: '#F8FAFC'
                        }
                    },
                    tooltip: {
                        callbacks: {
                            label: function (context) {
                                return `Puntaje: ${context.raw} puntos`;
                            }
                        }
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        max: 145,
                        grid: {
                            color: 'rgba(255, 255, 255, 0.1)'
                        },
                        ticks: {
                            color: '#F8FAFC',
                            callback: function (value) {
                                return value + ' pts';
                            }
                        }
                    },
                    x: {
                        grid: {
                            color: 'rgba(255, 255, 255, 0.1)'
                        },
                        ticks: {
                            color: '#F8FAFC'
                        }
                    }
                }
            }
        });

        function numberWithCommas(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }
        themeToggle.addEventListener('click', () => {
            body.classList.toggle('light-theme');

            if (body.classList.contains('light-theme')) {
                localStorage.setItem('theme', 'light');
            } else {
                localStorage.removeItem('theme');
            }
        });

    </script>
    <script>
// Prevenir zoom en dispositivos móviles
document.addEventListener('touchstart', function(event) {
    if (event.touches.length > 1) {
        event.preventDefault();
    }
}, { passive: false });

// Prevenir zoom con gestos de pellizco
document.addEventListener('gesturestart', function(event) {
    event.preventDefault();
});

// Establecer viewport con zoom bloqueado
const meta = document.createElement('meta');
meta.name = 'viewport';
meta.content = 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no';
document.getElementsByTagName('head')[0].appendChild(meta);
</script>
</body>
</html>
<%
    } catch (ClassNotFoundException e) {
        out.println("<p>Error al cargar el driver: " + e.getMessage() + "</p>");
    } catch (SQLException e) {
        out.println("<p>Error al conectar con la base de datos o ejecutar la consulta: " + e.getMessage() + "</p>");
    } catch (Exception e) {
        out.println("<p>Error inesperado: " + e.getMessage() + "</p>");
    } finally {
        if (rs != null) try {
            rs.close();
        } catch (SQLException ignore) {
        }
        if (pst != null) try {
            pst.close();
        } catch (SQLException ignore) {
        }
        if (conn != null) try {
            conn.close();
        } catch (SQLException ignore) {
        }
    }
%>
