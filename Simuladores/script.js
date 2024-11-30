/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */



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
                window.location.href = 'resultado1.jsp';
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
        // Verifica si todas las secciones están completas
        let allSectionsComplete = true;
        for (let i = 1; i <= 8; i++) {
            if (!checkSectionCompletion(i)) {
                allSectionsComplete = false;
                break;
            }
        }

        // Si todas las secciones están completas, ir directamente a la página de resultados
        if (allSectionsComplete) {
            window.location.href = 'resultado1.jsp';
        } else {
            // Mostrar mensaje de confirmación si hay preguntas sin responder
            const confirmFinish = confirm('Aún no has terminado el examen. ¿Deseas continuar de todas formas?');
            if (confirmFinish) {
                window.location.href = 'resultado1.jsp';
            }
        }
    } else {
        // Si no es la última sección, ir a la siguiente sección
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
    function submitQuiz() {
    const quizForm = document.getElementById('quizForm');
    quizForm.submit(); // Envía el formulario antes de redirigir
}
function validateAndSubmit() {
    const questions = new Set();
    let allAnswered = true;

    document.querySelectorAll('input[type="radio"]').forEach(radio => {
        questions.add(radio.name);
    });

    questions.forEach(questionName => {
        if (!document.querySelector(`input[name="${questionName}"]:checked`)) {
            allAnswered = false;
        }
    });

    if (allAnswered) {
        submitQuiz(); // Llama al envío del formulario
    } else {
        alert('Por favor responde todas las preguntas antes de enviar.');
    }
}
