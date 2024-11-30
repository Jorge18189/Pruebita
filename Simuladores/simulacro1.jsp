<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
 Integer userId = (Integer) session.getAttribute("userId");
    if (userId == null) {
        response.sendRedirect("../index.html");
        return;
    }
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>LSA - Learn. Study. Achieve</title>
        <link rel="icon" type="image/png" href="../imagenes/Savy.png">
        <link rel="stylesheet" href="simulacro.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
        <script type="text/javascript" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
    </head>
    <body>
        <div class="layout-container">
            <div class="container">
                <form action="resultado1.jsp" method="POST">
                    <input type="hidden" name="userId" value="<%= session.getAttribute("userId") %>">

                    <div id="section1" class="section active">
                        <div class="section-header">
                            <h2 class="section-title">Sección 1: Matemáticas</h2>
                            <p class="section-subtitle">Preguntas 1-37</p>
                        </div>

                        <div class="question-item">
                            <p class="question-text">1.-Determine el valor de \( \sin \theta \) si se sabe que \( \cos \theta = \frac{1}{3} \).</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question1" value="a">
                                    <span>\( \frac{\sqrt{8}}{3} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question1" value="b">
                                    <span>\( \frac{\sqrt{8}}{2} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question1" value="c">
                                    <span>\( \frac{\sqrt{8}}{5} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question1" value="d">
                                    <span>\( \frac{\sqrt{10}}{3} \)</span>
                                </label>
                            </div>
                        </div>
<div class="question-item">
                            <p class="question-text">2.-Si la intersección entre dos rectas da como resultado infinitos puntos, significa que son…</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question2" value="a">
                                    <span>Paralelas</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question2" value="b">
                                    <span>Oblicuas</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question2" value="c">
                                    <span>Equivalentes</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question2" value="d">
                                    <span>Perpendiculares</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">3.-¿Cuál es la expresión que representa el área de la figura?</p>
                            <div class="image-container">
                                <img src="../imagenes/triangulo.png" alt="Triángulo con ángulos y medidas dados" style="width:60%;height:60%;">
                            </div>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question3" value="a">
                                    <span>\( \frac{1}{4} (2x + 1)(4x + 5) \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question3" value="b">
                                    <span>\( \frac{3}{4} (2x + 1)(4x + 5) \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question3" value="c">
                                    <span>\( \frac{2}{4} (2x + 1)(4x + 5) \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question3" value="d">
                                    <span>\( \frac{3}{4} (2x + 1)(4x + 5) \)</span>
                                </label>
                            </div>
                        </div>
                        <div class="question-item">
                            <p class="question-text">4.-Determinar el valor del ángulo \( x \), a partir de la siguiente figura:</p>
                            <div class="image-container">
                                <img src="../imagenes/angulos.png" alt="Figura con ángulo x" class="responsive-image" style="width:60%;height:60%;">
                            </div>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question4" value="a">
                                    <span>90°</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question4" value="b">
                                    <span>147°</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question4" value="c">
                                    <span>127°</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question4" value="d">
                                    <span>5°</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">5.-El grado absoluto de un polinomio de __________ es igual a la mayor suma de los ___________.</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question5" value="a">
                                    <span>Una variable – términos</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question5" value="b">
                                    <span>Varias variables – exponentes</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question5" value="c">
                                    <span>Varias variables – términos</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question5" value="d">
                                    <span>Una variable – exponentes</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">6.-Determine el valor de \( x \) que cumple la siguiente igualdad:</p>
                            <p class="equation">\( \frac{1}{2x + 1} = x + 1 \)</p>
                            <br>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question6" value="a">
                                    <span>0 y \( -\frac{3}{2} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question6" value="b">
                                    <span>0</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question6" value="c">
                                    <span>\( \frac{3}{2} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question6" value="d">
                                    <span>0 y \( \frac{3}{2} \)</span>
                                </label>
                            </div>
                        </div>
                        <div class="question-item">
                            <p class="question-text">7.-Encuentre la solución al sistema de ecuaciones lineales representado por las rectas:</p>
                            <p class="equation">
                                \( x + 2y = 1 \)<br>
                                \( 2x - y = 4 \)
                            </p>
                            <br>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question7" value="a">
                                    <span>\( P\left( -\frac{9}{5}, \frac{2}{5} \right) \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question7" value="b">
                                    <span>\( P\left( -\frac{9}{5}, -\frac{2}{5} \right) \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question7" value="c">
                                    <span>\( P\left( \frac{9}{5}, -\frac{2}{5} \right) \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question7" value="d">
                                    <span>\( P\left( \frac{9}{5}, \frac{2}{5} \right) \)</span>
                                </label>
                            </div>
                        </div>
                        <div class="question-item">
                            <p class="question-text">8.-Factorice la siguiente expresión:</p>
                            <p class="equation">\( y^2 + yx + yz + xz \)</p>
                            <br>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question8" value="a">
                                    <span>\( z(y + x)^2 \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question8" value="b">
                                    <span>\( (y - x)(y + z) \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question8" value="c">
                                    <span>\( (y + x)(y - z) \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question8" value="d">
                                    <span>\( (y + x)(y + z) \)</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">9.-Realice la siguiente división de polinomios:</p>
                            <p class="equation">\( (x^3 - 2x^2 + x + 1) \div (x + 1) \)</p>
                            <br>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question9" value="a">
                                    <span>\( x^2 - 3x + 4 - \frac{3x - 1}{x + 1} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question9" value="b">
                                    <span>\( x^2 + 3x + 4 - \frac{3x + 1}{x + 1} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question9" value="c">
                                    <span>\( x^2 - 3x + 4 - \frac{3x + 1}{x + 1} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question9" value="d">
                                    <span>\( x^2 - 3x + 4 + \frac{3x + 1}{x + 1} \)</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">10.-Determine el valor de \( x \) para la siguiente expresión:</p>
                            <p class="equation">\( \log_2(3x + 4) - 1 = \log_2(x + 1) \)</p>
                            <br>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question10" value="a">
                                    <span>\( x = -1 \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question10" value="b">
                                    <span>\( x = -2 \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question10" value="c">
                                    <span>\( x = 2 \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question10" value="d">
                                    <span>\( x = 0 \)</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">11.-Las dimensiones de un cilindro son las que se muestran en la figura. Calcule el polinomio que representa su volumen:</p>

                            <div class="image-container">
                                <img src="../imagenes/cilindro.png" alt="Dimensiones del cilindro" style="width:60%;height:60%;">
                            </div>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question11" value="a">
                                    <span>\( \frac{\pi}{4} (x^3 - x^2 + 2x + 4) \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question11" value="b">
                                    <span>\( \frac{\pi}{4} (x^3 - 2x + 4) \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question11" value="c">
                                    <span>\( 4\pi (x^3 - x^2 + 2x + 4) \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question11" value="d">
                                    <span>\( \frac{\pi}{4} (x^3 - x^2 + 4) \)</span>
                                </label>
                            </div>
                        </div>


                        <div class="question-item">
                            <p class="question-text">12.-A partir de la función \( f(x) = \sqrt{4 - (x - 1)^2} \), el valor ___ perteneciente a su dominio da como resultado 2.</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question12" value="a">
                                    <span>\( x = 2 \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question12" value="b">
                                    <span>\( x = -1 \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question12" value="c">
                                    <span>\( x = -2 \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question12" value="d">
                                    <span>\( x = 1 \)</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">13.-Encuentre el valor de \( y \), a partir del siguiente sistema de ecuaciones.</p>
                            <p class="equations">
                                \( x + y - z = 2 \) <br>
                                \( x + y + z = 4 \) <br>
                                \( 2x - y = 12 \)
                            </p>
                            <br>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question13" value="a">
                                    <span>1</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question13" value="b">
                                    <span>-2</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question13" value="c">
                                    <span>5</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question13" value="d">
                                    <span>3</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">14.-Desarrolle la siguiente expresión algebraica: \( (5x^3y^3 + 3)^2 \).</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question14" value="a">
                                    <span>\( 25x^6y^6 + 15x^3y^3 + 3 \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question14" value="b">
                                    <span>\( 25x^6y^6 + 30x^3y^3 + 9 \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question14" value="c">
                                    <span>\( 25x^3y^3 + 30x^6y^6 + 9 \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question14" value="d">
                                    <span>\( 25x^3y^3 + 30x^3y^3 + 9 \)</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">15.-Exprese en lenguaje algebraico la ecuación que representa la siguiente relación matemática: </p>

                            <p>“El cuadrado del incremento de un número sobre el decremento del mismo número”</p>
                            <br>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question15" value="a">
                                    <span>\( \frac{(x+1)^2}{x-1} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question15" value="b">
                                    <span>\( \frac{x+1}{x-1} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question15" value="c">
                                    <span>\( (x+1) + (x-1) \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question15" value="d">
                                    <span>\( \frac{x-1}{x+1} \)</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">16.- La identidad \( 1 + \tan^2 x = \_\_\_ \), es una de las identidades trigonométricas Pitagóricas.</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question16" value="a">
                                    <span>\( \sec^2 x \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question16" value="b">
                                    <span>\( \sec x \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question16" value="c">
                                    <span>\( \csc^2 x \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question16" value="d">
                                    <span>\( \cot^2 x \)</span>
                                </label>
                            </div>
                        </div>
                        <div class="question-item">
                            <p class="question-text">17.- Demuestre que si dos triángulos \( ABC \) y \( A'B'C' \) son semejantes, entonces sus perímetros son proporcionales.</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question17" value="a">
                                    <span>\( S_{ABC} = a^2 \, S_{A'B'C'} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question17" value="b">
                                    <span>\( S_{ABC} = a \, S_{A'B'C'} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question17" value="c">
                                    <span>\( S_{ABC} = a - S_{A'B'C'} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question17" value="d">
                                    <span>\( S_{ABC} = a + S_{A'B'C'} \)</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">18.- Calcule el área sombreada de la figura que se muestra a continuación:</p>
                            <!-- Espacio para la imagen -->
                            <div class="image-container">
                                <img src="../imagenes/cuadrado.png" alt="Figura para calcular el área sombreada" style="width:60%;height:60%;">
                            </div>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question18" value="a">
                                    <span>\( 36 - 9\pi \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question18" value="b">
                                    <span>\( 16 - \frac{9}{2}\pi \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question18" value="c">
                                    <span>\( 36 - \frac{9}{2}\pi \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question18" value="d">
                                    <span>\( 36 + \frac{9}{2}\pi \)</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">19.- Teniendo en cuenta que los arcos \( DE \) y \( AC \) tienen una amplitud de 200° y 40°, calcule el ángulo \( ABC \).</p>

                            <!-- Espacio para la imagen -->
                            <div class="image-container">
                                <img src="../imagenes/geometria.png" alt="Figura relacionada con los arcos DE y AC" style="width:60%;height:60%;">
                            </div>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question19" value="a">
                                    <span>50°</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question19" value="b">
                                    <span>60°</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question19" value="c">
                                    <span>70°</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question19" value="d">
                                    <span>80°</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">20.-El profesor de matemáticas les ha impuesto un reto a sus estudiantes y solo pueden emplear una cinta métrica de 1 metro. Deben calcular la altura del edificio más alto de la escuela. A las 4:30 pm la sombra del edificio mide 1.5 metros, mientras que la sombra de uno de los estudiantes mide 60 cm. Si la altura del estudiante es de 1.7 metros, ¿cuál es la altura del edificio?</p>


                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question20" value="a">
                                    <span>5.25 m</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question20" value="b">
                                    <span>4.25 m</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question20" value="c">
                                    <span>3.25 m</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question20" value="d">
                                    <span>1.25 m</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">21.-Obtenga el valor de evaluar la función \( f(x) = \ln(x^2 - 3) \), cuando \( x = -2 \).</p>



                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question21" value="a">
                                    <span>\( \ln(0) \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question21" value="b">
                                    <span>0</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question21" value="c">
                                    <span>\( \infty \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question21" value="d">
                                    <span>No existe</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">22.- Identificar cuál es la identidad trigonométrica para el coseno de la suma de ángulos.</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question22" value="a">
                                    <span>\( \cos(x + y) = \cos(x) \cos(y) - \sin(x) \sin(y) \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question22" value="b">
                                    <span>\( \cos(x + y) = \cos(x) \cos(y) + \sin(x) \sin(y) \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question22" value="c">
                                    <span>\( \cos(x + y) = \cos(x) \sin(y) - \sin(x) \cos(y) \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question22" value="d">
                                    <span>\( \cos(x + y) = \cos(x) \sin(y) + \sin(x) \cos(y) \)</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">23.- Dadas dos rectas en el plano, éstas son ____________ entre sí cuando sus pendientes cumplen la siguiente propiedad: \( m_1 = -\frac{1}{m_2} \).</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question23" value="a">
                                    <span>Paralelas</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question23" value="b">
                                    <span>Iguales</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question23" value="c">
                                    <span>Perpendiculares</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question23" value="d">
                                    <span>Coplanares</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">24.-El punto por el que pasan las medianas de un triángulo recibe el nombre de…</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question24" value="a">
                                    <span>Incentro</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question24" value="b">
                                    <span>Centro</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question24" value="c">
                                    <span>Baricentro</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question24" value="d">
                                    <span>Ortocentro</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">25.-Calcule el o los valores de \( x \) que satisface la siguiente ecuación:</p>
                            <p class="equation"> $$ 4^{\frac{x + 1}{x - 1}} = 16^{x - 1} $$</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question25" value="a">
                                    <span>\( x = 1 \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question25" value="b">
                                    <span>\( x = 1, x = \frac{1}{2} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question25" value="c">
                                    <span>\( x = -1, x = -\frac{1}{2} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question25" value="d">
                                    <span>\( x = 1, x = -\frac{1}{2} \)</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">26.-Calcule el valor de la inversión \( P \) a la que se suman intereses simples \( i \) durante \( n \) períodos. ¿Cuál de las siguientes ecuaciones representa esto?</p>
                            <p class="equation"> $$ S = P(1 + ni) $$ </p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question26" value="a">
                                    <span> $$ S = P(1 + n + i) $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question26" value="b">
                                    <span> $$ S = P(1 + i)^n $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question26" value="c">
                                    <span> $$ S = Pni $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question26" value="d">
                                    <span> $$ S = P(1 + n i) $$ </span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">27.- Una compañía ha estado estudiando un modelo matemático que le permita a sus analistas obtener un modelo matemático de las ventas. Dicha ecuación es \( V = 1.26x^{1.5} + 50 \), donde \( x \) se mide en años y \( V \) en millones de ventas. ¿Cuántas ventas concretadas tendría la empresa para el año 4?</p>
                            <p class="equation"> $$ V = 1.26 \cdot 4^{1.5} + 50 $$ </p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question27" value="a">
                                    <span>70 millones</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question27" value="b">
                                    <span>65 millones</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question27" value="c">
                                    <span>60 millones</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question27" value="d">
                                    <span>55 millones</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">28.-Encuentre los valores de \( x \) y \( y \) que satisfacen el siguiente sistema de ecuaciones:</p>
                            <p class="equation"> 
                                $$ 
                                \begin{cases} 
                                x + y = 5 \\ 
                                2x - 5y = 6 
                                \end{cases} 
                                $$ 
                            </p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question28" value="a">
                                    <span> \( x = \frac{31}{7}, y = \frac{4}{7} \) </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question28" value="b">
                                    <span> \( x = -\frac{31}{7}, y = \frac{4}{7} \) </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question28" value="c">
                                    <span> \( x = \frac{31}{7}, y = -\frac{4}{7} \) </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question28" value="d">
                                    <span> \( x = 0, y = \frac{4}{7} \) </span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">29.- Obtenga el resultado de la siguiente división de polinomios:</p>
                            <p class="equation"> 
                                $$ 
                                \frac{x^3 + 2x^2 + x - 1}{x + 1} 
                                $$ 
                            </p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question29" value="a">
                                    <span> $$ x^2 + x + 1 $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question29" value="b">
                                    <span> $$ x^2 + x - 1 $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question29" value="c">
                                    <span> $$ x^2 + x $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question29" value="d">
                                    <span> $$ x^2 + x - \frac{1}{x + 1} $$ </span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">30.- Calcule el diferencial de la función \( f(x) = \frac{1}{x^2 + 1} \).</p>


                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question30" value="a">
                                    <span> $$ -\frac{2x}{(x^2 + 1)^2} \, dx $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question30" value="b">
                                    <span> $$ -\frac{(x^2 + 1)^2}{2x} \, dx $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question30" value="c">
                                    <span> $$ -\frac{x}{(x^2 + 1)^2} \, dx $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question30" value="d">
                                    <span> $$ -\frac{2x^2}{x^2 + 1} \, dx $$ </span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">31.- Obtenga la integral que permite calcular la longitud de arco para la curva \( y = \ln(x) \), desde \( x = 1 \) hasta \( x = 2 \).</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question31" value="a">
                                    <span>$$ L = \int_1^2 \frac{x}{\sqrt{1+x^2}} dx $$</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question31" value="b">
                                    <span> $$ L = \int_2^1 \frac{\sqrt{1+x^2}}{x} dx $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question31" value="c">
                                    <span> $$ L = \int_1^2 \frac{\sqrt{1-x^2}}{x} dx $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question31" value="d">
                                    <span> $$ L = \int_1^2 \frac{\sqrt{1+x^2}}{x} dx $$ </span>
                                </label>
                            </div>
                        </div>
                        <div class="question-item">
                            <p class="question-text">32.-Resuelva la integral \( \int x \sin(x^2 + 1) \, dx \).</p>


                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question32" value="a">
                                    <span> $$ -\frac{1}{2} \sin(x^2 + 1) + C $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question32" value="b">
                                    <span> $$ -\sin(x^2 + 1) + C $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question32" value="c">
                                    <span> $$ \cos(x^2 + 1) + C $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question32" value="d">
                                    <span> $$ -\frac{1}{2} \cos(x^2 + 1) + C $$ </span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">33.- Dada la función \( g(x) = x^2 + 1 \), ¿cuál de las siguientes opciones permite calcular su derivada por definición?</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question33" value="a">
                                    <span> $$ \lim_{\Delta h \to 0} \frac{(x+\Delta h)^2+1-x^2-1}{\Delta h+x} $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question33" value="b">
                                    <span>  $$ \lim_{\Delta h \to 0} \frac{(x+\Delta h)^2+1-x^2-1}{\Delta h} $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question33" value="c">
                                    <span>  $$ \lim_{\Delta h \to 0} \frac{\Delta h^2+1-x^2-1}{x} $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question33" value="d">
                                    <span>  $$ \lim_{\Delta h \to 0} \frac{\Delta h^2+1-x^2-1}{\Delta h} $$</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">34.- Calcule la segunda derivada de \( y = e^{\cos(x)} \).</p>


                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question34" value="a">
                                    <span> $$ e^{\cos(x)} \sin^2(x) - e^{\cos(x)} \cos(x) $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question34" value="b">
                                    <span> $$ e^{\cos(x)} \sin^2(x) + e^{\cos(x)} \cos(x) $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question34" value="c">
                                    <span> $$ e^{\cos(x)} \sin(x) + e^{\cos(x)} \cos(x) $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question34" value="d">
                                    <span> $$ e^{\cos(x)} \sin(x) - e^{\cos(x)} \cos^2(x) $$ </span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">35.- Calcule la derivada de \( y = \ln(x^2 + 1) \).</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question35" value="a">
                                    <span> $$ y' = -\frac{x}{x^2 + 1} $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question35" value="b">
                                    <span> $$ y' = -\frac{2x}{x^2 + 1} $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question35" value="c">
                                    <span> $$ y' = \frac{2x}{x^2 - 1} $$ </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question35" value="d">
                                    <span> $$ y' = \frac{2x}{x^2 + 1} $$ </span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">36.- En estadística descriptiva, la moda es un parámetro de tendencia central que caracteriza al evento...</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question36" value="a">
                                    <span> Menos común de una población en estudio </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question36" value="b">
                                    <span> Más común de una población en estudio </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question36" value="c">
                                    <span> Que más se desvía de la media </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question36" value="d">
                                    <span> Que representa una ocurrencia mayor a los 3 \( \sigma \) </span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">37.- Calcule cuántos códigos de 7 símbolos se pueden formar con las letras A, B, C, D, E, F y G.</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question37" value="a">
                                    <span> 4040 </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question37" value="b">
                                    <span> 5050 </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question37" value="c">
                                    <span> 5040 </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question37" value="d">
                                    <span> 4050 </span>
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
                            <h2 class="section-title">Sección 2: Competencia escrita</h2>
                            <p class="section-subtitle">Preguntas 38-58</p>
                        </div>

                        <div class="question-item">
                            <p class="question-text">38.- Indicar la opción escrita correctamente.</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question38" value="a">
                                    <span> Le dijo toda la verdad a sus compañeros </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question38" value="b">
                                    <span> Para ganar deben pegarle fuerte a las pelotas </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question38" value="c">
                                    <span> Toda la manada de lobos atravesó el bosque sigilosamente </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question38" value="d">
                                    <span> Quien quiera que sean los culpables, habrá una consecuencia </span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">39.- Seleccionar la opción que complete de forma correcta la siguiente oración:</p>
                            <p class="equation"> "Pero ________ me hizo enojar fue tu prima, no tú." </p>
                            <br>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question39" value="a">
                                    <span> quien </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question39" value="b">
                                    <span> lo que </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question39" value="c">
                                    <span> la cual </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question39" value="d">
                                    <span> en donde </span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">40- Seleccionar la opción con un error de redacción:</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question40" value="a">
                                    <span> Aquello son las cosas por las que lloramos </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question40" value="b">
                                    <span> Los deberes es la página 25 del libro de Química </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question40" value="c">
                                    <span> Un grupo de ladrones ha sido detenido por los policías </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question40" value="d">
                                    <span> La mitad de los exploradores regresó cansada y sedienta </span>
                                </label>
                            </div>
                        </div>
                        <div class="question-item">
                            <p class="question-text">41.-Identificar el fragmento del siguiente texto con un error:</p>
                            <p class="equation">
                                Yo creo que en la tienda nueva se vende mucho queso y jamón [1] porque la gente, después de hacer largas filas y por mucho tiempo, compran una gran cantidad de esos productos [2]. La tienda adquirió popularidad después de que en la plaza central habían anuncios promocionales de esta [3], por lo que no cabe duda de que esfuerzo, constancia y visión es indispensable para el éxito de un negocio [4].
                            </p>
                            <BR>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question41" value="a">
                                    <span> 1 </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question41" value="b">
                                    <span> 2 </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question41" value="c">
                                    <span> 3 </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question41" value="d">
                                    <span> 4 </span>
                                </label>
                            </div>
                        </div>


                        <div class="question-item">
                            <p class="question-text">42.-¿En qué opción se encuentra la síntesis del siguiente texto si este está formado por una tesis, antítesis y síntesis?</p>
                            <p class="equation">
                                Antes de comprar una crema facial que contenga ácido hialurónico es importante revisar la lista de ingredientes de la misma para asegurarse de que tenga la cantidad adecuada de este ingrediente porque sólo así actuará efectivamente en la piel, ya que recientemente se ha popularizado el uso de cremas faciales con ácido hialurónico, e incluso, son consideradas como la mejor opción si se busca obtener grandes beneficios para la piel, pero omiten mencionar que no todas las marcas incluyen el suficiente ácido en la formulación y, por lo tanto, no se verán los resultados esperados.
                            </p>
                            <BR>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question42" value="a">
                                    <span> Las mejores cremas faciales con mayores beneficios para la piel son las que contienen ácido hialurónico </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question42" value="b">
                                    <span> Las cremas faciales con la cantidad correcta de ácido hialurónico producen beneficios para la piel </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question42" value="c">
                                    <span> La publicidad de las cremas faciales es engañosa para vender más y así obtener más ganancias monetarias </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question42" value="d">
                                    <span> No todas las cremas faciales con ácido hialurónico contienen la cantidad necesaria para producir beneficios en la piel </span>
                                </label>
                            </div>
                        </div>
                        <div class="question-item">
                            <p class="question-text">43.- ¿Cuál es la idea principal del siguiente texto?</p>
                            <p class="equation">
                                En África central, el número uno se dice tok, tek o dik. Muchas lenguas asiáticas (y sí, también americanas) utilizan tik para el dedo índice. Y en el indoeuropeo ancestral, deik significaba señalar con el dedo (de ahí daktulos, digitus, doigt o dedo). Seguramente un testimonio de nuestro origen común. Es el poder de la lengua.
                            </p>
                            <BR>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question43" value="a">
                                    <span> El poder de la lengua </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question43" value="b">
                                    <span> Las coincidencias lingüísticas </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question43" value="c">
                                    <span> El origen común de algunas lenguas </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question43" value="d">
                                    <span> La influencia del nombre del número uno </span>
                                </label>
                            </div>
                        </div>


                        <div class="question-item">
                            <p class="question-text">44.- ¿En qué opción la redacción del texto dificulta más la lectura del mismo?</p>
                            <p class="equation">
                                Los esquimales tienen centenares de palabras diferentes para distinguir entre los distintos matices del blanco de la nieve; por otro lado, los rusos distinguen varios tipos de azul que los hablantes del español denominan del mismo modo.
                            </p>
                            <BR>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question44" value="a">
                                    <span> Los esquimales tienen centenares de palabras diferentes para distinguir entre los distintos matices del blanco de la nieve; por otro lado, los rusos distinguen varios tipos de azul que los hablantes del español denominan del mismo modo. </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question44" value="b">
                                    <span> Los esquimales tienen centenares de palabras diferentes para distinguir entre los distintos matices del blanco de la nieve. Los rusos distinguen varios tipos de azul. Los hablantes del español denominan del mismo modo a todos los tipos de azul. </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question44" value="c">
                                    <span> Los esquimales, por ejemplo, tienen centenares de palabras diferentes para distinguir entre los distintos matices del blanco de la nieve. Los rusos distinguen varios tipos de azul. Los hablantes del español denominan del mismo modo a todos los matices de azul. </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question44" value="d">
                                    <span> Los esquimales, por ejemplo, tienen centenares de palabras diferentes para distinguir entre los distintos matices del blanco de la nieve. Los rusos distinguen varios tipos de azul que sin embargo, los hablantes del español denominamos del mismo modo. </span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">45.- Identificar la oración mejor redactada.</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question45" value="a">
                                    <span> Juan instaló la tubería del gas desde ayer </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question45" value="b">
                                    <span> Mi papá puso un árbol de naranjas en el jardín </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question45" value="c">
                                    <span> El agua es de las cosas que más debemos cuidar </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question45" value="d">
                                    <span> Sus hermanos le hicieron un pastel para su cumpleaños </span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">46.- De acuerdo con el contexto del siguiente fragmento, reconoce el par de sinónimos que se encuentran en él.</p>
                            <p class="equation">
                                Cuando el frío del invierno se va junto con melancolía su blanco velo, llega la primavera y todos queremos disfrutar de un helado, pero claro, aunque nos produzca tristeza, no hay que abusar porque el frío afecta al sistema nervioso y se ve alterado, ya que provoca dolor de cabeza.
                            </p>
                            <BR>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question46" value="a">
                                    <span> Frío – helado </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question46" value="b">
                                    <span> Blanco – claro </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question46" value="c">
                                    <span> Nervioso – alterado </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question46" value="d">
                                    <span> Melancolía – tristeza </span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">47.- Completar con las palabras adecuadas el texto para que mantenga un sentido coherente.</p>
                            <p class="equation">
                                Una __________ que __________ el agua, _________ el ___________ y espera cinco minutos.
                            </p>
                            <BR>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question47" value="a">
                                    <span> ves – hierba – echa – azar </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question47" value="b">
                                    <span> vez – hierba – hecha – azar </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question47" value="c">
                                    <span> vez – hierva – echa – azahar </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question47" value="d">
                                    <span> ves – hierva – hecha – azahar </span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">48.- Indicar la opción con un error de ortografía.</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question48" value="a">
                                    <span> Mis mejores amigos son el enano y el pelusa </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question48" value="b">
                                    <span> El resumen de Marco es completamente sucinto </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question48" value="c">
                                    <span> Me encantó el libro Guía del autoestopista galáctico de Douglas Adams </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question48" value="d">
                                    <span> Juan siempre termina súper exhausto después de hacer dos horas de ejercicio </span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">49.- Completar los espacios del cuento Pomposo funeral de Carlos Alberto Agudelo Arcila con la letra correcta.</p>
                            <p class="equation">
                                Después de que el ___umo Pontífice infiriera que el ___ancudo lleva___a sangre de su sangre, resol___ió hacerle un po___poso funeral.
                            </p>
                            <BR>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question49" value="a">
                                    <span> Z – s – v – b – n </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question49" value="b">
                                    <span> Z – z – v – v – n </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question49" value="c">
                                    <span> S – s – b – b – m </span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question49" value="d">
                                    <span> S – z – b – v – m </span>
                                </label>
                            </div>
                        </div>
                        <div class="question-item">
                            <p class="question-text">50.- Relacionar el tipo de texto con su ejemplo correspondiente:</p>
                            <div class="options-container">
                                <table border="1" style="margin-bottom: 20px;">
                                    <tr>
                                        <th>Tipos de texto</th>
                                        <th>Ejemplos</th>
                                    </tr>
                                    <tr>
                                        <td>1. Legal</td>
                                        <td>A. Aquel hombre era invisible, pero nadie se percató de ello.</td>
                                    </tr>
                                    <tr>
                                        <td>2. Literario</td>
                                        <td>B. Tropas gubernamentales sirias recuperan la ciudad de Alepo.</td>
                                    </tr>
                                    <tr>
                                        <td>3. Informal</td>
                                        <td>C. Los peatones deben guiar su circulación bajo las siguientes reglas.</td>
                                    </tr>
                                    <tr>
                                        <td>4. Periodístico</td>
                                        <td>D. Ya te la sabes: Camarón que se duerme, se lo lleva la corriente.</td>
                                    </tr>
                                </table>
                                <div class="options">
                                    <label class="option-item">
                                        <input type="radio" name="question50" value="a">
                                        <span>1. 1C, 2D, 3A, 4B</span>
                                    </label>
                                    <label class="option-item">
                                        <input type="radio" name="question50" value="b">
                                        <span>2. 1B, 2A, 3D, 4C</span>
                                    </label>
                                    <label class="option-item">
                                        <input type="radio" name="question50" value="c">
                                        <span>3. 1C, 2A, 3D, 4B</span>
                                    </label>
                                    <label class="option-item">
                                        <input type="radio" name="question50" value="d">
                                        <span>4. 1B, 2D, 3A, 4C</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="question-item">
                            <p class="question-text">51.-Indicar la opción mejor redactada:</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question51" value="a">
                                    <span>Todos hemos visto un mirrey alguna vez: El típico galán que se siente soñado, pudiente, guapo, bronceado y a la moda: que te saluda diciéndote ¿qué paso paps? De hecho, podríamos decir que el pionero de los mirreyes es el legendario Luis Miguel que hoy ya vive más de restos, de glorias pasadas.</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question51" value="b">
                                    <span>Todos hemos visto un mirrey alguna vez. El típico galán que se siente soñado, pudiente, guapo, bronceado y a la moda, que te saluda diciéndote “¿qué paso paps?” De hecho, podríamos decir que el pionero de los mirreyes es el legendario Luis Miguel, que hoy ya vive más de restos de glorias pasadas.</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question51" value="c">
                                    <span>Todos hemos visto un mirrey alguna vez: el típico galán que se siente soñado, pudiente, guapo, bronceado y a la moda; que te saluda diciéndote “¿Qué paso paps?”. De hecho podríamos decir que el pionero de los mirreyes es, el legendario Luis Miguel, que hoy ya vive más de restos de glorias pasadas.</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question51" value="d">
                                    <span>Todos hemos visto un mirrey alguna vez. El típico galán que se siente: soñado, pudiente, guapo, bronceado y a la moda. Que te saluda diciéndote ¿Qué paso paps?. De hecho, podríamos decir, que el pionero de los mirreyes es: el legendario Luis Miguel, que hoy ya vive más de restos de glorias pasadas.</span>
                                </label>
                            </div>
                        </div>
                        <div class="question-item">
                            <p class="question-text">52.- Indicar los tecnicismos que se encuentran en el siguiente texto:</p>
                            <p class="text-content">Encefalitis espongiforme bovina: Esta enfermedad(1) está producida por Priones(2), éstos son partículas proteicas, muy resistentes(3) que se transmiten en las vacas por alimentarlas con harinas(4) de origen animal que se daban como suplemento proteico(5) y/o mineral. Actualmente es de presentación(6) muy rara y se da por consumir encéfalo(7) o carne con tejido nervioso de los animales afectados(8). Da sintomatología(9) nerviosa y no tiene cura.</p>
                            <p class="citation">Martín, M. (2022). ¿Qué son las zoonosis?. MasScience. Recuperado de https://www.masscience.com/2022/05/21/que-son-las-zoonosis/</p>
                            <br>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question52" value="a">
                                    <span>1, 4, 5, 6</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question52" value="b">
                                    <span>2, 3, 6, 8</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question52" value="c">
                                    <span>1, 3, 5, 7</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question52" value="d">
                                    <span>2, 5, 7, 9</span>
                                </label>
                            </div>
                        </div>
                        <div class="question-item">
                            <p class="question-text">53.-Identificar la referencia APA que corresponde al libro que se presenta a continuación:</p>

                            <!-- Apartado para imagen -->
                            <div class="image-container">

                                <img src="../imagenes/libro.jpg" alt="Don Quijote de la Mancha"  style="width:60%;height:60%;">
                            </div>

                            <p class="text-content">
                                Cervantes, M. de. (2015). Don Quijote de la Mancha. Madrid: Real Academia Española.
                            </p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question53" value="a">
                                    <span>Cervantes, M. de. (2015). Don Quijote de la Mancha. Madrid: Real Academia Española.</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question53" value="b">
                                    <span>De Cervantes, M. (1605). Don Quijote de la Mancha. Madrid: Real Academia Española. 1376 pp.</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question53" value="c">
                                    <span>Cervantes, M. de. (2015). Don Quijote de la Mancha. 1a. ed. Madrid: Instituto Cervantes. 1376 pp.</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question53" value="d">
                                    <span>De Cervantes, M. (1605, 1615, 2015). Don Quijote de la Mancha. 1a. ed. Asociación de Academias de la Lengua Española.</span>
                                </label>
                            </div>
                        </div>
                        <div class="question-item">
                            <p class="question-text">54.- En __________ es donde se exponen las notas y citas que fundamentan el trabajo académico.</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question54" value="a">
                                    <span>la conclusión</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question54" value="b">
                                    <span>la introducción</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question54" value="c">
                                    <span>el aparato crítico</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question54" value="d">
                                    <span>las fuentes de información</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">55.-Ordenar los datos que se presentan a continuación para elaborar correctamente una referencia bibliográfica:</p>

                            <p class="text-content">Optimización de recursos en la industria de Juan Ramos, Erick Álvarez y Francisco J. Benítez, del 2005 por Caligrama en la Cd. De México, México.</p>
                            <br>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question55" value="a">
                                    <span>Ramos, J. et. al. (2005). Optimización de recursos en la industria. México: Caligrama.</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question55" value="b">
                                    <span>Ramos, J., et. al. (2005). Optimización de recursos en la industria. México: Editorial Caligrama.</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question55" value="c">
                                    <span>Ramos, J., Álvarez, E. y Benítez F. J. (2005). Optimización de recursos en la industria. México: Caligrama.</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question55" value="d">
                                    <span>Ramos, J., Álvarez, E. y Benítez F. (2005). Optimización de recursos en la industria. México, Ciudad de México: Caligrama.</span>
                                </label>
                            </div>
                        </div>


                        <div class="question-item">
                            <p class="question-text">56.- Completar el siguiente texto con las palabras adecuadas:</p>

                            <p class="text-content">Hoy vi en las noticias que un alpinista llegó a la cima del Nevado de Toluca a pesar __________ riesgo y dificultades, lo que me inspiró mucho y salí a comprar una chamarra y una bufanda __________ porque ya tengo __________ botas y guantes para escalar.</p>
                            <br>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question56" value="a">
                                    <span>del extraordinario – negras – buenas</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question56" value="b">
                                    <span>del extraordinario – negras – buenos</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question56" value="c">
                                    <span>de los extraordinarios – negra – buenas</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question56" value="d">
                                    <span>de los extraordinarios – negra – buenos</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">57.- Indicar la opción redactada correctamente:</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question57" value="a">
                                    <span>Esta es la lista de ejercicios cuyas soluciones repasamos ayer</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question57" value="b">
                                    <span>Carlos y Romina, que ganaron el concurso, celebrarán a lo grande</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question57" value="c">
                                    <span>Me gusta la gente con quienes salimos de paseo el domingo pasado</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question57" value="d">
                                    <span>Esta es la mochila por la que pagué mucho menos de lo que pensaba</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">58.- Completar la siguiente oración con la forma correcta:</p>

                            <p class="text-content">La inmensa mayoría de los edificios de la cuadra _________ vacíos</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question58" value="a">
                                    <span>eran</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question58" value="b">
                                    <span>está</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question58" value="c">
                                    <span>estaban</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question58" value="d">
                                    <span>estarían</span>
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
                            <p class="section-subtitle">Preguntas 59-79</p>
                        </div>

                        <div class="question-item">
                            <p class="question-text">La biodiversidad abarca la variedad de seres vivos junto con los ecosistemas a los que estos pertenecen, los cuales aportan grandes beneficios a la vida en la Tierra. Recientemente, un conjunto de informes y estudios han alertado sobre el alarmante estado actual de la naturaleza, ya que se encuentra en peligro como se observa en los siguientes gráficos:</p>

                            <p class="text-content">biodiversidad</p>

                            <!-- Apartado para imagen -->
                            <div class="image-container">
                                <p class="image-description">Gráficos sobre el estado de la biodiversidad:</p>
                                <img src="../imagenes/info.jpg" alt="Gráficos de biodiversidad" style="width:60%;height:60%;" />
                            </div>

                            <p class="question-text">59.-El texto anterior cuenta con ____ secciones de desarrollo.</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question59" value="a">
                                    <span>1</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question59" value="b">
                                    <span>2</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question59" value="c">
                                    <span>3</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question59" value="d">
                                    <span>4</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">60.- ¿Qué tipo de relación se observa entre las gráficas del texto?</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question60" value="a">
                                    <span>Secuencial</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question60" value="b">
                                    <span>Cronológica</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question60" value="c">
                                    <span>Comparativa</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question60" value="d">
                                    <span>De contraste</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">61.- Relacionar el tipo de idea con su contenido:</p>


                            <table style="width:100%; border-collapse: collapse; text-align: left;">
                                <thead>
                                    <tr style="background-color: #f2f2f2;">
                                        <th style="border: 1px solid #ddd; padding: 8px;">Tipo de idea</th>
                                        <th style="border: 1px solid #ddd; padding: 8px;">Contenido</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td style="border: 1px solid #ddd; padding: 8px;">1. Tema</td>
                                        <td style="border: 1px solid #ddd; padding: 8px;">A. Dieta a base de plantas.</td>
                                    </tr>
                                    <tr>
                                        <td style="border: 1px solid #ddd; padding: 8px;">2. Idea principal</td>
                                        <td style="border: 1px solid #ddd; padding: 8px;">B. La reducción de la vida silvestre.</td>
                                    </tr>
                                    <tr>
                                        <td style="border: 1px solid #ddd; padding: 8px;">3. Idea secundaria</td>
                                        <td style="border: 1px solid #ddd; padding: 8px;">C. El peligro en el que se encuentra la biodiversidad.</td>
                                    </tr>
                                    <tr>
                                        <td style="border: 1px solid #ddd; padding: 8px;">4. Idea terciaria</td>
                                        <td style="border: 1px solid #ddd; padding: 8px;">D. El gran daño que le hace el hombre a la biodiversidad.</td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question61" value="a">
                                    <span>1D, 2C, 3A, 4B</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question61" value="b">
                                    <span>1C, 2D, 3B, 4A</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question61" value="c">
                                    <span>1D, 2B, 3C, 4A</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question61" value="d">
                                    <span>1C, 2A, 3D, 4B</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">62.- El texto anterior es __________ debido a la forma en que presenta la información.</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question62" value="a">
                                    <span>narrativo</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question62" value="b">
                                    <span>expositivo</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question62" value="c">
                                    <span>descriptivo</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question62" value="d">
                                    <span>argumentativo</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">63.- Indicar las acciones compatibles con el gráfico [2].</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question63" value="a">
                                    <span>Tala de bosques, caza y pesca excesiva</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question63" value="b">
                                    <span>Introducción de especies ajenas, caza y pesca excesiva</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question63" value="c">
                                    <span>Explotación de bosques, uso de hidrocarburos y no reciclar</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question63" value="d">
                                    <span>Quema de cultivos, explotación marina y desperdicio de alimentos</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">64.- ¿Qué idea es congruente con el texto anterior?</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question64" value="a">
                                    <span>Los mamíferos son más propensos a la extinción</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question64" value="b">
                                    <span>Los cambios en el hábitat impulsan la pérdida de biodiversidad</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question64" value="c">
                                    <span>La pérdida de la biodiversidad afecta mucho más a los animales que a las plantas</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question64" value="d">
                                    <span>Modificar los métodos de agricultura es la acción determinante para conservar la biodiversidad</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">65.- De acuerdo con el texto, ¿qué inferencia es correcta?</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question65" value="a">
                                    <span>Actualmente estamos presenciando una era de extinción</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question65" value="b">
                                    <span>Los científicos solo estudian la extinción de los mamíferos</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question65" value="c">
                                    <span>El Reino Unido es el territorio que más hábitat natural ha perdido</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question65" value="d">
                                    <span>Las grandes pérdidas económicas motivan el cuidado de la biodiversidad</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">66.- Seleccionar la idea compatible con el gráfico [4].</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question66" value="a">
                                    <span>El ser humano es una especie autodestructiva</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question66" value="b">
                                    <span>Irremediablemente 1 millón de especies van a extinguirse</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question66" value="c">
                                    <span>El hábitat que se perdió nunca va a poder recuperarse</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question66" value="d">
                                    <span>El consumismo es una conducta natural para el ser humano</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">67.- ¿Cuál es la intención comunicativa del texto anterior?</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question67" value="a">
                                    <span>Publicar los resultados de diversas investigaciones de forma práctica</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question67" value="b">
                                    <span>Acercar a todo tipo de público al estudio de la Biología y la Ecología</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question67" value="c">
                                    <span>Educar a la población para que pueda transmitir la información de manera clara y objetiva</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question67" value="d">
                                    <span>Crear conciencia del daño que se le está haciendo al planeta para dejar de perjudicarlo</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">68.- Seleccionar la conclusión del texto anterior:</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question68" value="a">
                                    <span>La modificación del hábitat es la principal causa de la pérdida de la biodiversidad</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question68" value="b">
                                    <span>El daño que el ser humano le ha causado a la biodiversidad es irreversible y definitivo</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question68" value="c">
                                    <span>La extinción de los animales es un tema que le es completamente indiferente para el ser humano</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question68" value="d">
                                    <span>A pesar de la pérdida de la biodiversidad, aún puede restaurarse a través del compromiso y acciones concisas</span>
                                </label>
                            </div>
                        </div>
                        <b><strong>INSTRUCCIONES:</strong> Lee cuidadosamente el siguiente texto y analiza los fragmentos marcados en negrita y numerados del (1) al (4). Estos serán importantes para responder las preguntas que se presentarán a continuación.</b>

                        <p class="paragraph">[1] Había empezado a leer la novela unos días antes. La abandonó por negocios urgentes, volvió a abrirla cuando regresaba en tren a la finca; se dejaba interesar lentamente por la trama, por el dibujo de los personajes. Esa tarde, después de escribir una carta a su apoderado y discutir con el mayordomo una cuestión de aparcerías volvió al libro en la tranquilidad del estudio que miraba hacia el parque de los robles. Arrellanado en su sillón favorito de espaldas a la puerta que lo hubiera molestado como una irritante posibilidad de intrusiones, dejó que su mano izquierda acariciara una y otra vez el terciopelo verde y se puso a leer los últimos capítulos. Su memoria retenía sin esfuerzo los nombres y las imágenes de los protagonistas; la ilusión novelesca lo ganó casi en seguida. Gozaba del placer casi perverso de irse desgajando línea a línea de lo que lo rodeaba, y sentir a la vez que su cabeza descansaba cómodamente en el terciopelo del alto respaldo, que los cigarrillos seguían al alcance de la mano, que más allá de los ventanales danzaba el aire del atardecer bajo los robles. Palabra a palabra, absorbido por la sórdida disyuntiva de los héroes, dejándose ir hacia las imágenes que se concertaban y adquirían color y movimiento, fue testigo del último encuentro en la cabaña del monte. <strong>Primero entraba la mujer, recelosa; ahora llegaba el amante, lastimada la cara por el chicotazo de una rama</strong>(1). Admirablemente restallaba ella la sangre con sus besos, pero él rechazaba las caricias, no había venido para repetir las ceremonias de una pasión secreta, protegida por un mundo de hojas secas y senderos furtivos. <strong>El puñal se entibiaba contra su pecho, y debajo latía la libertad agazapada</strong>(2). Un diálogo anhelante corría por las páginas como un arroyo de serpientes, y se sentía que todo estaba decidido desde siempre. Hasta esas caricias que enredaban el cuerpo del amante como queriendo retenerlo y disuadirlo, dibujaban abominablemente la figura de otro cuerpo que era necesario destruir. Nada había sido olvidado: coartadas, azares, posibles errores. A partir de esa hora cada instante tenía su empleo minuciosamente atribuido. El doble repaso despiadado se interrumpía apenas para que una mano acariciara una mejilla. Empezaba a anochecer.</p>

                        <p class="paragraph">[2] Sin mirarse ya, atados rígidamente a la tarea que los esperaba, se separaron en la puerta de la cabaña. Ella debía seguir por la senda que iba al norte. Desde la senda opuesta él se volvió un instante para verla correr con el pelo suelto. <strong>Corrió a su vez, parapetándose en los árboles y los setos, hasta distinguir en la bruma malva del crepúsculo la alameda que llevaba a la casa</strong>(3). Los perros no debían ladrar, y no ladraron. El mayordomo no estaría a esa hora, y no estaba. Subió los tres peldaños del porche y entró. Desde la sangre galopando en sus oídos le llegaban las palabras de la mujer: primero una sala azul, después una galería, una escalera alfombrada. En lo alto, dos puertas. Nadie en la primera habitación, nadie en la segunda. La puerta del salón, y entonces el puñal en la mano. <strong>La luz de los ventanales, el alto respaldo de un sillón de terciopelo verde, la cabeza del hombre en el sillón leyendo una novela</strong>(4).</p>
                        <div class="question-item">
                            <p class="question-text">69.- Indicar el superíndice que corresponde al fragmento del texto que contiene el clímax del texto.</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question69" value="a">
                                    <span>1</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question69" value="b">
                                    <span>2</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question69" value="c">
                                    <span>3</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question69" value="d">
                                    <span>4</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">70.- Ordenar cronológicamente las acciones narradas en la lectura.</p>
                            <p><strong>Eventos:</strong></p>
                            <ul>
                                <li>1.-Los amantes planean asesinar al esposo de la mujer.</li>
                                <li>2.-El protagonista comienza a leer una novela.</li>
                                <li>3.-El amante asesina al esposo de la mujer.</li>
                                <li>4.-Se establece una relación entre una mujer casada y un hombre.</li>
                                <li>5.-El protagonista retoma la lectura de la novela.</li>
                            </ul>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question70" value="a">
                                    <span>2, 4, 1, 5, 3</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question70" value="b">
                                    <span>4, 2, 1, 3, 5</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question70" value="c">
                                    <span>2, 1, 4, 3, 5</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question70" value="d">
                                    <span>4, 1, 2, 5, 3</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">71.- ¿Qué idea explica la razón de que el título del texto sea “Continuidad de los parques”?</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question71" value="a">
                                    <span>La pasión secreta de los amantes estaba protegida por mundo de hojas secas y senderos furtivos</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question71" value="b">
                                    <span>El protagonista continúa la lectura de la novela en el estudio que miraba hacia el parque de los robles</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question71" value="c">
                                    <span>La esposa y el amante se encontraban en la cabaña del monte que se encuentra en el parque de los robles</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question71" value="d">
                                    <span>El autor usa la figura del parque como referente para establecer la continuidad entre las ficciones narradas</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">72.- El texto anterior es ______ debido a las características que presenta.</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question72" value="a">
                                    <span>un mito</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question72" value="b">
                                    <span>un cuento</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question72" value="c">
                                    <span>una novela</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question72" value="d">
                                    <span>una leyenda</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">73.- ¿Qué idea es compatible con el texto anterior?</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question73" value="a">
                                    <span>El asesinato del esposo iba a ocurrir antes, pero se pospuso debido a negocios urgentes</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question73" value="b">
                                    <span>La esposa y el amante habían planeado desde siempre asesinar al esposo para poder estar juntos</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question73" value="c">
                                    <span>La novela que leía el protagonista estaba tan bien escrita que lo atrapó en la realidad ficticia</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question73" value="d">
                                    <span>El lector de la novela tiene buena memoria porque retenía sin esfuerzo los nombres de los protagonistas</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">74.- Seleccionar la afirmación que es coherente con la lectura anterior.</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question74" value="a">
                                    <span>El lector tenía un carácter irascible y perverso</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question74" value="b">
                                    <span>La esposa realmente no quería asesinar a su esposo</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question74" value="c">
                                    <span>El mayordomo fue despedido ese día para que no estuviera</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question74" value="d">
                                    <span>El amante no estaba muy nervioso porque iba a cometer un crimen</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">75.- De acuerdo con el texto, ¿qué inferencia es correcta?</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question75" value="a">
                                    <span>El lector leía novelas románticas constantemente para poder abstraerse y así olvidar por un momento su ajetreada vida</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question75" value="b">
                                    <span>Los amantes siempre hablaban y repasaban el plan para asesinar al esposo para no olvidar nada ni cometer ningún error</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question75" value="c">
                                    <span>El autor del texto expresa que el protagonista gozaba del placer casi perverso de leer la novela debido al desenlace del texto</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question75" value="d">
                                    <span>El sillón verde estaba colocado con la espalda hacia la puerta porque el lector disfrutaba mucho ver hacia el parque de los robles</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">76.- De la lectura anterior, es posible afirmar que el plano real y el plano ficticio se ___________ por el desenlace del texto.</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question76" value="a">
                                    <span>vinculan</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question76" value="b">
                                    <span>fusionan</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question76" value="c">
                                    <span>confunden</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question76" value="d">
                                    <span>encuentran</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">77.- ¿Por qué los personajes no tienen nombre?</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question77" value="a">
                                    <span>Para poder mantener un texto corto y conciso de fácil lectura para todo público</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question77" value="b">
                                    <span>Porque al autor le interesa más el modo en el que está narrada la historia que la historia misma</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question77" value="c">
                                    <span>Le brinda la oportunidad a los lectores de que le coloquen el nombre que deseen a los personajes</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question77" value="d">
                                    <span>Debido a que el tema del texto gira en torno a las dos ficciones como espacios y no como historias</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">78.- ¿Qué figura retórica se observa en la totalidad del texto?</p>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question78" value="a">
                                    <span>Alegoría</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question78" value="b">
                                    <span>Paradoja</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question78" value="c">
                                    <span>Metáfora</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question78" value="d">
                                    <span>Antítesis</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">79.- ¿Qué tema principal se aborda en el fragmento del texto?</p>


                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question79" value="a">
                                    <span>La confusión entre la realidad y la ficción en la mente del protagonista.</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question79" value="b">
                                    <span>La descripción detallada del entorno y los personajes en la novela.</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question79" value="c">
                                    <span>El amor y la pasión de los personajes principales.</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question79" value="d">
                                    <span>La acción de asesinato y el desenlace trágico en la historia.</span>
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
                            <h2 class="section-title">Sección 4: Reading Comprehension</h2>
                            <p class="section-subtitle">Preguntas 80-90</p>
                        </div>

                        <h1>Mickey Mouse</h1>

                        <p>[1]</p>
                        <p>In 1923, Walt Disney started to make animated movies. They are called cartoons. In the cartoon, people and animals move.</p>

                        <p>[2]</p>
                        <p>They speak with voices recorded by real actors. Walt believed that cartoon movies could be as popular as movies made with actors. To do this, he decided he needed a cartoon hero. He often saw mice running in and out of the old building where he worked. So, he drew a cartoon mouse. It was not exactly like a real mouse. For one thing, it stood on two legs like a human.</p>

                        <p>[3]</p>
                        <p>The public first saw Mickey Mouse in a movie called “Steamboat Willie.” Walt Disney himself provided the voice for Mickey Mouse. The film was produced in 1928. It was a huge success!</p>

                        <div class="question-item">
                            <p class="question-text">80. Walt Disney started making animated movies in nineteen:</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question80" value="a">
                                    <span>Eighteen</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question80" value="b">
                                    <span>Twenty-three</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question80" value="c">
                                    <span>Twenty-seven</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question80" value="d">
                                    <span>Twenty-eight</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">81. What did Walt Disney call animated movies?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question81" value="a">
                                    <span>Films</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question81" value="b">
                                    <span>Movies</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question81" value="c">
                                    <span>Cartoons</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question81" value="d">
                                    <span>Animations</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">82. Walt Disney drew a cartoon mouse because he:</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question82" value="a">
                                    <span>Liked mice</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question82" value="b">
                                    <span>Saw a super mouse</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question82" value="c">
                                    <span>Needed a cartoon hero</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question82" value="d">
                                    <span>Wanted to scare people</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">83. Mickey Mouse differed from a real mouse because it:</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question83" value="a">
                                    <span>Had a long tail</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question83" value="b">
                                    <span>Was smaller in size</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question83" value="c">
                                    <span>Had super powers as a hero</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question83" value="d">
                                    <span>Was similar in shape as a human</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">84. In which movie did Mickey Mouse first appear?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question84" value="a">
                                    <span>Mouse Adventures</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question84" value="b">
                                    <span>Steamboat Willie</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question84" value="c">
                                    <span>Walt’s Mouse</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question84" value="d">
                                    <span>Cartoon Hero</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">85. Who provided the voice for Mickey Mouse in his first cartoon?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question85" value="a">
                                    <span>Its creator</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question85" value="b">
                                    <span>A real mouse</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question85" value="c">
                                    <span>A famous actor</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question85" value="d">
                                    <span>Someone from the public</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">86. “Steamboat Willie” was produced in nineteen:</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question86" value="a">
                                    <span>Twenty-three</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question86" value="b">
                                    <span>Twenty-eight</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question86" value="c">
                                    <span>Forty-one</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question86" value="d">
                                    <span>Thirty</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">87. Walt Disney believed about cartoon movies that they:</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question87" value="a">
                                    <span>Were only for children</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question87" value="b">
                                    <span>Could never be popular</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question87" value="c">
                                    <span>Were better than movies with actors</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question87" value="d">
                                    <span>Could be as popular as movies with actors</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">88. What was Walt Disney’s role in the success of “Steamboat Willie”?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question88" value="a">
                                    <span>Director</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question88" value="b">
                                    <span>Animator</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question88" value="c">
                                    <span>Producer</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question88" value="d">
                                    <span>Voice actor</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">89. What kind of success was “Steamboat Willie”?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question89" value="a">
                                    <span>Small</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question89" value="b">
                                    <span>Limited</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question89" value="c">
                                    <span>Moderate</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question89" value="d">
                                    <span>Enormous</span>
                                </label>
                            </div>
                        </div>
                        <div class="question-item">
                            <p class="question-text">90. Why did Walt Disney create Mickey Mouse?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question90" value="a">
                                    <span>To entertain children</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question90" value="b">
                                    <span>To create a cartoon hero</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question90" value="c">
                                    <span>Because he liked mice</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question90" value="d">
                                    <span>To make a movie about animals</span>
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
                            <h2 class="section-title">Sección 5: Historia </h2>
                            <p class="section-subtitle">Preguntas 91-101</p>
                        </div>


                        <div class="question-item">
                            <p class="question-text">91. El positivismo es la corriente de interpretación histórica cuyo principal representante es ________, de origen francés.</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question91" value="1">
                                    <span>Carlos Marx</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question91" value="2">
                                    <span>Roberto Owen</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question91" value="3">
                                    <span>Augusto Comte</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question91" value="4">
                                    <span>Federico Engels</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">92. Relacionar el aspecto con la característica de los siglos XV y XVI que le corresponde.</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question92" value="1">
                                    <span>1B, 2D, 3A, 4C</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question92" value="2">
                                    <span>1A, 2C, 3B, 4D</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question92" value="3">
                                    <span>1B, 2A, 3D, 4C</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question92" value="4">
                                    <span>1A, 2B, 3C, 4D</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">93. Relacionar el personaje histórico con el factor que favoreció el proceso de la conquista mexicana de los españoles.</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question93" value="1">
                                    <span>1A, 2E, 3C, 4D</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question93" value="2">
                                    <span>1B, 2A, 3D, 4E</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question93" value="3">
                                    <span>1C, 2B, 3E, 4A</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question93" value="4">
                                    <span>1D, 2C, 3A, 4B</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">94. Relacionar el concepto con su característica.</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question94" value="1">
                                    <span>1AC, 2BD</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question94" value="2">
                                    <span>1CB, 2AD</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question94" value="3">
                                    <span>1CD, 2AB</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question94" value="4">
                                    <span>1AD, 2BC</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">95. Ordenar de manera cronológica la redacción de los documentos más representativos de la Guerra de Independencia.</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question95" value="1">
                                    <span>3, 4, 1, 2</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question95" value="2">
                                    <span>2, 3, 4, 1</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question95" value="3">
                                    <span>2, 4, 3, 1</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question95" value="4">
                                    <span>3, 4, 1, 2</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">96. Señalar las características del modelo neoliberal.</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question96" value="1">
                                    <span>1, 5, 4</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question96" value="2">
                                    <span>2, 3, 5</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question96" value="3">
                                    <span>3, 4, 6</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question96" value="4">
                                    <span>4, 5, 6</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">97. Relacionar el grupo con sus características.</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question97" value="1">
                                    <span>1AC, 2BD</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question97" value="2">
                                    <span>1AD, 2CB</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question97" value="3">
                                    <span>1BD, 2AC</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question97" value="4">
                                    <span>1BC, 2AD</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">98. El documento Mc Lane-Ocampo fue firmado en el marco de la Guerra de Reforma pretendiendo:</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question98" value="1">
                                    <span>La participación en el gobierno mexicano a cambio del apoyo militar de Francia.</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question98" value="2">
                                    <span>La cesión de territorio a cambio de un apoyo económico por parte de Estados Unidos.</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question98" value="3">
                                    <span>Conseguir recursos económicos de España a cambio de la condonación de la deuda contraída por México.</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question98" value="4">
                                    <span>Obtener el apoyo y reconocimiento de Estados Unidos a cambio de un libre tránsito por el territorio mexicano.</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">99. Elegir la opción que cuenta con las siguientes características:</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question99" value="1">
                                    <span>Positivismo</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question99" value="2">
                                    <span>Liberalismo</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question99" value="3">
                                    <span>Sindicalismo</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question99" value="4">
                                    <span>Neoliberalismo</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">100. ¿Quién ocupó el cargo de secretario de Hacienda entre los años 1893 y 1911 bajo la presidencia de Porfirio Díaz?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question100" value="1">
                                    <span>Justo Benítez</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question100" value="2">
                                    <span>José Ives Limantour</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question100" value="3">
                                    <span>Matías Romero Avendaño</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question100" value="4">
                                    <span>Manuel Dublán Fernández</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">101. ¿Cuál de los siguientes eventos sucedió durante la crisis del porfiriato?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question101" value="1">
                                    <span>Huelga del Río Blanco</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question101" value="2">
                                    <span>Rebelión de Tomóchic</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question101" value="3">
                                    <span>Movimiento magisterial</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question101" value="4">
                                    <span>Huelga de Nueva Rosita</span>
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
                            <h2 class="section-title">Sección 6: Biologia</h2>
                            <p class="section-subtitle">Preguntas 102-111</p>
                        </div>
                        <div class="question-item">
                            <p class="question-text">102. Las ________________ conectan al útero con los ovarios. Presentan patologías como la salpingitis, la cual es una inflamación de tipo crónica que se da como resultado de diferentes agentes infecciosos en el aparato reproductor de la mujer.</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question102" value="1">
                                    <span>Vagina</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question102" value="2">
                                    <span>Hormonas sexuales</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question102" value="3">
                                    <span>Paredes uterinas</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question102" value="4">
                                    <span>Trompas de Falopio</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">103. La hormona ____________ favorece el desarrollo del aparato reproductor masculino y de los caracteres sexuales secundarios en el varón. Mientras que los _____________ estimulan el crecimiento y desarrollo del aparato reproductor femenino, crecimiento de las mamas y de los caracteres sexuales secundarios en la mujer.</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question103" value="1">
                                    <span>Progesterona – testosterona</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question103" value="2">
                                    <span>Testosterona – estrógenos</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question103" value="3">
                                    <span>Estrógenos – progesterona</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question103" value="4">
                                    <span>Testosterona – progesterona</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">104. Relacionar el tipo de célula con las características morfológicas que le corresponden:</p>

                            <!-- Apartado para la imagen -->
                            <div class="image-container">
                                <img src="../imagenes/biologia.png"width="700" height="300" alt="Imagen de células">
                            </div>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question104" value="1">
                                    <span>1ACE, 2BD</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question104" value="2">
                                    <span>1AD, 2BCE</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question104" value="3">
                                    <span>1DE, 2ABC</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question104" value="4">
                                    <span>1CD, 2ABE</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">105. Seleccione la opción en donde las especies que interactúan establecen una relación de comensalismo:</p>



                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question105" value="1">
                                    <span>Musgo y algas</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question105" value="2">
                                    <span>Pulgas en animales domésticos</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question105" value="3">
                                    <span>Estorninos boyeros y búfalos</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question105" value="4">
                                    <span>Serpientes y ratas</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">106. La segunda línea de defensa para equilibrar los trastornos ácido-base en el organismo es el control de _______________ sobre la concentración de dióxido de carbono en el líquido extracelular:</p>

                            <!-- Apartado para la imagen -->


                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question106" value="1">
                                    <span>Los riñones</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question106" value="2">
                                    <span>El hígado</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question106" value="3">
                                    <span>El bazo</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question106" value="4">
                                    <span>Los pulmones</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">107.-¿Qué concepto de cambio evolutivo representa la siguiente imagen?</p>

                            <!-- Apartado para la imagen -->
                            <div class="image-container">
                                <img src="../imagenes/lagartos.png" alt="Concepto de cambio evolutivo" style="width:60%;height:60%;">
                            </div>

                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question107" value="1">
                                    <span>Adaptación</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question107" value="2">
                                    <span>Equilibrio puntuado</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question107" value="3">
                                    <span>Darwinismo</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question107" value="4">
                                    <span>Gradualismo filético</span>
                                </label>
                            </div>
                        </div>
                        <div class="question-item">
                            <p class="question-text">108.-Forma de distinción de los ecosistemas acuáticos:</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question108" value="1">
                                    <span>Vegetación dominante</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question108" value="2">
                                    <span>Temperatura</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question108" value="3">
                                    <span>Calidad del agua</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question108" value="4">
                                    <span>Salinidad</span>
                                </label>
                            </div>
                        </div>

                        <!-- Pregunta 109 -->
                        <div class="question-item">
                            <p class="question-text">109.-Seleccione uno de los sistemas de representación sexual XO se halla en animales como:</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question109" value="1">
                                    <span>Aves</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question109" value="2">
                                    <span>Mamíferos</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question109" value="3">
                                    <span>Peces</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question109" value="4">
                                    <span>Insectos</span>
                                </label>
                            </div>
                        </div>

                        <!-- Pregunta 110 -->
                        <div class="question-item">
                            <p class="question-text">110.-Seleccione los elementos que forman parte de la materia orgánica presente en el suelo:</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question110" value="1">
                                    <span>Excremento animal, hierro, zinc</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question110" value="2">
                                    <span>Petróleo y materia en descomposición</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question110" value="3">
                                    <span>Materia en descomposición y excremento animal</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question110" value="4">
                                    <span>Petróleo, zinc y minerales</span>
                                </label>
                            </div>
                        </div>

                        <!-- Pregunta 111 -->
                        <div class="question-item">
                            <p class="question-text">111.-En la fermentación del ácido láctico el ácido pirúvico es reducido por ________ para formar ácido láctico:</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question111" value="1">
                                    <span>NADH</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question111" value="2">
                                    <span>ATP</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question111" value="3">
                                    <span>ADH</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question111" value="4">
                                    <span>NADHP</span>
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
                            <h2 class="section-title">Sección 7: Quimica</h2>
                            <p class="section-subtitle">Preguntas 112-129</p>
                        </div>

                        <div class="question-item">
                            <p class="question-text">112. ¿Cuál es la fórmula molecular del agua?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question112" value="a">
                                    <span>H2O</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question112" value="b">
                                    <span>CO2</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question112" value="c">
                                    <span>O2</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question112" value="d">
                                    <span>CH4</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">113. ¿Cuál es el pH del agua pura a 25°C?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question113" value="a">
                                    <span>7</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question113" value="b">
                                    <span>0</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question113" value="c">
                                    <span>14</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question113" value="d">
                                    <span>5</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">114. ¿Cuál de las siguientes es una propiedad física de los ácidos?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question114" value="a">
                                    <span>Tienen sabor amargo</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question114" value="b">
                                    <span>Tienen sabor ácido</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question114" value="c">
                                    <span>Suelen ser de color azul</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question114" value="d">
                                    <span>No reaccionan con metales</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">115. ¿Qué tipo de enlace se forma entre dos átomos de hidrógeno?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question115" value="a">
                                    <span>Enlace iónico</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question115" value="b">
                                    <span>Enlace covalente</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question115" value="c">
                                    <span>Enlace metálico</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question115" value="d">
                                    <span>Enlace de hidrógeno</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">116. ¿Qué gas se libera cuando un ácido reacciona con un metal?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question116" value="a">
                                    <span>Oxígeno</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question116" value="b">
                                    <span>Hidrógeno</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question116" value="c">
                                    <span>Carbono</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question116" value="d">
                                    <span>Nitrógeno</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">117. ¿Qué elemento forma parte de la molécula de hemoglobina?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question117" value="a">
                                    <span>Oro</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question117" value="b">
                                    <span>Hierro</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question117" value="c">
                                    <span>Plata</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question117" value="d">
                                    <span>Cobre</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">118. ¿Cuál es el producto de la reacción entre un ácido y una base?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question118" value="a">
                                    <span>Sal y agua</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question118" value="b">
                                    <span>Gas y agua</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question118" value="c">
                                    <span>Oxígeno y gas</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question118" value="d">
                                    <span>Ácido y base</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">119. ¿Qué es un catalizador en una reacción química?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question119" value="a">
                                    <span>Acelera la reacción sin consumirse</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question119" value="b">
                                    <span>Es un reactivo principal</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question119" value="c">
                                    <span>Reacciona para formar el producto</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question119" value="d">
                                    <span>Hace que la reacción se detenga</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">120. ¿Qué propiedad permite que los gases se expandan para llenar un recipiente?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question120" value="a">
                                    <span>Densidad</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question120" value="b">
                                    <span>Viscosidad</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question120" value="c">
                                    <span>Compresibilidad</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question120" value="d">
                                    <span>Expansión térmica</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">121. ¿Cuál de los siguientes compuestos es un ácido fuerte?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question121" value="a">
                                    <span>Ácido acético</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question121" value="b">
                                    <span>Ácido sulfúrico</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question121" value="c">
                                    <span>Ácido cítrico</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question121" value="d">
                                    <span>Ácido carbónico</span>
                                </label>
                            </div>
                        </div>
                        <div class="question-item">
                            <p class="question-text">122. ¿Qué producto se forma en la siguiente reacción química?</p>
                            <p class="equation">NaOH + HCl → ?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question122" value="a">
                                    <span>NaCl + H2O</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question122" value="b">
                                    <span>NaCl + H2</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question122" value="c">
                                    <span>NaOH + H2O</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question122" value="d">
                                    <span>NaH + HCl</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">123. ¿Cuál es el número de átomos de oxígeno en 2 moles de O2?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question123" value="a">
                                    <span>6.022 x 10²³ átomos</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question123" value="b">
                                    <span>12.044 x 10²³ átomos</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question123" value="c">
                                    <span>6.022 x 10²⁴ átomos</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question123" value="d">
                                    <span>1.204 x 10²⁴ átomos</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">124. Balancea la siguiente ecuación química:</p>
                            <p class="equation">C₄H₁₀ + O₂ → CO₂ + H₂O</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question124" value="a">
                                    <span>2 C₄H₁₀ + 13 O₂ → 8 CO₂ + 10 H₂O</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question124" value="b">
                                    <span>C₄H₁₀ + 5 O₂ → 4 CO₂ + 5 H₂O</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question124" value="c">
                                    <span>C₄H₁₀ + 4 O₂ → 4 CO₂ + 6 H₂O</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question124" value="d">
                                    <span>C₄H₁₀ + 10 O₂ → 8 CO₂ + 8 H₂O</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">125. ¿Cuál es la fórmula molecular del ácido sulfúrico?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question125" value="a">
                                    <span>H₂SO₄</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question125" value="b">
                                    <span>H₂SO₃</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question125" value="c">
                                    <span>H₂O</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question125" value="d">
                                    <span>SO₂</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">126. ¿Cuál es el pH de una solución acuosa de NaOH?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question126" value="a">
                                    <span>7</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question126" value="b">
                                    <span>8</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question126" value="c">
                                    <span>12</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question126" value="d">
                                    <span>14</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">127. Balancea la siguiente ecuación de reacción redox:</p>
                            <p class="equation">Fe + Cl₂ → FeCl₃</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question127" value="a">
                                    <span>2 Fe + 3 Cl₂ → 2 FeCl₃</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question127" value="b">
                                    <span>Fe + 2 Cl₂ → FeCl₃</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question127" value="c">
                                    <span>3 Fe + 2 Cl₂ → 3 FeCl₃</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question127" value="d">
                                    <span>2 Fe + Cl₂ → FeCl₃</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">128. ¿Cuál es el reactivo limitante en la siguiente reacción química?</p>
                            <p class="equation">2 Na + Cl₂ → 2 NaCl</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question128" value="a">
                                    <span>Na</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question128" value="b">
                                    <span>Cl₂</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question128" value="c">
                                    <span>NaCl</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question128" value="d">
                                    <span>Ninguna de las anteriores</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">129. ¿Qué producto se forma en la siguiente reacción?</p>
                            <p class="equation">H₂SO₄ + NaOH → ?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question129" value="a">
                                    <span>Na₂SO₄ + H₂O</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question129" value="b">
                                    <span>NaSO₄ + H₂O</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question129" value="c">
                                    <span>NaHSO₄ + H₂O</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question129" value="d">
                                    <span>NaOH + H₂SO₄</span>
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
                            <h2 class="section-title">Sección 8: Fisica</h2>
                            <p class="section-subtitle">Preguntas 126-143</p>
                        </div>

                        <div class="question-item">
                            <p class="question-text">130. ¿Cuál es la fórmula para calcular la velocidad en el movimiento rectilíneo uniforme (MRU)?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question130" value="a">
                                    <span>v = d/t</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question130" value="b">
                                    <span>v = t/d</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question130" value="c">
                                    <span>v = t * d</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question130" value="d">
                                    <span>v = d * t</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">131. ¿Cómo se calcula la fuerza de gravedad? La fórmula es: \( F = m \cdot g \)</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question131" value="a">
                                    <span>Fuerza = Masa x Aceleración</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question131" value="b">
                                    <span>Fuerza = Masa / Aceleración</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question131" value="c">
                                    <span>Fuerza = Aceleración / Masa</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question131" value="d">
                                    <span>Fuerza = Aceleración x Masa</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">132. ¿Cuál es la ecuación que describe el movimiento rectilíneo acelerado (MRA)?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question132" value="a">
                                    <span>v = u + at</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question132" value="b">
                                    <span>v = u - at</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question132" value="c">
                                    <span>v = u * at</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question132" value="d">
                                    <span>v = u / at</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">133. En un campo eléctrico, la ley de Coulomb establece que la fuerza entre dos cargas es proporcional a:</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question133" value="a">
                                    <span>la distancia al cuadrado</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question133" value="b">
                                    <span>el producto de las cargas</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question133" value="c">
                                    <span>la distancia entre las cargas</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question133" value="d">
                                    <span>la suma de las cargas</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">134. ¿Cuál es la ecuación para calcular la energía cinética de un objeto? La fórmula es: \( E_k = \frac{1}{2} m v^2 \)</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question134" value="a">
                                    <span>\( E_k = \frac{1}{2} m v^2 \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question134" value="b">
                                    <span>\( E_k = m v \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question134" value="c">
                                    <span>\( E_k = m g h \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question134" value="d">
                                    <span>\( E_k = \frac{1}{2} m g h \)</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">135. ¿Qué ley describe el comportamiento de un gas ideal a temperaturas y presiones constantes?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question135" value="a">
                                    <span>Ley de Boyle</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question135" value="b">
                                    <span>Ley de Charles</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question135" value="c">
                                    <span>Ley de Avogadro</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question135" value="d">
                                    <span>Ley de Gay-Lussac</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">136. ¿Cuál es la ecuación que describe el movimiento de una onda? La fórmula es: \( v = f \cdot \lambda \)</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question136" value="a">
                                    <span>v = f * λ</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question136" value="b">
                                    <span>v = f / λ</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question136" value="c">
                                    <span>v = λ / f</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question136" value="d">
                                    <span>v = λ * f</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">137. ¿Cuál es la ecuación de la ley de Ohm? La fórmula es: \( V = I \cdot R \)</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question137" value="a">
                                    <span>V = I * R</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question137" value="b">
                                    <span>V = I / R</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question137" value="c">
                                    <span>V = I + R</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question137" value="d">
                                    <span>V = R / I</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">138. ¿Qué ocurre cuando la temperatura de un gas ideal aumenta manteniendo constante el volumen?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question138" value="a">
                                    <span>La presión disminuye</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question138" value="b">
                                    <span>La presión aumenta</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question138" value="c">
                                    <span>La presión se mantiene constante</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question138" value="d">
                                    <span>No se puede determinar sin más información</span>
                                </label>
                            </div>
                        </div>
                        <div class="question-item">

                            <p class="question-text">139. A partir de la máquina de Atwood que se muestra en la figura, determine el valor de la masa \( m_1 \) para que el sistema sea estático. Tenga en cuenta el valor de la gravedad \( g = 9.8 \, \text{m/s}^2 \), la masa \( m_2 = 10 \, \text{kg} \) y que la rampa inclinada no tiene fricción con la masa 1.</p>
                            <div class="image-container">
                                <img src="../imagenes/maquina.png" alt="Triángulo con ángulos y medidas dados" style="width:60%;height:60%;">
                            </div>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question139" value="a">
                                    <span>12 kg</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question139" value="b">
                                    <span>10 kg</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question139" value="c">
                                    <span>8 kg</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question139" value="d">
                                    <span>5 kg</span>
                                </label>
                            </div>
                        </div>
                        <div class="question-item">
                            <p class="question-text">140. ¿Cuál es la fórmula para la Ley de Coulomb que describe la fuerza entre dos cargas eléctricas?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question140" value="a">
                                    <span>\( F = k \frac{q_1 q_2}{r^2} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question140" value="b">
                                    <span>\( F = \frac{k q_1 q_2}{r} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question140" value="c">
                                    <span>\( F = k \frac{q_1 + q_2}{r^2} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question140" value="d">
                                    <span>\( F = k \frac{q_1 q_2}{r} \)</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">141. La ley de conservación de la energía se expresa como:</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question141" value="a">
                                    <span>\( E_{inicial} = E_{final} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question141" value="b">
                                    <span>\( E = m c^2 \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question141" value="c">
                                    <span>\( E = P \cdot V \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question141" value="d">
                                    <span>\( E = \frac{1}{2} m v^2 \)</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">142. ¿Qué fórmula describe la ley de Hooke para un resorte?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question142" value="a">
                                    <span>\( F = - k x \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question142" value="b">
                                    <span>\( F = k x \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question142" value="c">
                                    <span>\( F = m g \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question142" value="d">
                                    <span>\( F = \frac{m v^2}{r} \)</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">143. ¿Cómo se calcula la energía potencial gravitatoria de un objeto?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question143" value="a">
                                    <span>\( E_p = m g h \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question143" value="b">
                                    <span>\( E_p = \frac{1}{2} m v^2 \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question143" value="c">
                                    <span>\( E_p = \frac{1}{2} k x^2 \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question143" value="d">
                                    <span>\( E_p = m c^2 \)</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">144. ¿Cuál es la ecuación que describe el movimiento rectilíneo uniformemente acelerado (MRUA)?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question144" value="a">
                                    <span>\( v = v_0 + a t \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question144" value="b">
                                    <span>\( v = v_0 + g t \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question144" value="c">
                                    <span>\( x = v_0 t + \frac{1}{2} a t^2 \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question144" value="d">
                                    <span>\( x = v_0 t + \frac{1}{2} g t^2 \)</span>
                                </label>
                            </div>
                        </div>

                        <div class="question-item">
                            <p class="question-text">145. ¿Cómo se calcula la velocidad de un objeto en caída libre?</p>
                            <div class="options-container">
                                <label class="option-item">
                                    <input type="radio" name="question145" value="a">
                                    <span>\( v = g t \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question145" value="b">
                                    <span>\( v = v_0 + g t \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question145" value="c">
                                    <span>\( v = \frac{v_0 + v}{2} \)</span>
                                </label>
                                <label class="option-item">
                                    <input type="radio" name="question145" value="d">
                                    <span>\( v = g t^2 \)</span>
                                </label>
                            </div>
                        </div>

                        <div class="nav-buttons">
                            <button type="button" class="btn btn-secondary" onclick="previousSection(8)">Anterior</button>
                            <button type="submit" class="btn btn-primary">Finalizar</button>
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
                            <span class="progress-text">Matemáticas</span>
                        </div>
                        <div class="progress-item" onclick="goToSection(2)">
                            <span class="progress-icon" id="progress2">-</span>
                            <span class="progress-text">Competencia escrita</span>
                        </div>
                        <div class="progress-item" onclick="goToSection(3)">
                            <span class="progress-icon" id="progress3">-</span>
                            <span class="progress-text">Competencia Lectora</span>
                        </div>
                        <div class="progress-item" onclick="goToSection(4)">
                            <span class="progress-icon" id="progress4">-</span>
                            <span class="progress-text">Reading comprehension</span>
                        </div>
                        <div class="progress-item" onclick="goToSection(5)">
                            <span class="progress-icon" id="progress5">-</span>
                            <span class="progress-text">Historia</span>
                        </div>
                        <div class="progress-item" onclick="goToSection(6)">
                            <span class="progress-icon" id="progress6">-</span>
                            <span class="progress-text">Biología</span>
                        </div>
                        <div class="progress-item" onclick="goToSection(7)">
                            <span class="progress-icon" id="progress7">-</span>
                            <span class="progress-text">Química</span>
                        </div>
                        <div class="progress-item" onclick="goToSection(8)">
                            <span class="progress-icon" id="progress8">-</span>
                            <span class="progress-text">Física</span>
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

        <script src="script.js"></script>
    </body>
</html>
