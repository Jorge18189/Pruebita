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
       <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <script type="text/javascript" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
</head>
<body>
    <div class="layout-container">
        <div class="container">
            <form id="quizForm">
                <div id="section1" class="section active">
                    <div class="section-header">
                        <h2 class="section-title">Sección 1: Matemáticas</h2>
                        <p class="section-subtitle">Preguntas 1-37</p>
                    </div>
 <div class="question-item">
     <p class="question-text">1.- Identificar el octavo término de la sucesión: \( \frac{\pi}{12}, \frac{\pi}{6}, \frac{\pi}{4}, \frac{\pi}{3}, \frac{5\pi}{12},... \)</p>
            <div class="options-container">
                <div class="option-item">
                    <input type="radio" name="q1" id="q1a">
                    <label for="q1a">a) \( \frac{\pi}{8} \)</label>
                </div>
                <div class="option-item">
                    <input type="radio" name="q1" id="q1b">
                    <label for="q1b">b) \( \frac{\pi}{2} \)</label>
                </div>
                <div class="option-item">
                    <input type="radio" name="q1" id="q1c">
                    <label for="q1c">c) \( \frac{2\pi}{3} \)</label>
                </div>
                <div class="option-item">
                    <input type="radio" name="q1" id="q1d">
                    <label for="q1d">d) \( \frac{3\pi}{2} \)</label>
                </div>
            </div>
        </div>

       
<div class="question-item">
     <p class="question-text">2.- Se tienen $255 distribuidos en 72 monedas de $5 y $2. ¿Cuántas monedas son de $2 y cuántas de $5, respectivamente?</p>
            <div class="options-container">
                <div class="option-item">
                    <input type="radio" name="q2" id="q2a">
                    <label for="q2a">a) 35 y 37</label>
                </div>
                <div class="option-item">
                    <input type="radio" name="q2" id="q2b">
                    <label for="q2b">b) 46 y 26</label>
                </div>
                <div class="option-item">
                    <input type="radio" name="q2" id="q2c">
                    <label for="q2c">c) 26 y 46</label>
                </div>
                <div class="option-item">
                    <input type="radio" name="q2" id="q2d">
                    <label for="q2d">d) 37 y 35</label>
                </div>
            </div>
</div>

<div class="question-item">
    <p class="question-text">3.- ¿Cuántas aristas tiene un prisma pentagonal?</p>
           <div class="options-container">
               <div class="option-item">
                   <input type="radio" name="q3" id="q3a">
                   <label for="q3a">a) 10</label>
               </div>
               <div class="option-item">
                   <input type="radio" name="q3" id="q3b">
                   <label for="q3b">b) 15</label>
               </div>
               <div class="option-item">
                   <input type="radio" name="q3" id="q3c">
                   <label for="q3c">c) 20</label>
               </div>
               <div class="option-item">
                   <input type="radio" name="q3" id="q3d">
                   <label for="q3d">d) 25</label>
               </div>
           </div>
</div>

<div class="question-item">
    <p class="question-text">4.- Identificar los primeros cinco términos de la sucesión generada por la expresión: \( a_n = \frac{(-1)^{n+1} \cdot 2n}{3n-2} \) para los valores \( n = 1,2,3,4,5,... \)</p>
           <div class="options-container">
               <div class="option-item">
                   <input type="radio" name="q4" id="q4a">
                   <label for="q4a">a) \( 2,-1,\frac{6}{7},-\frac{4}{5},\frac{10}{13},... \)</label>
               </div>
               <div class="option-item">
                   <input type="radio" name="q4" id="q4b">
                   <label for="q4b">b) \( 1,-2,\frac{6}{7},-\frac{2}{5},\frac{8}{13},... \)</label>
               </div>
               <div class="option-item">
                   <input type="radio" name="q4" id="q4c">
                   <label for="q4c">c) \( -2,1,-\frac{6}{7},\frac{4}{5},-\frac{10}{13},... \)</label>
               </div>
               <div class="option-item">
                   <input type="radio" name="q4" id="q4d">
                   <label for="q4d">d) \( 2,-\frac{4}{3},\frac{6}{7},-\frac{8}{5},\frac{10}{13},... \)</label>
               </div>
           </div>
</div>
<div class="question-item">
    <p class="question-text">5. Simplifica la siguiente expresión: 

\[\frac{x^2 - 4}{x^4 - 16} \cdot \frac{x^2 + 2x + 4}{x - 4} \cdot \frac{2x^2 + 8}{x^3 - 8}\]

</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question5" value="a">
            <span>\(\frac{2}{x^2 - 6x + 8}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question5" value="b">
            <span>\(\frac{2}{x^2 + 2x - 8}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question5" value="c">
            <span>\(\frac{2}{x^2 - 4}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question5" value="d">
            <span>\(\frac{2}{x^2 - 4x + 4}\)</span>
        </label>
    </div>
</div>


          <div class="question-item">
    <p class="question-text">6. Racionalizar el denominador en la expresión: 

\[\frac{4\sqrt{3}}{\sqrt{3x^2 - 12} + \sqrt{3x^2 + 12}}\]

</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question6" value="a">
            <span>\(\sqrt{x^2 + 4} - \sqrt{x^2 - 4}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question6" value="b">
            <span>\(\frac{\sqrt{x^2 - 4} - \sqrt{x^2 + 4}}{2}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question6" value="c">
            <span>\(\frac{\sqrt{x^2 + 4} - \sqrt{x^2 - 4}}{2}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question6" value="d">
            <span>\(\frac{\sqrt{x^2 - 4} - \sqrt{x^2 + 4}}{4}\)</span>
        </label>
    </div>
</div>
   <div class="question-item">
    <p class="question-text">7.- Simplificar la expresión: \[ \frac{x^3y^{2/3}z^4}{y^{8/3}z^{-2}x^{-1}} + 2 \]</p>
           <div class="options-container">
               <div class="option-item">
                   <input type="radio" name="q7" id="q7a">
                   <label for="q7a">a) \[ \frac{x^4z^6 + 2y^2}{y^2} \]</label>
               </div>
               <div class="option-item">
                   <input type="radio" name="q7" id="q7b">
                   <label for="q7b">b) \[ \frac{x^2z^2 + 2y^2}{y^2} \]</label>
               </div>
               <div class="option-item">
                   <input type="radio" name="q7" id="q7c">
                   <label for="q7c">c) \[ \frac{x^4 + 2y^2z^6}{y^2z^6} \]</label>
               </div>
               <div class="option-item">
                   <input type="radio" name="q7" id="q7d">
                   <label for="q7d">d) \[ \frac{z^6 + 2x^4y^2}{x^4y^2} \]</label>
               </div>
           </div>
</div>
                  <div class="question-item">
    <p class="question-text">8.- Factorizar el polinomio: \[ 12x^3y^2z^2-18x^4y^5z+30xyz^4 \]</p>
           <div class="options-container">
               <div class="option-item">
                   <input type="radio" name="q8" id="q8a">
                   <label for="q8a">a) \[ 6xyz(2x^2y^2z-3x^3y^4z+5z^3) \]</label>
               </div>
               <div class="option-item">
                   <input type="radio" name="q8" id="q8b">
                   <label for="q8b">b) \[ 6xyz(2x^2y^2z-3x^3y^4z+5yz^3) \]</label>
               </div>
               <div class="option-item">
                   <input type="radio" name="q8" id="q8c">
                   <label for="q8c">c) \[ 6xyz(2x^2y^2z-3x^3y^4+5xz^3) \]</label>
               </div>
               <div class="option-item">
                   <input type="radio" name="q8" id="q8d">
                   <label for="q8d">d) \[ 6xyz(2x^2y^2z-3x^3y^4+5z^3) \]</label>
               </div>
           </div>
</div>
   <div class="question-item">
    <p class="question-text">9.- La suma de los cuadrados de dos números pares consecutivos es 164. Calcular el producto de dichos números.</p>
           <div class="options-container">
               <div class="option-item">
                   <input type="radio" name="q9" id="q9a">
                   <label for="q9a">a) 18</label>
               </div>
               <div class="option-item">
                   <input type="radio" name="q9" id="q9b">
                   <label for="q9b">b) 48</label>
               </div>
               <div class="option-item">
                   <input type="radio" name="q9" id="q9c">
                   <label for="q9c">c) 80</label>
               </div>
               <div class="option-item">
                   <input type="radio" name="q9" id="q9d">
                   <label for="q9d">d) 120</label>
               </div>
           </div>
</div>

