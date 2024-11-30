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
    <title>LSA</title>
    <link rel="stylesheet" href="simulacro.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
</head>
<body>
    <div class="layout-container">
        <div class="container">
            <form id="quizForm">
                <div id="section1" class="section active">
                    <div class="section-header">
                        <h2 class="section-title">Sección 1: Conocimientos Generales</h2>
                        <p class="section-subtitle">Preguntas 1-17</p>
                    </div>

                    <div class="question-item">
                        <p class="question-text">1. ¿Cuál es el planeta más grande del Sistema Solar?</p>
                        <div class="options-container">
                            <label class="option-item">
                                <input type="radio" name="question1" value="a">
                                <span>Saturno</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question1" value="b">
                                <span>Júpiter</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question1" value="c">
                                <span>Urano</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question1" value="d">
                                <span>Neptuno</span>
                            </label>
                        </div>
                    </div>
                                        <div class="question-item">
                        <p class="question-text">1. ¿Cuál es el planeta más grande del Sistema Solar?</p>
                        <div class="options-container">
                            <label class="option-item">
                                <input type="radio" name="question1" value="a">
                                <span>Saturno</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question1" value="b">
                                <span>Júpiter</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question1" value="c">
                                <span>Urano</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question1" value="d">
                                <span>Neptuno</span>
                            </label>
                        </div>
                    </div>
                                        <div class="question-item">
                        <p class="question-text">1. ¿Cuál es el planeta más grande del Sistema Solar?</p>
                        <div class="options-container">
                            <label class="option-item">
                                <input type="radio" name="question1" value="a">
                                <span>Saturno</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question1" value="b">
                                <span>Júpiter</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question1" value="c">
                                <span>Urano</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question1" value="d">
                                <span>Neptuno</span>
                            </label>
                        </div>
                    </div>

                    <div class="nav-buttons">
                        <button type="button" class="btn btn-secondary" disabled>Anterior</button>
                        <button type="button" class="btn btn-primary" onclick="nextSection(1)">Siguiente</button>
                    </div>
                </div>

                <div id="section2" class="section">
                    <div class="section-header">
                        <h2 class="section-title">Sección 2: Matemáticas Básicas</h2>
                        <p class="section-subtitle">Preguntas 18-35</p>
                    </div>

                    <div class="question-item">
                        <p class="question-text">18. Si 3x + 5 = 20, ¿cuál es el valor de x?</p>
                        <div class="options-container">
                            <label class="option-item">
                                <input type="radio" name="question18" value="a">
                                <span>3</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question18" value="b">
                                <span>5</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question18" value="c">
                                <span>7</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question18" value="d">
                                <span>8</span>
                            </label>
                        </div>
                    </div>

                    <div class="nav-buttons">
                        <button type="button" class="btn btn-secondary" onclick="previousSection(2)">Anterior</button>
                        <button type="button" class="btn btn-primary" onclick="nextSection(2)">Siguiente</button>
                    </div>
                </div>

                <div id="section3" class="section">
                    <div class="section-header">
                        <h2 class="section-title">Sección 3: Comprensión Lectora</h2>
                        <p class="section-subtitle">Preguntas 36-53</p>
                    </div>

                    <div class="question-item">
                        <p class="question-text">36. Según el texto anterior, ¿cuál es la idea principal del primer párrafo?</p>
                        <div class="options-container">
                            <label class="option-item">
                                <input type="radio" name="question36" value="a">
                                <span>La importancia de la lectura</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question36" value="b">
                                <span>Los beneficios del estudio</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question36" value="c">
                                <span>El desarrollo del pensamiento crítico</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question36" value="d">
                                <span>Las técnicas de aprendizaje</span>
                            </label>
                        </div>
                    </div>

                    <div class="nav-buttons">
                        <button type="button" class="btn btn-secondary" onclick="previousSection(3)">Anterior</button>
                        <button type="button" class="btn btn-primary" onclick="nextSection(3)">Siguiente</button>
                    </div>
                </div>

                <div id="section4" class="section">
                    <div class="section-header">
                        <h2 class="section-title">Sección 4: Ciencias Naturales</h2>
                        <p class="section-subtitle">Preguntas 54-71</p>
                    </div>

                    <div class="question-item">
                        <p class="question-text">54. ¿Cuál de los siguientes no es un tipo de energía renovable?</p>
                        <div class="options-container">
                            <label class="option-item">
                                <input type="radio" name="question54" value="a">
                                <span>Energía solar</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question54" value="b">
                                <span>Energía eólica</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question54" value="c">
                                <span>Energía nuclear</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question54" value="d">
                                <span>Energía hidráulica</span>
                            </label>
                        </div>
                    </div>

                    <div class="nav-buttons">
                        <button type="button" class="btn btn-secondary" onclick="previousSection(4)">Anterior</button>
                        <button type="button" class="btn btn-primary" onclick="nextSection(4)">Siguiente</button>
                    </div>
                </div>

                <div id="section5" class="section">
                    <div class="section-header">
                        <h2 class="section-title">Sección 5: Historia Universal</h2>
                        <p class="section-subtitle">Preguntas 72-89</p>
                    </div>

                    <div class="question-item">
                        <p class="question-text">72. ¿En qué año comenzó la Segunda Guerra Mundial?</p>
                        <div class="options-container">
                            <label class="option-item">
                                <input type="radio" name="question72" value="a">
                                <span>1939</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question72" value="b">
                                <span>1940</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question72" value="c">
                                <span>1941</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question72" value="d">
                                <span>1942</span>
                            </label>
                        </div>
                    </div>

                    <div class="nav-buttons">
                        <button type="button" class="btn btn-secondary" onclick="previousSection(5)">Anterior</button>
                        <button type="button" class="btn btn-primary" onclick="nextSection(5)">Siguiente</button>
                    </div>
                </div>

                <div id="section6" class="section">
                    <div class="section-header">
                        <h2 class="section-title">Sección 6: Geografía</h2>
                        <p class="section-subtitle">Preguntas 90-107</p>
                    </div>

                    <div class="question-item">
                        <p class="question-text">90. ¿Cuál es el río más largo del mundo?</p>
                        <div class="options-container">
                            <label class="option-item">
                                <input type="radio" name="question90" value="a">
                                <span>Nilo</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question90" value="b">
                                <span>Amazonas</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question90" value="c">
                                <span>Misisipi</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question90" value="d">
                                <span>Yangtsé</span>
                            </label>
                        </div>
                    </div>

                    <div class="nav-buttons">
                        <button type="button" class="btn btn-secondary" onclick="previousSection(6)">Anterior</button>
                        <button type="button" class="btn btn-primary" onclick="nextSection(6)">Siguiente</button>
                    </div>
                </div>

                <div id="section7" class="section">
                    <div class="section-header">
                        <h2 class="section-title">Sección 7: Razonamiento Lógico</h2>
                        <p class="section-subtitle">Preguntas 108-125</p>
                    </div>

                    <div class="question-item">
                        <p class="question-text">108. Si todos los gatos son mamíferos y todos los mamíferos son animales, ¿qué se puede concluir?</p>
                        <div class="options-container">
                            <label class="option-item">
                                <input type="radio" name="question108" value="a">
                                <span>Todos los animales son gatos</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question108" value="b">
                                <span>Todos los gatos son animales</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question108" value="c">
                                <span>Algunos animales son gatos</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question108" value="d">
                                <span>Ninguna de las anteriores</span>
                            </label>
                        </div>
                    </div>

                    <div class="nav-buttons">
                        <button type="button" class="btn btn-secondary" onclick="previousSection(7)">Anterior</button>
                        <button type="button" class="btn btn-primary" onclick="nextSection(7)">Siguiente</button>
                    </div>
                </div>

                <div id="section8" class="section">
                    <div class="section-header">
                        <h2 class="section-title">Sección 8: Cultura General</h2>
                        <p class="section-subtitle">Preguntas 126-143</p>
                    </div>

                    <div class="question-item">
                        <p class="question-text">126. ¿Quién pintó "La noche estrellada"?</p>
                        <div class="options-container">
                            <label class="option-item">
                                <input type="radio" name="question126" value="a">
                                <span>Pablo Picasso</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question126" value="b">
                                <span>Vincent van Gogh</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question126" value="c">
                                <span>Leonardo da Vinci</span>
                            </label>
                            <label class="option-item">
                                <input type="radio" name="question126" value="d">
                                <span>Claude Monet</span>
                            </label>
                        </div>
                    </div>

                    <div class="nav-buttons">
                        <button type="button" class="btn btn-secondary" onclick="previousSection(8)">Anterior</button>
                        <button type="button" class="btn btn-primary" onclick="nextSection(8)">Finalizar</button>
                    </div>
                </div>
            </form>
        </div>

        <div class="side-container-wrapper">
            <!-- Timer Container -->
            <div class="side-container timer-container">
                <div class="timer-header">
                    <i class="fas fa-clock"></i>
                    <h3>Tiempo Restante</h3>
                </div>
                <div class="timer" id="timer">
                    <span id="hours">03</span>:<span id="minutes">00</span>:<span id="seconds">00</span>
                </div>
            </div>

            <div class="side-container progress-container">
                <div class="progress-header">
                    <i class="fas fa-tasks"></i>
                    <h3>Progreso</h3>
                </div>
                <div class="section-progress">
                    <div class="progress-item" onclick="goToSection(1)">
                        <span class="progress-icon" id="progress1">-</span>
                        <span class="progress-text">Conocimientos Generales</span>
                    </div>
                    <div class="progress-item" onclick="goToSection(2)">
                        <span class="progress-icon" id="progress2">-</span>
                        <span class="progress-text">Matemáticas Básicas</span>
                    </div>
                    <div class="progress-item" onclick="goToSection(3)">
                        <span class="progress-icon" id="progress3">-</span>
                        <span class="progress-text">Comprensión Lectora</span>
                    </div>
                    <div class="progress-item" onclick="goToSection(4)">
                        <span class="progress-icon" id="progress4">-</span>
                        <span class="progress-text">Ciencias Naturales</span>
                    </div>
                    <div class="progress-item" onclick="goToSection(5)">
                        <span class="progress-icon" id="progress5">-</span>
                        <span class="progress-text">Historia Universal</span>
                    </div>
                    <div class="progress-item" onclick="goToSection(6)">
                        <span class="progress-icon" id="progress6">-</span>
                        <span class="progress-text">Geografía</span>
                    </div>
                    <div class="progress-item" onclick="goToSection(7)">
                        <span class="progress-icon" id="progress7">-</span>
                        <span class="progress-text">Razonamiento Lógico</span>
                    </div>
                    <div class="progress-item" onclick="goToSection(8)">
                        <span class="progress-icon" id="progress8">-</span>
                        <span class="progress-text">Cultura General</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <style>
        .progress-item {
            cursor: pointer;
            padding: 8px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .progress-item:hover {
            background-color: #f0f0f0;
        }

        .progress-item.completed {
            background-color: #e8f5e9;
        }

        .progress-item.current {
            background-color: #e3f2fd;
        }
    </style>

<script>
    function startTimer(duration, display) {
        let timer = duration;
        const countdown = setInterval(function () {
            let hours = parseInt(timer / 3600, 10);
            let minutes = parseInt((timer % 3600) / 60, 10);
            let seconds = parseInt(timer % 60, 10);

            hours = hours < 10 ? "0" + hours : hours;
            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;

            display.hours.textContent = hours;
            display.minutes.textContent = minutes;
            display.seconds.textContent = seconds;

            if (--timer < 0) {
                clearInterval(countdown);
                alert('¡Tiempo agotado! El examen se enviará automáticamente.');
                window.location.href = 'resultado1.html';
            }
        }, 1000);
    }

    let currentSection = 1;

    function checkSectionCompletion(sectionNumber) {
        const section = document.getElementById(`section${sectionNumber}`);
        const questions = new Set();
        let isComplete = true;

        section.querySelectorAll('input[type="radio"]').forEach(radio => 
            questions.add(radio.name)
        );

        questions.forEach(questionName => {
            if (!document.querySelector(`input[name="${questionName}"]:checked`)) {
                isComplete = false;
            }
        });

        const progressIcon = document.getElementById(`progress${sectionNumber}`);
        progressIcon.innerHTML = isComplete ? '✓' : '-';

        return isComplete;
    }

    function goToSection(sectionNumber) {
        document.querySelectorAll('.section').forEach(section => {
            section.classList.remove('active');
        });
        document.getElementById(`section${sectionNumber}`).classList.add('active');
        currentSection = sectionNumber;
        
        updateProgressStyles();
        
        window.scrollTo(0, 0);
    }

    function updateProgressStyles() {
        document.querySelectorAll('.progress-item').forEach((item, index) => {
            const sectionNumber = index + 1;
            item.classList.remove('current');
            if (sectionNumber === currentSection) {
                item.classList.add('current');
            }
        });
    }

    function nextSection(currentSectionNum) {
        if (currentSectionNum === 8) {
            window.location.href = 'resultado1.html';
        } else {
            goToSection(currentSectionNum + 1);
        }
    }

    function previousSection(sectionNumber) {
        goToSection(sectionNumber - 1);
    }

    window.onload = function() {
        const threeHours = 3 * 60 * 60;
        const display = {
            hours: document.querySelector('#hours'),
            minutes: document.querySelector('#minutes'),
            seconds: document.querySelector('#seconds')
        };
        startTimer(threeHours, display);
        
        currentSection = 1;
        updateProgressStyles();
        
        for (let i = 1; i <= 8; i++) {
            checkSectionCompletion(i);
        }
        
        document.querySelectorAll('input[type="radio"]').forEach(radio => {
            radio.addEventListener('click', function(e) {
                if (this.dataset.wasChecked === 'true') {
                    this.checked = false;
                    this.dataset.wasChecked = 'false';
                } else {
                    document.querySelectorAll(`input[name="${this.name}"]`).forEach(r => {
                        r.dataset.wasChecked = 'false';
                    });
                    this.dataset.wasChecked = 'true';
                }
                
                let sectionNumber = 1;
                let currentElement = this.closest('.section');
                while (currentElement) {
                    if (currentElement.id && currentElement.id.startsWith('section')) {
                        sectionNumber = parseInt(currentElement.id.replace('section', ''));
                        break;
                    }
                    currentElement = currentElement.parentElement;
                }
                checkSectionCompletion(sectionNumber);
            });
        });
    };
</script>
</body>
</html>