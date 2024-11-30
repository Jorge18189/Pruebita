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
        <link rel="icon" type="image/png" href="imagenes/Savy.png">    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Montserrat', sans-serif;
            background: linear-gradient(135deg, #1a237e, #bbdefb);
            color: #f0f0f0;
            min-height: 100vh;
            padding: 20px;
        }

        .layout-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .container {
            flex: 1;
            max-width: 800px;
            background: rgba(44, 62, 80, 0.9);
            border-radius: 12px;
            padding: 40px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
        }

        .side-container {
            width: 300px;
            background: rgba(44, 62, 80, 0.9);
            border-radius: 12px;
            padding: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
        }

        .section {
            display: none;
        }

        .section.active {
            display: block;
        }

        .section-header {
            margin-bottom: 30px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 30px;
        }

        label {
            font-size: 1.2em;
            color: #e0e0e0;
            margin-bottom: 10px;
            display: block;
        }

        select {
            width: 100%;
            padding: 12px;
            border-radius: 8px;
            border: 1px solid #444;
            background: #34495e;
            color: #f0f0f0;
            font-size: 1em;
            margin-top: 8px;
        }

        .nav-buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
        }

        button {
            padding: 12px 24px;
            border: none;
            border-radius: 8px;
            background: linear-gradient(145deg, #6f73d2, #bbdefb);
            color: #f0f0f0;
            cursor: pointer;
            font-size: 1.2em;
            transition: all 0.3s ease;
        }

        button:hover {
            background: linear-gradient(145deg, #bbdefb, #6f73d2);
            transform: translateY(-2px);
        }

        button:disabled {
            opacity: 0.5;
            cursor: not-allowed;
        }

        .progress-item {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 12px;
            background: #34495e;
            border-radius: 8px;
            margin-bottom: 10px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .progress-item.completed {
            background: #2ecc71;
        }

        .progress-item.current {
            background: #3498db;
        }

        .progress-icon {
            width: 30px;
            height: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #bbdefb;
            border-radius: 50%;
            color: #1a237e;
        }

        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }

        .modal.active {
            display: flex;
        }

        .modal-content {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            text-align: center;
            color: #333;
        }

        @media (max-width: 768px) {
            .layout-container {
                flex-direction: column;
            }

            .side-container {
                width: 100%;
                margin-top: 20px;
            }
        }
    </style>
</head>
<body>
    <div class="layout-container">
        <div class="container">
            <form id="quizForm" onsubmit="return false;">
                <!-- Sección 1: Fortalezas -->
                <div id="section1" class="section active">
                    <div class="section-header">
                        <h2>Fortalezas</h2>
                        <p>Sección 1 de 4</p>
                    </div>
                     <div class="form-group">
                <label for="fortalezas-1">1. ¿Cuál de las siguientes opciones consideras que mejor describe tus fortalezas?</label>
                <select id="fortalezas-1" name="fortalezas-1" required>
                    <option value="">Selecciona una opción</option>
                    <option value="A">A. Perseverancia, creatividad y empatía.</option>
                    <option value="B">B. Liderazgo, comunicación y resolución de problemas.</option>
                    <option value="C">C. Trabajo en equipo, responsabilidad y organización.</option>
                    <option value="D">D. Adaptabilidad, pensamiento crítico y paciencia.</option>
                </select>
            </div>

            <!-- Pregunta 2 -->
            <div class="form-group">
                <label for="escala-fortalezas">2. ¿Qué tan a menudo utilizas tus fortalezas en tu vida diaria?</label>
                <select id="escala-fortalezas" name="escala-fortalezas" required>
                    <option value="">Selecciona una opción</option>
                    <option value="A">A. Nunca</option>
                    <option value="B">B. Rara vez</option>
                    <option value="C">C. A veces</option>
                    <option value="D">D. A menudo</option>
                    <option value="E">E. Siempre</option>
                </select>
            </div>

            <!-- Pregunta 3 -->
            <div class="form-group">
                <label for="imagen-fortaleza">3. ¿Qué imagen representa mejor tus fortalezas?</label>
                <select id="imagen-fortaleza" name="imagen-fortaleza" required>
                    <option value="">Selecciona una opción</option>
                    <option value="superheroe">A. ? Superhéroe</option>
                    <option value="esfuerzo">B. ? Esfuerzo</option>
                    <option value="sabiduria">C. ? Sabiduría</option>
                    <option value="creatividad">D. ? Creatividad</option>
                </select>
            </div>

            <!-- Pregunta 4 -->
            <div class="form-group">
                <label for="situacion-fortaleza">4. En situaciones de estrés, ¿cómo sueles aplicar tus fortalezas?</label>
                <select id="situacion-fortaleza" name="situacion-fortaleza" required>
                    <option value="">Selecciona una opción</option>
                    <option value="A">A. Uso mi capacidad de resolver problemas para encontrar soluciones rápidas.</option>
                    <option value="B">B. Aplico mi creatividad para proponer alternativas innovadoras.</option>
                    <option value="C">C. Mantengo la calma y organizo mis tareas para enfrentar la situación.</option>
                    <option value="D">D. Prefiero trabajar en equipo para aprovechar diversas habilidades.</option>
                </select>
            </div>

            <!-- Pregunta 5 -->
            <div class="form-group">
                <label for="feedback-fortalezas">5. Si alguien te diera un comentario sobre tus fortalezas, ¿cuál crees que sería?</label>
                <select id="feedback-fortalezas" name="feedback-fortalezas" required>
                    <option value="">Selecciona una opción</option>
                    <option value="A">A. "Eres muy bueno liderando proyectos complejos."</option>
                    <option value="B">B. "Siempre tienes ideas creativas para resolver problemas."</option>
                    <option value="C">C. "Tienes una excelente habilidad para trabajar en equipo."</option>
                    <option value="D">D. "Eres muy bueno gestionando tu tiempo y recursos."</option>
                </select>
            </div>

                    <!-- Agrega aquí más preguntas de la sección 1 -->
                    <div class="nav-buttons">
                        <button type="button" onclick="finishSection(1)">Finalizar sección</button>
                    </div>
                </div>

                <!-- Las demás secciones seguirán el mismo patrón -->
                <div id="section2" class="section">
                    <div class="section-header">
                        <h2>Oportunidades</h2>
                        <p>Sección 2 de 4</p>
                    </div>
                    
                      <div class="form-group">
                <label for="oportunidad-principal">1. ¿Cuál es tu oportunidad principal?</label>
                <select id="oportunidad-principal" name="oportunidad-principal" required>
                    <option value="">Selecciona una opción</option>
                    <option value="Crecimiento">Crecimiento</option>
                    <option value="Aprendizaje">Aprendizaje</option>
                    <option value="Innovación">Innovación</option>
                    <option value="Desarrollo Personal">Desarrollo Personal</option>
                </select>
            </div>

            <div class="form-group">
                <label for="frecuencia-uso">2. ¿Con qué frecuencia utilizas esta oportunidad?</label>
                <select id="frecuencia-uso" name="frecuencia-uso" required>
                    <option value="">Selecciona una opción</option>
                    <option value="A menudo">A menudo</option>
                    <option value="A veces">A veces</option>
                    <option value="Rara vez">Rara vez</option>
                    <option value="Nunca">Nunca</option>
                </select>
            </div>

            <div class="form-group">
                <label for="imagen-oportunidad">3. ¿Qué imagen representa mejor esta oportunidad?</label>
                <select id="imagen-oportunidad" name="imagen-oportunidad" required>
                    <option value="">Selecciona una opción</option>
                    <option value="crecimiento">Crecimiento</option>
                    <option value="aprendizaje">Aprendizaje</option>
                    <option value="innovacion">Innovación</option>
                    <option value="desarrollo">Desarrollo</option>
                </select>
            </div>

            <div class="form-group">
                <label for="aplicacion-oportunidad">4. ¿Cómo aplicas esta oportunidad en tu vida diaria?</label>
                <select id="aplicacion-oportunidad" name="aplicacion-oportunidad" required>
                    <option value="">Selecciona una opción</option>
                    <option value="Trabajo">Trabajo</option>
                    <option value="Estudios">Estudios</option>
                    <option value="Hobbies">Hobbies</option>
                    <option value="Relaciones">Relaciones</option>
                </select>
            </div>

            <div class="form-group">
                <label for="comentario-oportunidad">5. ¿Qué comentario recibirías sobre esta oportunidad?</label>
                <select id="comentario-oportunidad" name="comentario-oportunidad" required>
                    <option value="">Selecciona una opción</option>
                    <option value="Positivo">Positivo</option>
                    <option value="Constructivo">Constructivo</option>
                    <option value="Neutral">Neutral</option>
                    <option value="Negativo">Negativo</option>
                </select>
            </div>

                    <div class="nav-buttons">
                        <button type="button" onclick="finishSection(2)">Finalizar sección</button>
                    </div>
                </div>
                
                      <div id="section3" class="section">
                    <div class="section-header">
                        <h2>Debilidades</h2>
                        <p>Sección 3 de 4</p>
                    </div>
                    
                      <div class="form-group">
                <label for="debilidades-1">1. ¿Cuál de las siguientes opciones consideras que mejor describe tus debilidades?</label>
                <select id="debilidades-1" name="debilidades-1" required>
                    <option value="">Selecciona una opción</option>
                    <option value="A">A. Procrastinación, indecisión y falta de organización.</option>
                    <option value="B">B. Falta de confianza en mí mismo y miedo al fracaso.</option>
                    <option value="C">C. Dificultad para manejar el estrés y las emociones.</option>
                    <option value="D">D. Falta de habilidades técnicas en áreas específicas.</option>
                </select>
            </div>

            <div class="form-group">
                <label for="escala-debilidades">2. ¿Qué tan a menudo reconoces y trabajas en tus debilidades?</label>
                <select id="escala-debilidades" name="escala-debilidades" required>
                    <option value="">Selecciona una opción</option>
                    <option value="A">A. Nunca</option>
                    <option value="B">B. Rara vez</option>
                    <option value="C">C. A veces</option>
                    <option value="D">D. A menudo</option>
                    <option value="E">E. Siempre</option>
                </select>
            </div>

            <div class="form-group">
                <label for="imagen-debilidad">3. ¿Cuál de las siguientes debilidades consideras que más te limita en tu desarrollo personal?</label>
                <select id="imagen-debilidad" name="imagen-debilidad" required>
                    <option value="">Selecciona una opción</option>
                    <option value="desorganizado">A. ? Desorganización</option>
                    <option value="miedo">B. ? Miedo al fracaso</option>
                    <option value="estresado">C. ? Estrés</option>
                    <option value="bajo_autocontrol">D. ? Falta de autocontrol</option>
                </select>
            </div>

            <div class="form-group">
                <label for="situacion-debilidad">4. En situaciones difíciles, ¿cómo sueles reaccionar ante tus debilidades?</label>
                <select id="situacion-debilidad" name="situacion-debilidad" required>
                    <option value="">Selecciona una opción</option>
                    <option value="A">A. Tiendo a procrastinar y evitar el problema.</option>
                    <option value="B">B. Me siento abrumado y dudo de mis habilidades.</option>
                    <option value="C">C. Intento controlar mis emociones, pero a veces me cuesta.</option>
                    <option value="D">D. Trato de mejorar en mis debilidades con esfuerzo y práctica.</option>
                </select>
            </div>

            <div class="form-group">
                <label for="feedback-debilidades">5. Si alguien te diera un comentario sobre tus debilidades, ¿cuál crees que sería?</label>
                <select id="feedback-debilidades" name="feedback-debilidades" required>
                    <option value="">Selecciona una opción</option>
                    <option value="A">A. "A veces te falta organización y eso te retrasa."</option>
                    <option value="B">B. "Tienes que confiar más en ti mismo y dejar de dudar."</option>
                    <option value="C">C. "El estrés te afecta mucho, debes aprender a relajarte."</option>
                    <option value="D">D. "Es necesario que desarrolles habilidades más específicas para avanzar."</option>
                </select>
            
            </div>

                    <div class="nav-buttons">
                        <button type="button" onclick="finishSection(3)">Finalizar sección</button>
                    </div>
                </div>
                 <div id="section4" class="section">
                    <div class="section-header">
                        <h2>Aptitudes</h2>
                        <p>Sección 4 de 4</p>
                    </div>
                    
                     <div class="form-group">
                <label for="aptitud-principal">1. ¿Cuál consideras que es tu aptitud principal?</label>
                <select id="aptitud-principal" name="aptitud-principal" required>
                    <option value="">Selecciona una opción</option>
                    <option value="Liderazgo">Liderazgo</option>
                    <option value="Resolución de problemas">Resolución de problemas</option>
                    <option value="Creatividad">Creatividad</option>
                    <option value="Trabajo en equipo">Trabajo en equipo</option>
                </select>
            </div>
            <div class="form-group">
                <label for="frecuencia-aptitud">2. ¿Con qué frecuencia utilizas esta aptitud?</label>
                <select id="frecuencia-aptitud" name="frecuencia-aptitud" required>
                    <option value="">Selecciona una opción</option>
                    <option value="A menudo">A menudo</option>
                    <option value="A veces">A veces</option>
                    <option value="Rara vez">Rara vez</option>
                    <option value="Nunca">Nunca</option>
                </select>
            </div>
            <div class="form-group">
                <label for="imagen-aptitud">3. ¿Qué imagen representa mejor esta aptitud?</label>
                <select id="imagen-aptitud" name="imagen-aptitud" required>
                    <option value="">Selecciona una opción</option>
                    <option value="liderazgo">? Liderazgo</option>
                    <option value="resolucion">? Resolución</option>
                    <option value="creatividad">? Creatividad</option>
                    <option value="equipo">? Trabajo en equipo</option>
                </select>
            </div>
            <div class="form-group">
                <label for="situacion-aptitud">4. ¿Cómo aplicas esta aptitud en tu vida diaria?</label>
                <select id="situacion-aptitud" name="situacion-aptitud" required>
                    <option value="">Selecciona una opción</option>
                    <option value="Trabajo">Trabajo</option>
                    <option value="Estudios">Estudios</option>
                    <option value="Hobbies">Hobbies</option>
                    <option value="Relaciones personales">Relaciones personales</option>
                </select>
            </div>
            <div class="form-group">
                <label for="comentario-aptitud">5. ¿Qué comentario recibirías sobre esta aptitud?</label>
                <select id="comentario-aptitud" name="comentario-aptitud" required>
                    <option value="">Selecciona una opción</option>
                    <option value="Positivo">Positivo</option>
                    <option value="Constructivo">Constructivo</option>
                    <option value="Neutral">Neutral</option>
                    <option value="Negativo">Negativo</option>
                </select>
            </div>

                    <div class="nav-buttons">
                        <button type="button" onclick="finishSection(4)">Finalizar sección</button>
                    </div>
                </div>

            </form>
        </div>

        <div class="side-container">
            <div class="progress-header">
                <i class="fas fa-tasks"></i>
                <h3>Progreso</h3>
                <br>
            </div>
            <div class="section-progress">
                <div class="progress-item" data-section="1">
                    <span class="progress-icon">1</span>
                    <span class="progress-text">FORTALEZAS</span>
                </div>
                <div class="progress-item" data-section="2">
                    <span class="progress-icon">2</span>
                    <span class="progress-text">OPORTUNIDADES</span>
                </div>
                <div class="progress-item" data-section="3">
                    <span class="progress-icon">3</span>
                    <span class="progress-text">DEBILIDADES</span>
                </div>
                <div class="progress-item" data-section="4">
                    <span class="progress-icon">4</span>
                    <span class="progress-text">APTITUDES</span>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal de confirmación -->
    <div id="confirmModal" class="modal">
        <div class="modal-content">
            <h3>¿Estás seguro de que deseas finalizar esta sección?</h3>
            <p>Una vez finalizada, no podrás volver a ella.</p>
            <button onclick="confirmFinishSection()">Sí, finalizar</button>
            <button onclick="closeModal()">No, continuar</button>
        </div>
    </div>

    <script>
        let currentSection = 1;
        let sectionToFinish = null;

        function showSection(sectionNumber) {
            document.querySelectorAll('.section').forEach(section => {
                section.classList.remove('active');
            });
            const section = document.getElementById('section' + sectionNumber);
            if (section) {
                section.classList.add('active');
            }
            updateProgress();
        }

        function updateProgress() {
            document.querySelectorAll('.progress-item').forEach((item, index) => {
                const sectionNum = index + 1;
                item.classList.remove('current', 'completed');
                
                if (sectionNum < currentSection) {
                    item.classList.add('completed');
                } else if (sectionNum === currentSection) {
                    item.classList.add('current');
                }
            });
        }

       function finishSection(sectionNumber) {
    sectionToFinish = sectionNumber;
    
    // Verificar si todas las preguntas de la sección actual están respondidas
    const currentSection = document.getElementById('section' + sectionNumber);
    const allAnswered = Array.from(currentSection.querySelectorAll('select')).every(select => select.value !== "");

    if (!allAnswered) {
        alert("Por favor, responde a todas las preguntas antes de continuar.");
        return;  // No permitir continuar si no todas las preguntas están respondidas
    }
    
    // Si la sección es menos de 4, muestra el modal de confirmación
    if (sectionNumber < 4) {
        document.getElementById('confirmModal').classList.add('active');
    } else {
        submitForm();  // Si es la última sección, enviar el formulario
    }
}

function confirmFinishSection() {
    if (sectionToFinish) {
        currentSection = sectionToFinish + 1;
        closeModal();
        showSection(currentSection);
    }
}

function closeModal() {
    document.getElementById('confirmModal').classList.remove('active');
    sectionToFinish = null;
}

function submitForm() {
    const form = document.getElementById('quizForm');
    const formData = new FormData(form);
    const queryString = new URLSearchParams(formData).toString();
    window.location.href = 'resultados.jsp?' + queryString;
}


        // Inicialización
        document.addEventListener('DOMContentLoaded', () => {
            showSection(1);
        });
    </script>
</body>
</html>