<div class="question-item">
    <p class="question-text">10.- Representar con exponentes fraccionarios la expresión: \[ \sqrt[6]{x^{4/3}}-\sqrt[5]{y^{6/7}} \]</p>
           <div class="options-container">
               <div class="option-item">
                   <input type="radio" name="q10" id="q10a">
                   <label for="q10a">a) \( x^8-y^{30/7} \)</label>
               </div>
               <div class="option-item">
                   <input type="radio" name="q10" id="q10b">
                   <label for="q10b">b) \( x^{2/18}-y^{30/7} \)</label>
               </div>
               <div class="option-item">
                   <input type="radio" name="q10" id="q10c">
                   <label for="q10c">c) \( x^{2/9}-y^{6/35} \)</label>
               </div>
               <div class="option-item">
                   <input type="radio" name="q10" id="q10d">
                   <label for="q10d">d) \( x^{1/9}-y^{6/35} \)</label>
               </div>
           </div>
</div>
                    
                  <div class="question-item">
    <p class="question-text">10.-Determine el valor de \( x \) para la siguiente expresión:</p>
    <p class="equation">\( \log_2(3x + 4) - 1 = \log_2(x + 1) \)</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question21" value="a">
            <span>\( x = -1 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question21" value="b">
            <span>\( x = -2 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question21" value="c">
            <span>\( x = 2 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question21" value="d">
            <span>\( x = 0 \)</span>
        </label>
    </div>
</div>
  
<div class="question-item">
    <p class="question-text">12. Identificar la gráfica que corresponde a la función \( f(x) = 3 \sin x \).</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question12" value="a">
            <img src="../imagenes/grafica1.png" alt="Gráfica a">
        </label>
        <label class="option-item">
            <input type="radio" name="question12" value="b">
            <img src="../imagenes/grafica2.png" alt="Gráfica b">
        </label>
        <label class="option-item">
            <input type="radio" name="question12" value="c">
            <img src="../imagenes/grafica3.png" alt="Gráfica c">
        </label>
        <label class="option-item">
            <input type="radio" name="question12" value="d">
            <img src="../imagenes/grafica4.png" alt="Gráfica d">
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">13. Si la longitud del lado del cuadrado exterior de la figura es igual a 4 unidades, calcular el área que corresponde a la región sombreada.</p>
    <div class="image-container">
        <img src="../imagenes/arearara.png" alt="Figura del problema">
    </div>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question13" value="a">
            <span>2\(\sqrt{2}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question13" value="b">
            <span>4</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question13" value="c">
            <span>4\(\sqrt{2}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question13" value="d">
            <span>8</span>
        </label>
    </div>
</div>
<div class="question-item">
    <p class="question-text">14. Simplificar la expresión trigonométrica:</p>
    <p class="question-text">\(\frac{\sin^3 x \cot x + \cos^3 x \tan x}{\sin x \cos x}\)</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question14" value="a">
            <span>\(\sin x + \cos x\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question14" value="b">
            <span>\(\csc x + \sec x\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question14" value="c">
            <span>\(\tan x + 1\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question14" value="d">
            <span>\(\cot x + 1\)</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">15. Identificar la recta que es paralela a la recta \(5x + 3y + 7 = 0\) y que pasa por el punto \((1,5)\)</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question15" value="a">
            <span>\(5x + 3y - 20 = 0\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question15" value="b">
            <span>\(5x + 3y - 34 = 0\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question15" value="c">
            <span>\(3x - 5y + 22 = 0\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question15" value="d">
            <span>\(3x - 5y = 0\)</span>
        </label>
    </div>
</div>
<div class="question-item">
    <p class="question-text">16. Determinar la ecuación general de la circunferencia con centro en \(C(-2,3)\) y radio \(r = 4\)</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question16" value="a">
            <span>\(x^2 + y^2 + 4x - 6y - 3 = 0\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question16" value="b">
            <span>\(x^2 + y^2 - 4x + 6y - 3 = 0\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question16" value="c">
            <span>\(x^2 + y^2 + 4x - 6y - 23 = 0\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question16" value="d">
            <span>\(x^2 + y^2 - 4x + 6y - 23 = 0\)</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">17. Determinar el valor de \( k \) si el punto \( P(3, -2) \) se encuentra en la parábola:</p>
    <p class="question-text">\( x^2 + 6x - 7y + k = 0 \)</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question17" value="a">
            <span>\( k = -13 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question17" value="b">
            <span>\( k = 13 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question17" value="c">
            <span>\( k = -41 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question17" value="d">
            <span>\( k = 41 \)</span>
        </label>
    </div>
</div>
<div class="question-item">
    <p class="question-text">18. Determinar la ecuación de la circunferencia que pasa por el punto \( P(3, 2) \) y tiene su centro en \( C(-1, 3) \).</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question18" value="a">
            <span>\( x^2 + y^2 + 2x - 6y - 7 = 0 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question18" value="b">
            <span>\( x^2 + y^2 - 2x + 6y - 19 = 0 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question18" value="c">
            <span>\( x^2 + y^2 + 2x - 6y - 19 = 0 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question18" value="d">
            <span>\( x^2 + y^2 - 2x + 6y - 7 = 0 \)</span>
        </label>
    </div>
</div>

         <div class="question-item">
    <p class="question-text">19. Resolver la desigualdad:</p>
    <p class="question-text">

\[ x + \frac{4}{5} \leq \frac{2}{7} \]

</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question19" value="a">
            <span>\(\left[ \frac{18}{35}, \frac{38}{35} \right]\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question19" value="b">
            <span>\(\left[ -\frac{18}{35}, \frac{38}{35} \right]\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question19" value="c">
            <span>\(\left[ -\frac{38}{35}, \frac{18}{35} \right]\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question19" value="d">
            <span>\(\left[ -\frac{38}{35}, -\frac{18}{35} \right]\)</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">20. Calcular el valor del límite:</p>
    <p class="question-text">

\[ \lim_{{x \to -2}} \frac{x^2 + 5x + 6}{(x + 2)(x^2 + 4)} \]

</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question20" value="a">
            <span>\(\frac{1}{8}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question20" value="b">
            <span>\(-\frac{1}{8}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question20" value="c">
            <span>\(\frac{3}{8}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question20" value="d">
            <span>\(-\frac{3}{8}\)</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">21. Calcular el valor del límite:</p>
    <p class="question-text">

\[ \lim_{{x \to \infty}} \frac{3 - 2x + (-2x)^3}{4x^3 - 5} \]

</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question21" value="a">
            <span>\(-2\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question21" value="b">
            <span>\(-1\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question21" value="c">
            <span>\(1\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question21" value="d">
            <span>\(2\)</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">22. Calcular la derivada de la función:</p>
    <p class="question-text">\( f(x) = -5xe^{7x} \)</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question22" value="a">
            <span>\( f'(x) = -5e^{7x} + 35xe^{7x} \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question22" value="b">
            <span>\( f'(x) = -5e^{7x} - 35xe^{7x} \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question22" value="c">
            <span>\( f'(x) = -5e^{7x} - 5xe^{7x} \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question22" value="d">
            <span>\( f'(x) = -35e^{7x} + 5xe^{7x} \)</span>
        </label>
    </div>
</div>
<div class="question-item">
    <p class="question-text">23. Calcular la derivada de la función:</p>
    <p class="question-text">\( f(x) = 2x \ln(3x) \)</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question23" value="a">
            <span>\( f'(x) = 2 \ln(3x) + 1 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question23" value="b">
            <span>\( f'(x) = 2 \ln(3x) + 2 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question23" value="c">
            <span>\( f'(x) = 6 \ln(3x) + 1 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question23" value="d">
            <span>\( f'(x) = 6 \ln(3x) + 2 \)</span>
        </label>
    </div>
</div>

                    
<div class="question-item">
    <p class="question-text">24. Calcular la derivada de la función:</p>
    <p class="question-text">\( f(x) = \sqrt{4x^2 - 8x + 3} \)</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question24" value="a">
            <span>\( f'(x) = - \frac{8x - 8}{\sqrt{4x^2 - 8x + 3}} \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question24" value="b">
            <span>\( f'(x) = - \frac{4x - 4}{\sqrt{4x^2 - 8x + 3}} \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question24" value="c">
            <span>\( f'(x) = \frac{2x - 2}{\sqrt{4x^2 - 8x + 3}} \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question24" value="d">
            <span>\( f'(x) = - \frac{1 - x}{\sqrt{4x^2 - 8x + 3}} \)</span>
        </label>
    </div>
</div>
<div class="question-item">
    <p class="question-text">25. Resolver la desigualdad:</p>
    <p class="question-text">\( 2x + 7 < \frac{5x}{2} + 9 \)</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question25" value="a">
            <span>\( x > 4 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question25" value="b">
            <span>\( x < 4 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question25" value="c">
            <span>\( x < -4 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question25" value="d">
            <span>\( x > -4 \)</span>
        </label>
    </div>
</div>
<div class="question-item">
    <p class="question-text">26. Obtener la integral de la siguiente función:</p>
    <p class="question-text">

\[\int \frac{(x - 7)(x + 4)}{x} \, dx\]

</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question26" value="a">
            <span>\(\frac{x^2}{2} - 3x - 28 \ln|x| + c\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question26" value="b">
            <span>\(\frac{x^2}{2} - 3x + 28 \ln|x| + c\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question26" value="c">
            <span>\(\frac{x^2}{2} - 3x + 8 \ln|x| + c\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question26" value="d">
            <span>\(\frac{x^2}{2} - 3x - 8 \ln|x| + c\)</span>
        </label>
    </div>
</div>
<div class="question-item">
    <p class="question-text">27. Calcular el valor de la siguiente integral definida:</p>
    <p class="question-text">

\[\int_{1}^{4} \frac{x}{\sqrt{x}} \, dx\]

</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question27" value="a">
            <span>\(\frac{14}{3}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question27" value="b">
            <span>\(-\frac{7}{3}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question27" value="c">
            <span>\(\frac{7}{3}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question27" value="d">
            <span>\(\frac{14}{3}\)</span>
        </label>
    </div>
</div><div class="question-item">
    <p class="question-text">28. Al resolver la integral:</p>
    <p class="question-text">

\[\int x(1 - 2x)^2 \, dx\]

</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question28" value="a">
            <span>\(x^4 - 4x^3 + \frac{x^2}{2} + c\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question28" value="b">
            <span>\(x^4 - 4x^3 - \frac{x^2}{2} + c\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question28" value="c">
            <span>\(x^4 - \frac{4x^3}{3} + \frac{x^2}{2} + c\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question28" value="d">
            <span>\(x^4 + \frac{4x^3}{3} + \frac{x^2}{2} + c\)</span>
        </label>
    </div>
</div>

                   <div class="question-item">
    <p class="question-text">29. Al resolver la integral:</p>
    <p class="question-text">

\[\int 8xe^{2x} \, dx\]

</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question29" value="a">
            <span>\( xe^{2x} - 2e^{2x} + c \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question29" value="b">
            <span>\( xe^{2x} + 2e^{2x} + c \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question29" value="c">
            <span>\( 4xe^{2x} - 2e^{2x} + c \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question29" value="d">
            <span>\( 4xe^{2x} - 8e^{2x} + c \)</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">30. Identificar la fórmula que se debe usar para resolver la integral:</p>
    <p class="question-text">

\[\int \frac{4x}{\sqrt{9 + x^2}} \, dx\]

</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question30" value="a">
            <span>\(\int \frac{du}{u}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question30" value="b">
            <span>\(\int u^n \, du\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question30" value="c">
            <span>\(\int \frac{du}{a^2 + u^2}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question30" value="d">
            <span>\(\int \frac{du}{\sqrt{a^2 + u^2}}\)</span>
        </label>
    </div>
</div>

                  <div class="question-item">
    <p class="question-text">31. Calcular el valor de la integral definida:</p>
    <p class="question-text">

\[\int_{1}^{3} \left( \frac{x^2}{5} + 2 \right) dx\]

</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question31" value="a">
            <span>\(\frac{38}{15}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question31" value="b">
            <span>\(\frac{5}{3}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question31" value="c">
            <span>\(\frac{14}{15}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question31" value="d">
            <span>\(\frac{13}{15}\)</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">32. Dados los conjuntos \( U = \{a, b, c, d, e, f, g\} \), \( A = \{a, b, c, d, e\} \) y \( B = \{d, e, f, g\} \); realizar la operación:</p>
    <p class="question-text">\( (A - B) \cup (B - A) \)</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question32" value="a">
            <span>\(\{a, b, c, d, e\}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question32" value="b">
            <span>\(\{a, b, c, f, e\}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question32" value="c">
            <span>\(\{a, b, c, e, g\}\)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question32" value="d">
            <span>\(\{a, b, c, f, g\}\)</span>
        </label>
    </div>
</div>
<div class="question-item">
    <p class="question-text">33. Un evento se llevará a cabo en cuatro etapas: la primera puede ocurrir de 6 maneras; la segunda, de 4; la tercera, de 2 y la última, de una manera. ¿De cuántas maneras puede ocurrir el evento?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question33" value="a">
            <span>60</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question33" value="b">
            <span>48</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question33" value="c">
            <span>24</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question33" value="d">
            <span>19</span>
        </label>
    </div>
</div>

                    
                 <div class="question-item">
    <p class="question-text">34. El siguiente gráfico muestra información sobre los años de antigüedad que tienen los trabajadores de una empresa. Determinar la moda y la mediana.</p>
    <div class="image-container">
        <img src="../imagenes/estadistica.png" alt="Gráfico de barras de años de antigüedad de los trabajadores">
    </div>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question34" value="a">
            <span>12 y 11</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question34" value="b">
            <span>12 y 10</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question34" value="c">
            <span>22 y 18</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question34" value="d">
            <span>22 y 20</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">35. Determinar la media de los siguientes datos: 0.2, 0.2, 0.3, 0.5, 0.6, 0.9, 0.3, 0.6, 0.7, 0.7</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question35" value="a">
            <span>0.45</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question35" value="b">
            <span>0.50</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question35" value="c">
            <span>0.55</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question35" value="d">
            <span>0.60</span>
        </label>
    </div>
</div>


<div class="question-item">
    <p class="question-text">36. El siguiente gráfico muestra información sobre las edades de los trabajadores de una empresa. Identificar la moda y la mediana correspondientes a los datos individuales, respectivamente.</p>
    <div class="image-container">
        <img src="../imagenes/trabajadores.png" alt="Gráfico de edades de los trabajadores">
    </div>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question36" value="a">
            <span>42 y 47</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question36" value="b">
            <span>42 y 42</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question36" value="c">
            <span>47 y 47</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question36" value="d">
            <span>47 y 52</span>
        </label>
    </div>
</div>
<div class="question-item">
    <p class="question-text">37. Los profesores Efrén y Moisés desean formar un equipo de 4 alumnos cada uno a partir de un grupo de 12 alumnos. Si el profesor Efrén elige primero los integrantes de su equipo, ¿de cuántas maneras distintas podrá elegir el profesor Moisés a los integrantes de su equipo?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question36" value="a">
            <span>35</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question36" value="b">
            <span>70</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question36" value="c">
            <span>150</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question36" value="d">
            <span>210</span>
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
<p class="question-text">38. Seleccionar la opción que corrige el error de la siguiente oración:</p>
<p class="question-text">En el hospital del centro al niño le vacunaron de varicela a los dos meses de edad.</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question38" value="a">
        <span>En el hospital del centro, al niño lo vacunaron de varicela a los dos meses de edad</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question38" value="b">
        <span>A los dos meses de edad, al niño le vacunaron de varicela en el hospital del centro</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question38" value="c">
        <span>En el hospital del centro, vacunaron al niño contra la varicela a los dos meses de edad</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question38" value="d">
        <span>Al niño, a los dos meses de edad, en el hospital del centro, le vacunaron contra la varicela</span>
    </label>
</div>
                    </div>
    <div class="question-item">
<p class="question-text">39. Indicar la opción escrita de manera incorrecta:</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question39" value="a">
        <span>De ese modo fue que aprobó el examen</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question39" value="b">
        <span>Quien miente no tiene amigos verdaderos</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question39" value="c">
        <span>Fue ahí donde nos conocimos hace dos años</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question39" value="d">
        <span>Está junto a la tienda de zapatos que te gusta</span>
    </label>
</div>
    </div>
                        <div class="question-item">
<p class="question-text">40. Con respecto a la siguiente oración, ¿qué afirmación es correcta?</p>
<p class="question-text">Cinco mil asistentes es mucha gente</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question40" value="a">
        <span>Es confusa debido al orden de las palabras</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question40" value="b">
        <span>La oración no presenta ningún tipo de error</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question40" value="c">
        <span>El registro lingüístico es demasiado informal</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question40" value="d">
        <span>Es incorrecta debido a un error de concordancia</span>
    </label>
</div>
                        </div>
                        <div class="question-item">
<p class="question-text">41. Identificar la imagen que presenta un error de redacción.</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question41" value="a">
        <span><img src="../imagenes/image_a.png" alt="Se solicita repartidores"></span>
    </label>
    <label class="option-item">
        <input type="radio" name="question41" value="b">
        <span><img src="../imagenes/image_b.png" alt="Se han localizado los perritos"></span>
    </label>
    <label class="option-item">
        <input type="radio" name="question41" value="c">
        <span><img src="../imagenes/image_c.png" alt="Se sacan fotocopias"></span>
    </label>
    <label class="option-item">
        <input type="radio" name="question41" value="d">
        <span><img src="../imagenes/image_d.png" alt="Se busca a los culpables"></span>
    </label>
</div>

                        </div>
                        <div class="question-item">
<p class="question-text">42. ¿En qué ejemplo la información se presenta de lo particular a lo general?</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question42" value="a">
        <span>Leticia comenzó a comer equilibradamente desde hace un mes. También, integró en su día a día una rutina de ejercicio muy completa. Últimamente se ha sentido mucho mejor, por lo que seguirá con este estilo de vida</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question42" value="b">
        <span>La particularidad de cada ser humano es lo que hace sumamente variada a la sociedad en la que vivimos. Es importante reconocer y respetar las diferencias entre cada uno de nosotros para poder enriquecernos a través de ellas y así evitar que surjan conflictos o desencuentros posteriormente</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question42" value="c">
        <span>Los arándanos son frutos particulares porque contienen altos niveles de antioxidantes, así como vitamina C y vitamina K, por lo que promuevan la cicatrización. También, neutralizan algunos de los radicales libres que pueden dañar nuestro ADN y mejoran la memoria a corto plazo</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question42" value="d">
        <span>El cuento es un subgénero literario que comúnmente es subestimado. Si bien es cierto que su característica principal es la brevedad, y por eso se considera poco complejo, los cuentos deben provocar un impacto emocional en el lector con pocas palabras, así que su escritura es más compleja de lo que creemos</span>
    </label>
</div>
                        </div>
                        <div class="question-item">
<p class="question-text">43. El párrafo que se presenta a continuación tiene ___ ideas secundarias.</p>
<p class="question-text">Una pequeña esfera tornasol de dos o tres centímetros de diámetro es el espejo y centro de todas las cosas; ahí todo confluye a la vez y sin sobreposición: «Vi en el Aleph la tierra, y en la tierra otra vez el Aleph, vi mi cara y mis vísceras y sentí vértigo y lloré, porque mis ojos habían visto ese objeto secreto y conjetural, cuyo nombre usurpan los hombres, pero que ningún hombre ha mirado: el inconcebible universo».</p>
<p class="question-text"><i>Fragmento adaptado de Algarabía. (2022). Top 10: Inventos Literarios. Algarabía. Recuperado de https://algarabia.com/top-10-inventos-literarios/</i></p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question43" value="a">
        <span>3</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question43" value="b">
        <span>4</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question43" value="c">
        <span>5</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question43" value="d">
        <span>6</span>
    </label>
</div>
                        </div>
                        <div class="question-item">
<p class="question-text">44. Seleccionar la oración que tiene el mismo sentido que el siguiente enunciado debido a su conector textual:</p>
<p class="question-text">Romina canta mientras se baña</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question44" value="a">
        <span>Juan toma apuntes durante sus clases</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question44" value="b">
        <span>Constantemente hace dos cosas a la vez</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question44" value="c">
        <span>Recientemente le gusta cantar y bañarse</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question44" value="d">
        <span>Los niños realizan tareas simultáneamente</span>
    </label>
</div>
                        </div>
                        <div class="question-item">
<p class="question-text">45. Seleccionar la opción escrita correctamente.</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question45" value="a">
        <span>El próximo año José Luis cumple treintaiseis años</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question45" value="b">
        <span>Participaré en el vigésimocuarto certamen de escritura</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question45" value="c">
        <span>Este sábado se celebró el onceavo congreso de docentes</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question45" value="d">
        <span>El despacho de abogados se encuentra en el undécimo piso</span>
    </label>
</div>
                        </div>
                        <div class="question-item">
<p class="question-text">46. Indicar la opción que expresa la misma idea que el fragmento resaltado en negritas de la siguiente oración:</p>
<p class="question-text"><i>Mi opinión es que Mónica se ahogó en un vaso con agua.</i></p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question46" value="a">
        <span>Inquietó</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question46" value="b">
        <span>Exageró</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question46" value="c">
        <span>Preocupó</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question46" value="d">
        <span>Intranquilizó</span>
    </label>
</div>
                        </div>
                        <div class="question-item">
<p class="question-text">47. ¿Cuál de las siguientes oraciones está bien escrita?</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question47" value="a">
        <span>De a ver sabido, mejor no salgo</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question47" value="b">
        <span>Siempre halla la fuerza para seguir</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question47" value="c">
        <span>Quizá allá algo que podamos hacer</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question47" value="d">
        <span>Haber qué se trae entre manos ahora</span>
    </label>
</div>
                        </div>
                        <div class="question-item">
<p class="question-text">48. ¿Cuántas palabras deberían estar escritas con mayúscula en el siguiente párrafo y no lo están?</p>
<p class="question-text">
Márquez decía que hemingway tenía aprendida la técnica para sobrellevar el éxito en el oficio narrativo que él llamaba “carpintería literaria”. el colombiano contó en una entrevista en febrero de 1985 para la revista pluma que la breve vida de francis macomber, a su gusto, era uno de los cuentos más perfectos que se han escrito.
</p>
<p class="question-text"><i>Fragmento adaptado de Montalvo, A. (2020). 5 cuentos preferidos de Gabriel García Márquez. El Economista. Recuperado de https://www.eleconomista.com.mx/arteseideas/5-cuentos-preferidos-de-Gabriel-Garcia-Marquez-20200530-0015.html</i></p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question48" value="a">
        <span>4</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question48" value="b">
        <span>5</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question48" value="c">
        <span>6</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question48" value="d">
        <span>7</span>
    </label>
</div>
                        </div>
                        <div class="question-item">
<p class="question-text">49. Indicar el fragmento del siguiente párrafo que carece de errores de ortografía.</p>
<p class="question-text">
El día de ayer por la tarde, llendo hacia la casa de Damián [1], tomé la desición de ahorrar dinero mes con mes [2]. Al día siguiente fui al banco y expresé con impresión mis dudas [3], por lo que un cajero quiso atenderme de inmediato para que contratara la mejor opción para mí [4].
</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question49" value="a">
        <span>1</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question49" value="b">
        <span>2</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question49" value="c">
        <span>3</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question49" value="d">
        <span>4</span>
    </label>
</div>
                        </div>
                        <div class="question-item">
<p class="question-text">50. Identificar la opción escrita correctamente.</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question50" value="a">
        <span>Acuérdate que hoy salimos temprano</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question50" value="b">
        <span>Tengo miedo que llegue tarde mañana</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question50" value="c">
        <span>Si te da fiebre, debes ir rápido al doctor</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question50" value="d">
        <span>Estás segura que aprobarás el examen</span>
    </label>
</div>
                        </div>
    <div class="question-item">
<p class="question-text">51. Seleccionar la opción que corrige el error de la siguiente oración:</p>
<p class="question-text"><i>Óscar nació en 1992, siendo el menor de sus 5 hermanos.</i></p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question51" value="a">
        <span>En 1992 nació Óscar; el menor de sus 5 hermanos</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question51" value="b">
        <span>En 1992 nació Óscar y fue el menor de sus 5 hermanos</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question51" value="c">
        <span>Óscar nació en 1992 siendo el menor de sus 5 hermanos</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question51" value="d">
        <span>Óscar nació en 1992 siendo de sus 5 hermanos, el menor</span>
    </label>
</div>
    </div>
                        <div class="question-item">
<p class="question-text">52. Completar el siguiente texto con las palabras adecuadas:</p>
<p class="question-text"><i>Le dijo: “________ hiciste trampa en el examen. Ahora, dime ________ cara aceptarás tu calificación”.</i></p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question52" value="a">
        <span>Conque - con qué</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question52" value="b">
        <span>Con que - con que</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question52" value="c">
        <span>Conque - con que</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question52" value="d">
        <span>Con que - con qué</span>
    </label>
</div>
                        </div>
                        <div class="question-item">
<p class="question-text">53. Seleccionar el párrafo mejor redactado.</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question53" value="a">
        <span>—¡Ah, qué bonitos!, viendo Los Simpson...— dice la mamá de los niños que llegó sin anunciarse.</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question53" value="b">
        <span>¡Ha, qué bonitos!, Viendo Los Simpson...- Dice la mamá de los niños que llegó sin anunciarse.</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question53" value="c">
        <span>¡Ah, que bonitos!, Viendo Los simpson...- Dice la mamá de los niños que llego sin anunciarse.</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question53" value="d">
        <span>—¡Ha, que bonitos!, viendo Los simpson...— dice la mamá de los niños que llego sin anunciarse.</span>
    </label>
</div>
                        </div>
                        <div class="question-item">

<p class="question-text">54. Seleccionar la opción que expresa la información usando el discurso científico.</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question54" value="a">
        <span><img src="../imagenes/image_a2.png" alt="Forever Chavorruco"></span>
    </label>
    <label class="option-item">
        <input type="radio" name="question54" value="b">
        <span><img src="../imagenes/image_b2.png" alt="Células Durmientes"></span>
    </label>
    <label class="option-item">
        <input type="radio" name="question54" value="c">
        <span><img src="../imagenes/image_c2.png" alt="Cromosomos"></span>
    </label>
    <label class="option-item">
        <input type="radio" name="question54" value="d">
        <span><img src="../imagenes/image_d2.png" alt="Neuromitos"></span>
    </label>
</div>
                        </div>
                        <div class="question-item">

<p class="question-text">55. Las fichas de trabajo se utilizan para:</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question55" value="a">
        <span>evitar el uso de medios digitales</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question55" value="b">
        <span>elaborar el temario de un trabajo de investigación</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question55" value="c">
        <span>colocar los datos de las fuentes de información consultadas</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question55" value="d">
        <span>reconstruir la información obtenida en las fuentes consultadas</span>
    </label>
</div>
                        </div>
                        <div class="question-item">
<p class="question-text">56. En la parte del trabajo académico denominada ________ se muestra el resumen de los resultados obtenidos o la aportación personal al tema.</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question56" value="a">
        <span>portada</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question56" value="b">
        <span>introducción</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question56" value="c">
        <span>conclusiones</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question56" value="d">
        <span>cuerpo del trabajo</span>
    </label>
</div>
                        </div>
                        <div class="question-item">
<p class="question-text">57. Seleccionar la afirmación correcta con respecto al estilo APA.</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question57" value="a">
        <span>El formato APA no está estandarizado en todo el mundo</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question57" value="b">
        <span>El estilo APA es el más usado en el área de las humanidades</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question57" value="c">
        <span>El estilo APA facilita la lectura de los textos debido a sus normas</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question57" value="d">
        <span>La última versión de las normas APA corresponde a la décima edición</span>
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

<p class="question-text">Con base en el texto, responder las preguntas 58 a 67:</p>
<h3>DEJEMOS DE EXPRESAR LOS CORONAVIRUS</h3>

<p class="text-paragraph">
[1] Así como debemos intentar no expresar odios ni prejuicios, procuremos dejar ya de expresar los coronavirus. 
¿Expresar coronavirus? Así es. Es nuestro ADN secuestrado quien los genera y multiplica.
</p>
<p class="text-paragraph">
[2] Para entender lo que son los virus, y en particular los coronavirus, vale la pena una breve explicación. Nuestras células son, sobre todo, fábricas de proteínas. Normalmente nuestras células construyen o “expresan” proteínas humanas armadas como collares de cuentas. Existen 20 tipos de “cuentas” llamadas aminoácidos. El orden en que se colocan las cuentas de cada “collar” (proteína) lo determina la famosa doble cadena espiral de ADN. Lo maravilloso es que lo hace mediante un “abecedario” de sólo 4 letras, con el que se expresa el libro de la vida, conocidas como A, G, C y T. El proceso de producción de proteínas se inicia cuando el ADN en la célula se desdobla (se divide en dos) y se copia a una cadena sencilla llamada ARN mensajero que transporta la información hasta la fábrica de proteínas llamada ribosoma. Es en el ribosoma donde se agregan una a una las “cuentas” para producir nuestras proteínas. Así, nuestras células “expresan” las proteínas fundamentales que requerimos. Si hay mutaciones, entonces expresarán combinaciones mutadas y casi siempre defectuosas. Por errores de este tipo expresamos también tumores.
</p>
<p class="text-paragraph">
[3] Los coronavirus son virus formados por cápsulas esféricas rodeadas de proteínas afiladas que encierran su propia información —sus instrucciones de construcción— en una cadena sencilla de ARN escrita con el mismo abecedario, pero siguiendo un orden muy distinto al de los “collares” humanos. Usando tácticas de guerra, los virus penetran a nuestras células pulmonares (y otras), se enganchan y toman por asalto ribosomas que, invadidos, capturados y secuestrados expresan repetidamente el mapa y plan de construcción de los virus. Los virus generan así sus propias proteínas, que no son otra cosa que los constituyentes de otros virus idénticos a ellos y se multiplican. Una vez que son ya multitudes, hacen explotar las membranas celulares y salen en masa a invadir otras células y a otras personas.
</p>
<p class="text-paragraph">
[4] Es por ello que sólo nosotros, aislándonos y evitando reuniones masivas, podemos evitar ser contagiados y utilizados como fotocopiadoras vivientes por estos entes microscópicos. Es necesario evitar convertirnos en virocopiadoras, multiplicadores de los virus. Ellos nos utilizan para destruirnos. ¡Dejemos de expresar a nuestros enemigos los coronavirus!
</p>
<p class="text-paragraph">
[5] Si es posible, trata de trabajar desde casa; si eres mayor de 65 años, permanece en casa; evita reuniones con muchas personas; mantén la calma y ayuda a tu comunidad. Seamos reflexivos y solidarios.
</p>
<p class="text-paragraph"><i>Fragmento adaptado de Frank, A. (2019). Dejemos de expresar los coronavirus. C3 UNAM. Recuperado de https://www.c3.unam.mx/articulos/articulo002.html</i></p>

<p class="question-text">58. De acuerdo con el texto, es posible afirmar que:</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question58" value="a">
        <span>los coronavirus son, sobre todo, fábricas de proteínas</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question58" value="b">
        <span>gracias al ADN de los coronavirus, estos pueden reproducirse en un huésped</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question58" value="c">
        <span>los coronavirus engañan a las células al hacerse pasar por un ribosoma humano</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question58" value="d">
        <span>el ARN mensajero está compuesto por ribosomas, los cuales son la fábrica de proteínas</span>
    </label>
</div>

<p class="question-text">59. Identificar el párrafo en el que se encuentra la tesis del autor.</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question59" value="a">
        <span>[2]</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question59" value="b">
        <span>[3]</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question59" value="c">
        <span>[4]</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question59" value="d">
        <span>[5]</span>
    </label>
</div>

<p class="question-text">60. Puede inferirse que el texto fue escrito ________ de la pandemia por el virus SARS-CoV-2 del 2019.</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question60" value="a">
        <span>al final</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question60" value="b">
        <span>al inicio</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question60" value="c">
        <span>meses antes</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question60" value="d">
        <span>meses después</span>
    </label>
</div>

<p class="question-text">61. ¿Qué inferencia se desprende del texto?</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question61" value="a">
        <span>Únicamente los coronavirus utilizan el modelo de infección mostrado en el texto</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question61" value="b">
        <span>Los coronavirus todavía son poco eficientes en la forma que infectan un cuerpo</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question61" value="c">
        <span>Un buen sistema inmunológico frena la copia de los virus y detiene la infección</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question61" value="d">
        <span>No es necesario que exista compatibilidad entre el huésped y el coronavirus</span>
    </label>
</div>

<p class="question-text">62. ¿Cuál de las siguientes opciones se deduce a partir del texto?</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question62" value="a">
        <span>La forma esférica de los coronavirus es determinante para su reproducción en el cuerpo de un huésped</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question62" value="b">
        <span>Para entender lo que son los virus, y en particular los coronavirus, vale la pena una breve explicación</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question62" value="c">
        <span>El éxito de infección de los virus radica en la rapidez y facilidad para copiarse en el huésped enfermo</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question62" value="d">
        <span>Mientras más se copie un coronavirus, más se perfecciona y es más resistente a los anticuerpos y medicamentos</span>
    </label>
</div>

<p class="question-text">63. De acuerdo con el texto, ¿cuál de las siguientes afirmaciones es correcta?</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question63" value="a">
        <span>Los coronavirus destruyen las células que infectan</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question63" value="b">
        <span>Los coronavirus solo se reproducen para poder invadir a más personas</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question63" value="c">
        <span>Las reuniones masivas son las causantes de que existan los coronavirus</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question63" value="d">
        <span>Las personas mayores de 65 años son las que menos quieren estar en casa</span>
    </label>
</div>

<p class="question-text">64. ¿Qué forma de presentar la información se observa predominantemente en el párrafo [2] del texto?</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question64" value="a">
        <span>Analogías</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question64" value="b">
        <span>Restricciones</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question64" value="c">
        <span>Aseveraciones</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question64" value="d">
        <span>Respaldos de autoridad</span>
    </label>
</div>

<p class="question-text">65. ¿Seleccionar la idea que mejor sintetiza el texto?</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question65" value="a">
        <span>Quédate en casa</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question65" value="b">
        <span>No seamos virocopiadoras</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question65" value="c">
        <span>Vale la pena una breve explicación</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question65" value="d">
        <span>Nuestro ADN multiplica el coronavirus</span>
    </label>
</div>

<p class="question-text">66. ¿Qué tipología textual se observa predominantemente en el párrafo [5] del texto?</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question66" value="a">
        <span>Narrativa</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question66" value="b">
        <span>Expositiva</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question66" value="c">
        <span>Descriptiva</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question66" value="d">
        <span>Argumentativa</span>
    </label>
</div>

<p class="question-text">67. ¿Qué afirmación es correcta con respecto al texto?</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question67" value="a">
        <span>La forma en la que está escrito el texto le resta seriedad y, por lo tanto, credibilidad</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question67" value="b">
        <span>La lectura está diseñada para explicar claramente cuál es el ciclo de vida de los coronavirus</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question67" value="c">
        <span>El texto únicamente está dirigido a un público joven y sin conocimientos profundos de química y biología</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question67" value="d">
        <span>El autor utiliza un lenguaje claro y sencillo para que a través de la comprensión se tomen las medidas necesarias y así evitar contagios por coronavirus</span>
    </label>
</div>

<p class="question-text">Con base en el texto, responder las preguntas 68 a 74:</p>
<h3>RUBÉN</h3>

<p class="text-paragraph">
[1] Traga Rubén no brinques Rubén sóplate Rubén no te orines en la cama Rubén no toques Rubén no llores Rubén estate quieto Rubén no saltes en la cama Rubén no saques la cabeza por la ventanilla Rubén no rompas el vaso Rubén, Rubén no le saque la lengua a la maestra Rubén no rayes las paredes Rubén di los buenos días Rubén deja el yo-yo Rubén no juegues trompo Rubén no faltes al catecismo Rubén amárrate la trenza del zapato Rubén haz las tareas Rubén no rompas los juguetes Rubén reza Rubén no te metas el dedo en la nariz Rubén no juegues con la comida no te pases la vida jugando la vida Rubén.
</p>
<p class="text-paragraph">
[2] Estudia Rubén no te jubiles Rubén no fumes Rubén no salgas con tus amigos Rubén no te pelees con tu hermana Rubén, Rubén no te montes en la parrilla de las motos Rubén estudia la química Rubén no trasnoches Rubén no corras Rubén no ensucies tantas camisetas Rubén saluda a tu tía Paulina Rubén no andes en patota Rubén no hables tanto, estudia la matemática Rubén no te metas con la muchacha del servicio Rubén no pongas tan alto el tocadisco Rubén no cantes serenatas Rubén no te pongas de delegado de curso Rubén no te comprometas Rubén no te vayas a dejar raspar Rubén no le respondas a tu padre Rubén, Rubén córtate el pelo, coge ejemplo Rubén.
</p>
<p class="text-paragraph">
[3] Rubén no manifiestes, no cantes el Belachao Rubén, Rubén no protestes profesores, no dejes que te metan en la lista negra Rubén, Rubén quita esos afiches del cheguevara, no digas yankis go home Rubén, Rubén no repartas hojitas, no pintes los muros Rubén, no siembres la zozobra en las instituciones Rubén, Rubén no quemes caucho, no agites Rubén, Rubén no me agonices, no me mortifiques Rubén, Rubén modérate, Rubén compórtate, Rubén aquietáte, Rubén compone.
</p>
<p class="text-paragraph">
[4] Rubén no corras Rubén no grites Rubén no brinques Rubén no saltes Rubén no pases frente a los guardias Rubén no enfrentes los policías Rubén no dejes que te disparen Rubén no saltes Rubén no grites Rubén no sangres Rubén no caigas:
</p>
<p class="text-paragraph">
[5] No te mueras, Rubén.
</p>
<p class="text-paragraph"><i>Recuperado de https://terrenosimpracticables.wordpress.com/2011/03/21/ruben-cuento-luis-britto</i></p>

<p class="question-text">68. De la siguiente lista, seleccionar las características que corresponden al texto.</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question68" value="a">
        <span>1 y 2</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question68" value="b">
        <span>2 y 4</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question68" value="c">
        <span>3 y 4</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question68" value="d">
        <span>1 y 5</span>
    </label>
</div>

<p class="question-text">69. ¿Cuál es la intención del autor al escribir el texto?</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question69" value="a">
        <span>Hablar de la muerte de los hijos</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question69" value="b">
        <span>Expresar el deseo de tener un hijo varón</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question69" value="c">
        <span>Contar ampliamente una historia compleja</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question69" value="d">
        <span>Exponer el entorno socioeconómico de su país</span>
    </label>
</div>

<p class="question-text">70. ¿Qué idea se desprende del párrafo [4] de la lectura?</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question70" value="a">
        <span>El narrador observa todo el tiempo a Rubén</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question70" value="b">
        <span>Rubén sangró debido a que sufrió una caída</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question70" value="c">
        <span>Rubén se encuentra muy limitado por el narrador</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question70" value="d">
        <span>El narrador no deja de ver a Rubén como a un niño</span>
    </label>
</div>

<p class="question-text">71. Identificar el párrafo en el que se encuentra el clímax del texto.</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question71" value="a">
        <span>[2]</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question71" value="b">
        <span>[3]</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question71" value="c">
        <span>[4]</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question71" value="d">
        <span>[5]</span>
    </label>
</div>

<p class="question-text">72. Elegir la inferencia que se desprende de la lectura.</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question72" value="a">
        <span>La mamá de Rubén es quien está narrando la historia</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question72" value="b">
        <span>La historia se presenta a través de un narrador omnisciente</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question72" value="c">
        <span>El texto anterior puede ser considerado como un instructivo</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question72" value="d">
        <span>El narrador es un buen declamador debido al ritmo de la lectura</span>
    </label>
</div>

<p class="question-text">73. ¿Cómo es la personalidad de Rubén?</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question73" value="a">
        <span>Rebelde</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question73" value="b">
        <span>Conflictiva</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question73" value="c">
        <span>Irreverente</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question73" value="d">
        <span>Extrovertida</span>
    </label>
</div>

<p class="question-text">74. El narrador del texto se percibe ________ por Rubén.</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question74" value="a">
        <span>ansioso</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question74" value="b">
        <span>preocupado</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question74" value="c">
        <span>aprehensivo</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question74" value="d">
        <span>obsesionado</span>
    </label>
</div>

<p class="question-text">75. El recurso retórico llamado ________ se encuentra a lo largo de la lectura.</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question75" value="a">
        <span>antítesis</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question75" value="b">
        <span>metáfora</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question75" value="c">
        <span>hipérbole</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question75" value="d">
        <span>repetición</span>
    </label>
</div>

<p class="question-text">76. ¿Qué imagen es compatible con el párrafo [3] del texto?</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question76" value="a">
        <span><img src="../imagenes/image_a3.png" alt="Personas de pie con mochilas"></span>
    </label>
    <label class="option-item">
        <input type="radio" name="question76" value="b">
        <span><img src="../imagenes/image_b3.jpg" alt="Manos entrelazadas"></span>
    </label>
    <label class="option-item">
        <input type="radio" name="question76" value="c">
        <span><img src="../imagenes/image_c3.jpg" alt="Personas levantando pancartas"></span>
    </label>
    <label class="option-item">
        <input type="radio" name="question76" value="d">
        <span><img src="../imagenes/image_d3.jpg" alt="Persona con casco y gafas"></span>
    </label>
</div>

<p class="question-text">77. ¿Quién es el protagonista del texto?</p>
<div class="options-container">
    <label class="option-item">
        <input type="radio" name="question77" value="a">
        <span>Rubén</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question77" value="b">
        <span>El narrador</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question77" value="c">
        <span>Los guardias</span>
    </label>
    <label class="option-item">
        <input type="radio" name="question77" value="d">
        <span>Los padres de Rubén</span>
    </label>
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
<h1>My Lovely Family</h1>
<p>[1]</p>
<p>There are families of two people and families of a dozen people. Mine is the second type. I live in a big home with my mother, my father, my grandmother Patty, my aunt Fanny and my four siblings.</p>
<p>[2]</p>
<p>Grandma Patty is dad's mother. She's 80 and she is very lively. 
My aunt Fanny is my mom's little sister. She is 22 and she is even younger than Jonny, my eldest brother. 
He is 26 and he is my half-brother, he is my dad's son but not my mom's. 
My eldest sister, Katy is also my dad's daughter, but she's 20, 2 years younger than my aunt Fanny.</p>
<div class="question-item">
    <p class="question-text">78. Who is the youngest member of the family?</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question78" value="a">
            <span>Aunt Fanny</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question78" value="b">
            <span>Jonny</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question78" value="c">
            <span>Jamie</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question78" value="d">
            <span>Leslie</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">79. How many brothers and sisters does the narrator have?</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question79" value="a">
            <span>Three</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question79" value="b">
            <span>Four</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question79" value="c">
            <span>Five</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question79" value="d">
            <span>Six</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">80. How old is Grandma Patty?</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question80" value="a">
            <span>Eighty-eight</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question80" value="b">
            <span>Eighteen</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question80" value="c">
            <span>Eighty</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question80" value="d">
            <span>Sixty</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">81. Who is Aunt Fanny related to?</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question81" value="a">
            <span>Dad</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question81" value="b">
            <span>Mom</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question81" value="c">
            <span>Jonny</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question81" value="d">
            <span>Grandma</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">82. What is Jonny's link to Leslie?</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question82" value="a">
            <span>Half-brother</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question82" value="b">
            <span>Brother</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question82" value="c">
            <span>Cousin</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question82" value="d">
            <span>Uncle</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">83. How old is Katy?</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question83" value="a">
            <span>Twenty-two</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question83" value="b">
            <span>Twenty-six</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question83" value="c">
            <span>Twenty</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question83" value="d">
            <span>Eighty</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">84. Who in the family are the same age?</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question84" value="a">
            <span>Jamie and Jane</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question84" value="b">
            <span>Jonny and Katy</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question84" value="c">
            <span>Jonny and Jamie</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question84" value="d">
            <span>Aunt Fanny and Grandma Patty</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">85. Who is younger than Aunt Fanny?</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question85" value="a">
            <span>Jane</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question85" value="b">
            <span>Katy</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question85" value="c">
            <span>Jonny</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question85" value="d">
            <span>Jamie</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">86. How many people live at this family’s house?</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question86" value="a">
            <span>Two</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question86" value="b">
            <span>Nine</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question86" value="c">
            <span>Seven</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question86" value="d">
            <span>Twelve</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">87. In the family Jonny is:</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question87" value="a">
            <span>the youngest</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question87" value="b">
            <span>the middle child</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question87" value="c">
            <span>one of the twins</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question87" value="d">
            <span>older than the other siblings</span>
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
    <p class="question-text">98. Las células progenitoras de un organismo diploide (2n = 84) realizan meiosis. 
     Al final se producirán ___ células hijas con ___ cromosomas.</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question98" value="a">
            <span>2 - 23</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question98" value="b">
            <span>4 - 23</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question98" value="c">
            <span>2 - 42</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question98" value="d">
            <span>4 - 42</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">99. Durante el ciclo biogeoquímico del carbono, ¿cuál es la materia prima para la formación de compuestos orgánicos como la glucosa?</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question99" value="a">
            <span>CO₂</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question99" value="b">
            <span>CO</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question99" value="c">
            <span>CH₄</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question99" value="d">
            <span>H₂O₂</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">100. Únicamente la célula vegetal cuenta con:</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question100" value="a">
            <span>glucocálix</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question100" value="b">
            <span>lisosomas</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question100" value="c">
            <span>pared celular</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question100" value="d">
            <span>mitocondrias</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">101. Se cruza una planta con semillas amarillas monohíbridas (Yy) con otra de semillas verdes (yy). De un total de 120 plantas hijas, ¿cuántas plantas serán de semillas verdes?</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question101" value="a">
            <span>50</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question101" value="b">
            <span>60</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question101" value="c">
            <span>90</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question101" value="d">
            <span>120</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">102. La importancia del proceso de meiosis radica en:</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question102" value="a">
            <span>la regeneración celular</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question102" value="b">
            <span>el desarrollo embrionario</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question102" value="c">
            <span>la formación de gametos</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question102" value="d">
            <span>el crecimiento del cuerpo</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">103. La mitosis es un tipo de división en el que una célula ________ se divide en ___ células ________ con la finalidad de multiplicarse.</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question103" value="a">
            <span>haploide - 4 - haploides</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question103" value="b">
            <span>diploide - 4 - haploides</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question103" value="c">
            <span>haploide - 2 - diploides</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question103" value="d">
            <span>diploide - 2 - diploides</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">104. Son animales que presentan reproducción asexual por gemación.</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question104" value="a">
            <span>Esponjas de mar e hidras</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question104" value="b">
            <span>Planarias y estrellas de mar</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question104" value="c">
            <span>Estrellas y esponjas de mar</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question104" value="d">
            <span>Esponjas de mar y planarias</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">105. La unidad responsable de la transmisión de una característica hereditaria se denomina:</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question105" value="a">
            <span>gen</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question105" value="b">
            <span>ADN</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question105" value="c">
            <span>alelo</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question105" value="d">
            <span>cromosoma</span>
        </label>
    </div>
</div>


<div class="question-item">
    <p class="question-text">106. Las características del cabello negro y el color marrón de los ojos se consideran dominantes ante las características del cabello castaño y ojos de color azul, por lo que si un hombre con cabello negro y ojos marrones (ambas características heterocigotas) tiene un hijo con una mujer de cabello castaño y ojos azules, los siguientes genotipos serán susceptibles de expresarse, EXCEPTO:</p>
    <p>1. nnpp<br>
    2. NnPp<br>
    3. Nnpp<br>
    4. nnPp<br>
    5. NnPP<br>
    6. NNPP</p>
    <br>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question106" value="a">
            <span>1 y 3</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question106" value="b">
            <span>2 y 6</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question106" value="c">
            <span>5 y 6</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question106" value="d">
            <span>4 y 3</span>
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
            <input type="radio" name="question1" value="a">
            <span>H2O</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question1" value="b">
            <span>CO2</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question1" value="c">
            <span>O2</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question1" value="d">
            <span>CH4</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">113. ¿Cuál es el pH del agua pura a 25°C?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question2" value="a">
            <span>7</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question2" value="b">
            <span>0</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question2" value="c">
            <span>14</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question2" value="d">
            <span>5</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">114. ¿Cuál de las siguientes es una propiedad física de los ácidos?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question3" value="a">
            <span>Tienen sabor amargo</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question3" value="b">
            <span>Tienen sabor ácido</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question3" value="c">
            <span>Suelen ser de color azul</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question3" value="d">
            <span>No reaccionan con metales</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">115. ¿Qué tipo de enlace se forma entre dos átomos de hidrógeno?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question4" value="a">
            <span>Enlace iónico</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question4" value="b">
            <span>Enlace covalente</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question4" value="c">
            <span>Enlace metálico</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question4" value="d">
            <span>Enlace de hidrógeno</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">116. ¿Qué gas se libera cuando un ácido reacciona con un metal?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question5" value="a">
            <span>Oxígeno</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question5" value="b">
            <span>Hidrógeno</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question5" value="c">
            <span>Carbono</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question5" value="d">
            <span>Nitrógeno</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">117. ¿Qué elemento forma parte de la molécula de hemoglobina?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question6" value="a">
            <span>Oro</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question6" value="b">
            <span>Hierro</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question6" value="c">
            <span>Plata</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question6" value="d">
            <span>Cobre</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">118. ¿Cuál es el producto de la reacción entre un ácido y una base?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question7" value="a">
            <span>Sal y agua</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question7" value="b">
            <span>Gas y agua</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question7" value="c">
            <span>Oxígeno y gas</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question7" value="d">
            <span>Ácido y base</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">119. ¿Qué es un catalizador en una reacción química?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question8" value="a">
            <span>Acelera la reacción sin consumirse</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question8" value="b">
            <span>Es un reactivo principal</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question8" value="c">
            <span>Reacciona para formar el producto</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question8" value="d">
            <span>Hace que la reacción se detenga</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">120. ¿Qué propiedad permite que los gases se expandan para llenar un recipiente?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question9" value="a">
            <span>Densidad</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question9" value="b">
            <span>Viscosidad</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question9" value="c">
            <span>Compresibilidad</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question9" value="d">
            <span>Expansión térmica</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">121. ¿Cuál de los siguientes compuestos es un ácido fuerte?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question10" value="a">
            <span>Ácido acético</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question10" value="b">
            <span>Ácido sulfúrico</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question10" value="c">
            <span>Ácido cítrico</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question10" value="d">
            <span>Ácido carbónico</span>
        </label>
    </div>
</div>
           <div class="question-item">
    <p class="question-text">122. ¿Qué producto se forma en la siguiente reacción química?</p>
    <p class="equation">NaOH + HCl → ?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question11" value="a">
            <span>NaCl + H2O</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question11" value="b">
            <span>NaCl + H2</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question11" value="c">
            <span>NaOH + H2O</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question11" value="d">
            <span>NaH + HCl</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">123. ¿Cuál es el número de átomos de oxígeno en 2 moles de O2?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question12" value="a">
            <span>6.022 x 10²³ átomos</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question12" value="b">
            <span>12.044 x 10²³ átomos</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question12" value="c">
            <span>6.022 x 10²⁴ átomos</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question12" value="d">
            <span>1.204 x 10²⁴ átomos</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">124. Balancea la siguiente ecuación química:</p>
    <p class="equation">C₄H₁₀ + O₂ → CO₂ + H₂O</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question13" value="a">
            <span>2 C₄H₁₀ + 13 O₂ → 8 CO₂ + 10 H₂O</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question13" value="b">
            <span>C₄H₁₀ + 5 O₂ → 4 CO₂ + 5 H₂O</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question13" value="c">
            <span>C₄H₁₀ + 4 O₂ → 4 CO₂ + 6 H₂O</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question13" value="d">
            <span>C₄H₁₀ + 10 O₂ → 8 CO₂ + 8 H₂O</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">125. ¿Cuál es la fórmula molecular del ácido sulfúrico?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question14" value="a">
            <span>H₂SO₄</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question14" value="b">
            <span>H₂SO₃</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question14" value="c">
            <span>H₂O</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question14" value="d">
            <span>SO₂</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">126. ¿Cuál es el pH de una solución acuosa de NaOH?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question15" value="a">
            <span>7</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question15" value="b">
            <span>8</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question15" value="c">
            <span>12</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question15" value="d">
            <span>14</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">127. Balancea la siguiente ecuación de reacción redox:</p>
    <p class="equation">Fe + Cl₂ → FeCl₃</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question16" value="a">
            <span>2 Fe + 3 Cl₂ → 2 FeCl₃</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question16" value="b">
            <span>Fe + 2 Cl₂ → FeCl₃</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question16" value="c">
            <span>3 Fe + 2 Cl₂ → 3 FeCl₃</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question16" value="d">
            <span>2 Fe + Cl₂ → FeCl₃</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">128. ¿Cuál es el reactivo limitante en la siguiente reacción química?</p>
    <p class="equation">2 Na + Cl₂ → 2 NaCl</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question17" value="a">
            <span>Na</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question17" value="b">
            <span>Cl₂</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question17" value="c">
            <span>NaCl</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question17" value="d">
            <span>Ninguna de las anteriores</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">129. ¿Qué producto se forma en la siguiente reacción?</p>
    <p class="equation">H₂SO₄ + NaOH → ?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question18" value="a">
            <span>Na₂SO₄ + H₂O</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question18" value="b">
            <span>NaSO₄ + H₂O</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question18" value="c">
            <span>NaHSO₄ + H₂O</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question18" value="d">
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
                <input type="radio" name="question1" value="a">
                <span>v = d/t</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question1" value="b">
                <span>v = t/d</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question1" value="c">
                <span>v = t * d</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question1" value="d">
                <span>v = d * t</span>
            </label>
        </div>
    </div>

    <div class="question-item">
        <p class="question-text">131. ¿Cómo se calcula la fuerza de gravedad? La fórmula es: \( F = m \cdot g \)</p>
        <div class="options-container">
            <label class="option-item">
                <input type="radio" name="question2" value="a">
                <span>Fuerza = Masa x Aceleración</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question2" value="b">
                <span>Fuerza = Masa / Aceleración</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question2" value="c">
                <span>Fuerza = Aceleración / Masa</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question2" value="d">
                <span>Fuerza = Aceleración x Masa</span>
            </label>
        </div>
    </div>

    <div class="question-item">
        <p class="question-text">132. ¿Cuál es la ecuación que describe el movimiento rectilíneo acelerado (MRA)?</p>
        <div class="options-container">
            <label class="option-item">
                <input type="radio" name="question3" value="a">
                <span>v = u + at</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question3" value="b">
                <span>v = u - at</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question3" value="c">
                <span>v = u * at</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question3" value="d">
                <span>v = u / at</span>
            </label>
        </div>
    </div>

    <div class="question-item">
        <p class="question-text">133. En un campo eléctrico, la ley de Coulomb establece que la fuerza entre dos cargas es proporcional a:</p>
        <div class="options-container">
            <label class="option-item">
                <input type="radio" name="question4" value="a">
                <span>la distancia al cuadrado</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question4" value="b">
                <span>el producto de las cargas</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question4" value="c">
                <span>la distancia entre las cargas</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question4" value="d">
                <span>la suma de las cargas</span>
            </label>
        </div>
    </div>

    <div class="question-item">
        <p class="question-text">134. ¿Cuál es la ecuación para calcular la energía cinética de un objeto? La fórmula es: \( E_k = \frac{1}{2} m v^2 \)</p>
        <div class="options-container">
            <label class="option-item">
            <input type="radio" name="question5" value="a">
            <span>\( E_k = \frac{1}{2} m v^2 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question5" value="b">
            <span>\( E_k = m v \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question5" value="c">
            <span>\( E_k = m g h \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question5" value="d">
            <span>\( E_k = \frac{1}{2} m g h \)</span>
        </label>
        </div>
    </div>

    <div class="question-item">
        <p class="question-text">135. ¿Qué ley describe el comportamiento de un gas ideal a temperaturas y presiones constantes?</p>
        <div class="options-container">
            <label class="option-item">
                <input type="radio" name="question6" value="a">
                <span>Ley de Boyle</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question6" value="b">
                <span>Ley de Charles</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question6" value="c">
                <span>Ley de Avogadro</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question6" value="d">
                <span>Ley de Gay-Lussac</span>
            </label>
        </div>
    </div>

    <div class="question-item">
        <p class="question-text">136. ¿Cuál es la ecuación que describe el movimiento de una onda? La fórmula es: \( v = f \cdot \lambda \)</p>
        <div class="options-container">
            <label class="option-item">
                <input type="radio" name="question7" value="a">
                <span>v = f * λ</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question7" value="b">
                <span>v = f / λ</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question7" value="c">
                <span>v = λ / f</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question7" value="d">
                <span>v = λ * f</span>
            </label>
        </div>
    </div>

    <div class="question-item">
        <p class="question-text">137. ¿Cuál es la ecuación de la ley de Ohm? La fórmula es: \( V = I \cdot R \)</p>
        <div class="options-container">
            <label class="option-item">
                <input type="radio" name="question8" value="a">
                <span>V = I * R</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question8" value="b">
                <span>V = I / R</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question8" value="c">
                <span>V = I + R</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question8" value="d">
                <span>V = R / I</span>
            </label>
        </div>
    </div>

    <div class="question-item">
        <p class="question-text">138. ¿Qué ocurre cuando la temperatura de un gas ideal aumenta manteniendo constante el volumen?</p>
        <div class="options-container">
            <label class="option-item">
                <input type="radio" name="question9" value="a">
                <span>La presión disminuye</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question9" value="b">
                <span>La presión aumenta</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question9" value="c">
                <span>La presión se mantiene constante</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question9" value="d">
                <span>No se puede determinar sin más información</span>
            </label>
        </div>
    </div>
<div class="question-item">
        
    <p class="question-text">139. A partir de la máquina de Atwood que se muestra en la figura, determine el valor de la masa \( m_1 \) para que el sistema sea estático. Tenga en cuenta el valor de la gravedad \( g = 9.8 \, \text{m/s}^2 \), la masa \( m_2 = 10 \, \text{kg} \) y que la rampa inclinada no tiene fricción con la masa 1.</p>
        <div class="image-container">
        <img src="../imagenes/maquina.png" alt="Triángulo con ángulos y medidas dados" style="width:400px;height:250px;">
    </div>
    <div class="options-container">
            <label class="option-item">
                <input type="radio" name="question11" value="a">
                <span>12 kg</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question11" value="b">
                <span>10 kg</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question11" value="c">
                <span>8 kg</span>
            </label>
            <label class="option-item">
                <input type="radio" name="question11" value="d">
                <span>5 kg</span>
            </label>
        </div>
    </div>
                    <div class="question-item">
    <p class="question-text">140. ¿Cuál es la fórmula para la Ley de Coulomb que describe la fuerza entre dos cargas eléctricas?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question13" value="a">
            <span>\( F = k \frac{q_1 q_2}{r^2} \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question13" value="b">
            <span>\( F = \frac{k q_1 q_2}{r} \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question13" value="c">
            <span>\( F = k \frac{q_1 + q_2}{r^2} \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question13" value="d">
            <span>\( F = k \frac{q_1 q_2}{r} \)</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">141. La ley de conservación de la energía se expresa como:</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question14" value="a">
            <span>\( E_{inicial} = E_{final} \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question14" value="b">
            <span>\( E = m c^2 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question14" value="c">
            <span>\( E = P \cdot V \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question14" value="d">
            <span>\( E = \frac{1}{2} m v^2 \)</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">142. ¿Qué fórmula describe la ley de Hooke para un resorte?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question15" value="a">
            <span>\( F = - k x \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question15" value="b">
            <span>\( F = k x \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question15" value="c">
            <span>\( F = m g \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question15" value="d">
            <span>\( F = \frac{m v^2}{r} \)</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">143. ¿Cómo se calcula la energía potencial gravitatoria de un objeto?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question16" value="a">
            <span>\( E_p = m g h \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question16" value="b">
            <span>\( E_p = \frac{1}{2} m v^2 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question16" value="c">
            <span>\( E_p = \frac{1}{2} k x^2 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question16" value="d">
            <span>\( E_p = m c^2 \)</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">144. ¿Cuál es la ecuación que describe el movimiento rectilíneo uniformemente acelerado (MRUA)?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question17" value="a">
            <span>\( v = v_0 + a t \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question17" value="b">
            <span>\( v = v_0 + g t \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question17" value="c">
            <span>\( x = v_0 t + \frac{1}{2} a t^2 \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question17" value="d">
            <span>\( x = v_0 t + \frac{1}{2} g t^2 \)</span>
        </label>
    </div>
</div>

<div class="question-item">
    <p class="question-text">145. ¿Cómo se calcula la velocidad de un objeto en caída libre?</p>
    <div class="options-container">
        <label class="option-item">
            <input type="radio" name="question18" value="a">
            <span>\( v = g t \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question18" value="b">
            <span>\( v = v_0 + g t \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question18" value="c">
            <span>\( v = \frac{v_0 + v}{2} \)</span>
        </label>
        <label class="option-item">
            <input type="radio" name="question18" value="d">
            <span>\( v = g t^2 \)</span>
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
            window.location.href = 'resultado1.html';
        } else {
            // Mostrar mensaje de confirmación si hay preguntas sin responder
            const confirmFinish = confirm('Aún no has terminado el examen. ¿Deseas continuar de todas formas?');
            if (confirmFinish) {
                window.location.href = 'resultado1.html';
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
</script>
</body>
</html>