<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*, java.util.*, javax.servlet.http.HttpSession" %>
<%
    // Verificar si el usuario está logueado
    Integer userId = (Integer) session.getAttribute("userId");
    if (userId == null) {
        response.sendRedirect("../index.html");
        return;
    }

    // Calcular total score
    int totalScore = 0;
    String[] correctAnswers = {
        "a", "b", "d", "a", "c", "b", "c", "d", "a", "b", "c", "a", "d", "b", "a",
        "c", "b", "d", "a", "c", "d", "b", "a", "c", "d", "a", "b", "c", "b", "d",
        "a", "c", "d", "b", "a", "c", "b", "d", "a", "c", "d", "b", "a", "c", "d",
        "b", "a", "c", "d", "a", "b", "c", "d", "a", "b", "c", "d", "b", "a", "c",
        "d", "a", "b", "c", "d", "a", "b", "c", "b", "d", "a", "c", "d", "b", "a",
        "c", "d", "a", "b", "c", "b", "d", "a", "c", "d", "b", "a", "c", "d", "a",
        "b", "c", "d", "b", "a", "c", "d", "a", "b", "c", "d", "a", "b", "c", "d",
        "b", "a", "c", "d", "a", "b", "c", "d", "a", "c", "b", "d", "a", "c", "b",
        "d", "a", "b", "c", "d", "a", "b", "c", "d", "b", "a", "c", "d", "a", "b",
        "c", "d", "a", "b", "c", "d", "b", "a", "c", "d", "a", "b", "c", "d", "b",
        "a", "c", "d", "a", "b", "c", "d", "a", "b", "c", "d", "a", "c", "b", "d",
        "a", "c", "b", "d", "a"
    };

    for (int i = 1; i <= 145; i++) {
        String userAnswer = request.getParameter("question" + i);
        if (userAnswer != null && userAnswer.equals(correctAnswers[i - 1])) {
            totalScore++;
        }
    }

    Connection conn = null;
    PreparedStatement pst = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/LSA", "root", "n0m3l0");
        
        String insertQuery = "INSERT INTO resultados (userId, score) VALUES (?, ?)";
        pst = conn.prepareStatement(insertQuery);
        pst.setInt(1, userId);
        pst.setInt(2, totalScore);
        
        int rowsAffected = pst.executeUpdate();
        if (rowsAffected > 0) {
            out.println("");
        } else {
            out.println("");
        }
    } catch (ClassNotFoundException e) {
        out.println("Error de driver: " + e.getMessage());
        e.printStackTrace();
    } catch (SQLException e) {
        out.println("Error de base de datos: " + e.getMessage());
        e.printStackTrace();
    } finally {
        try {
            if (pst != null) pst.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            out.println("Error al cerrar recursos: " + e.getMessage());
            e.printStackTrace();
        }
    }
%>
<style>
:root {
  /* Color palette refinement */
  --dark-blue: #0a192f;
  --navy-blue: #112240;
  --light-blue: #64ffda;
  --text-white: #ffffff;
  --text-highlight: #e6f1ff;
  --accent-blue: #57cbff;
  --table-hover: rgba(17, 34, 64, 0.9);
  
  /* Enhanced variables */
  --box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
  --border-radius: 12px;
  --transition: all 0.3s ease;
  --container-bg: linear-gradient(180deg, rgba(17, 34, 64, 0.97) 0%, rgba(10, 25, 47, 0.97) 100%);
}

body {
  font-family: 'Inter', -apple-system, system-ui, sans-serif;
    background: linear-gradient(135deg, #1a2b49 0%, #2a4073 100%);
  color: var(--text-white);
  min-height: 100vh;
  margin: 0;
  padding: 2rem;
  line-height: 1.6;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

.container {
  background: var(--container-bg);
  backdrop-filter: blur(10px);
  -webkit-backdrop-filter: blur(10px);
  border-radius: var(--border-radius);
  box-shadow: var(--box-shadow), 0 0 15px var(--light-blue);
  max-width: 1200px;
  margin: 0 auto;
  padding: 2.5rem;
  border: 1px solid var(--light-blue);
  animation: glowPulse 2s infinite;
}

h1 {
  color: var(--text-white);
  text-align: center;
  font-size: 2.5rem;
  margin-bottom: 2rem;
  font-weight: 700;
  letter-spacing: -0.5px;
  text-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
}

.home-button {
  background: var(--accent-blue);
  color: var(--dark-blue);
  padding: 0.875rem 2rem;
  font-size: 1rem;
  font-weight: 600;
  border: none;
  border-radius: 6px;
  cursor: pointer;
  transition: var(--transition);
  margin: 2rem auto;
  display: block;
  text-transform: uppercase;
  letter-spacing: 0.5px;
}

.home-button:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 20px rgba(87, 203, 255, 0.5);
  background: var(--light-blue);
}
.result {
                background: rgba(17, 34, 64, 0.8);
                color: var(--text-white);
                padding: 1.75rem;
                border-radius: 8px;
                text-align: center;
                font-size: 1.75rem;
                font-weight: 600;
                margin: 2rem 0;
                border: 1px solid rgba(255, 255, 255, 0.15);
                box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
                text-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
                transition: var(--transition);
            }

            /* Estilos para rangos de puntuación */
            .result-low {
                background: rgba(255, 99, 132, 0.3) !important;
                border-color: rgba(255, 99, 132, 0.5) !important;
                color: #ffffff !important;
                box-shadow: 0 4px 20px rgba(255, 99, 132, 0.2) !important;
            }

            .result-medium {
                background: rgba(255, 206, 86, 0.3) !important;
                border-color: rgba(255, 206, 86, 0.5) !important;
                color: #ffffff !important;
                box-shadow: 0 4px 20px rgba(255, 206, 86, 0.2) !important;
            }

            .result-high {
                background: rgba(75, 192, 192, 0.3) !important;
                border-color: rgba(75, 192, 192, 0.5) !important;
                color: #ffffff !important;
                box-shadow: 0 4px 20px rgba(75, 192, 192, 0.2) !important;
            }
table {
  width: 100%;
  border-collapse: separate;
  border-spacing: 0;
  margin: 2rem 0;
  border-radius: var(--border-radius);
  overflow: hidden;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
}

thead {
  background: var(--navy-blue);
  border-bottom: 2px solid rgba(255, 255, 255, 0.1);
}

th {
  color: var(--text-white);
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  font-size: 1rem;
  padding: 1.25rem 1rem;
  text-align: left;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
}

td {
  padding: 1.25rem 1rem;
  color: var(--text-white);
  border-bottom: 1px solid rgba(255, 255, 255, 0.1);
  font-size: 1rem;
}

tbody tr {
  background: rgba(17, 34, 64, 0.5);
  transition: var(--transition);
}

tbody tr:hover {
  background: var(--table-hover);
  transform: translateX(4px);
}
button {
    outline: none;
    cursor: pointer;
    border: none;
    padding: 0.9rem 2rem;
    margin: 0;
    font-family: 'Montserrat', sans-serif;
    font-size: 17px;
    font-weight: 700;
    border-radius: 500px;
    background: #a0c4ff; /* Azul claro pastel */
    color: black; /* Texto negro */
    transition: background 0.4s, color 0.4s;
}

button:hover {
    background: #8fbce4; /* Un tono ligeramente más oscuro de azul claro pastel */
    color: white; /* Texto blanco al pasar el ratón */
}


/* Responsive refinements */
@media (max-width: 768px) {
  body {
    padding: 1rem;
  }
  
  .container {
    padding: 1.5rem;
  }
  
  h1 {
    font-size: 2rem;
  }
  
  .result {
    font-size: 1.5rem;
    padding: 1.25rem;
  }
  
  table {
    font-size: 0.925rem;
  }
  
  th, td {
    padding: 1rem;
  }
}

/* Ensure high contrast for null values */
td:empty, 
td:contains('null') {
  color: rgba(255, 255, 255, 0.5);
  font-style: italic;
}

/* Enhanced focus states for accessibility */
.home-button:focus {
  outline: none;
  box-shadow: 0 0 0 3px rgba(87, 203, 255, 0.5);
}

/* Smooth scrolling */
html {
  scroll-behavior: smooth;
}
@keyframes glowPulse {
  0% {
    box-shadow: 0 0 15px var(--light-blue);
  }
  50% {
    box-shadow: 0 0 25px var(--light-blue);
  }
  100% {
    box-shadow: 0 0 15px var(--light-blue);
  }
}

    </style>


<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>LSA - Learn. Study. Achieve</title>
        <link rel="icon" type="image/png" href="imagenes/Savy.png">
    </head>
    <body>
        <div class="container">
            <h1>Resultados del Examen</h1>
<button onclick="location.href='../pagina_principal/principal.jsp'">Ir a la página principal</button>
<p class="result <%= (totalScore <= 90) ? "result-low" : 
                    (totalScore <= 120) ? "result-medium" : 
                    "result-high" %>">
    Tu puntuación es: <%= totalScore %> de 145
</p>

            <table>
                <thead>
                    <tr>
                        <th>Pregunta</th>
                        <th>Respuesta correcta</th>
                        <th>Tu respuesta</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td><%= correctAnswers[0] %></td>
                        <td><%= request.getParameter("question1") %></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><%= correctAnswers[1] %></td>
                        <td><%= request.getParameter("question2") %></td>
                    </tr>
                        <tr>
                        <td>3</td>
                        <td><%= correctAnswers[2] %></td>
                        <td><%= request.getParameter("question3") %></td>
                    </tr>
                    <tr>
    <td>4</td>
    <td><%= correctAnswers[3] %></td>
    <td><%= request.getParameter("question4") %></td>
</tr>
<tr>
    <td>5</td>
    <td><%= correctAnswers[4] %></td>
    <td><%= request.getParameter("question5") %></td>
</tr>
<tr>
    <td>6</td>
    <td><%= correctAnswers[5] %></td>
    <td><%= request.getParameter("question6") %></td>
</tr>
<tr>
    <td>7</td>
    <td><%= correctAnswers[6] %></td>
    <td><%= request.getParameter("question7") %></td>
</tr>
<tr>
    <td>8</td>
    <td><%= correctAnswers[7] %></td>
    <td><%= request.getParameter("question8") %></td>
</tr>
<tr>
    <td>9</td>
    <td><%= correctAnswers[8] %></td>
    <td><%= request.getParameter("question9") %></td>
</tr>
<tr>
    <td>10</td>
    <td><%= correctAnswers[9] %></td>
    <td><%= request.getParameter("question10") %></td>
</tr>
<tr>
    <td>11</td>
    <td><%= correctAnswers[10] %></td>
    <td><%= request.getParameter("question11") %></td>
</tr>
<tr>
    <td>12</td>
    <td><%= correctAnswers[11] %></td>
    <td><%= request.getParameter("question12") %></td>
</tr>
<tr>
    <td>13</td>
    <td><%= correctAnswers[12] %></td>
    <td><%= request.getParameter("question13") %></td>
</tr>
<tr>
    <td>14</td>
    <td><%= correctAnswers[13] %></td>
    <td><%= request.getParameter("question14") %></td>
</tr>
<tr>
    <td>15</td>
    <td><%= correctAnswers[14] %></td>
    <td><%= request.getParameter("question15") %></td>
</tr>
<tr>
    <td>16</td>
    <td><%= correctAnswers[15] %></td>
    <td><%= request.getParameter("question16") %></td>
</tr>
<tr>
    <td>17</td>
    <td><%= correctAnswers[16] %></td>
    <td><%= request.getParameter("question17") %></td>
</tr>
<tr>
    <td>18</td>
    <td><%= correctAnswers[17] %></td>
    <td><%= request.getParameter("question18") %></td>
</tr>
<tr>
    <td>19</td>
    <td><%= correctAnswers[18] %></td>
    <td><%= request.getParameter("question19") %></td>
</tr>
<tr>
    <td>20</td>
    <td><%= correctAnswers[19] %></td>
    <td><%= request.getParameter("question20") %></td>
</tr>
<tr>
    <td>21</td>
    <td><%= correctAnswers[20] %></td>
    <td><%= request.getParameter("question21") %></td>
</tr>
<tr>
    <td>22</td>
    <td><%= correctAnswers[21] %></td>
    <td><%= request.getParameter("question22") %></td>
</tr>
<tr>
    <td>23</td>
    <td><%= correctAnswers[22] %></td>
    <td><%= request.getParameter("question23") %></td>
</tr>
<tr>
    <td>24</td>
    <td><%= correctAnswers[23] %></td>
    <td><%= request.getParameter("question24") %></td>
</tr>
<tr>
    <td>25</td>
    <td><%= correctAnswers[24] %></td>
    <td><%= request.getParameter("question25") %></td>
</tr>
<tr>
    <td>26</td>
    <td><%= correctAnswers[25] %></td>
    <td><%= request.getParameter("question26") %></td>
</tr>
<tr>
    <td>27</td>
    <td><%= correctAnswers[26] %></td>
    <td><%= request.getParameter("question27") %></td>
</tr>
<tr>
    <td>28</td>
    <td><%= correctAnswers[27] %></td>
    <td><%= request.getParameter("question28") %></td>
</tr>
<tr>
    <td>29</td>
    <td><%= correctAnswers[28] %></td>
    <td><%= request.getParameter("question29") %></td>
</tr>
<tr>
    <td>30</td>
    <td><%= correctAnswers[29] %></td>
    <td><%= request.getParameter("question30") %></td>
</tr>
<tr>
    <td>31</td>
    <td><%= correctAnswers[30] %></td>
    <td><%= request.getParameter("question31") %></td>
</tr>
<tr>
    <td>32</td>
    <td><%= correctAnswers[31] %></td>
    <td><%= request.getParameter("question32") %></td>
</tr>
<tr>
    <td>33</td>
    <td><%= correctAnswers[32] %></td>
    <td><%= request.getParameter("question33") %></td>
</tr>
<tr>
    <td>34</td>
    <td><%= correctAnswers[33] %></td>
    <td><%= request.getParameter("question34") %></td>
</tr>
<tr>
    <td>35</td>
    <td><%= correctAnswers[34] %></td>
    <td><%= request.getParameter("question35") %></td>
</tr>
<tr>
    <td>36</td>
    <td><%= correctAnswers[35] %></td>
    <td><%= request.getParameter("question36") %></td>
</tr>
<tr>
    <td>37</td>
    <td><%= correctAnswers[36] %></td>
    <td><%= request.getParameter("question37") %></td>
</tr>
<tr>
    <td>38</td>
    <td><%= correctAnswers[37] %></td>
    <td><%= request.getParameter("question38") %></td>
</tr>
<tr>
    <td>39</td>
    <td><%= correctAnswers[38] %></td>
    <td><%= request.getParameter("question39") %></td>
</tr>
<tr>
    <td>40</td>
    <td><%= correctAnswers[39] %></td>
    <td><%= request.getParameter("question40") %></td>
</tr>
<tr>
    <td>41</td>
    <td><%= correctAnswers[40] %></td>
    <td><%= request.getParameter("question41") %></td>
</tr>
<tr>
    <td>42</td>
    <td><%= correctAnswers[41] %></td>
    <td><%= request.getParameter("question42") %></td>
</tr>
<tr>
    <td>43</td>
    <td><%= correctAnswers[42] %></td>
    <td><%= request.getParameter("question43") %></td>
</tr>
<tr>
    <td>44</td>
    <td><%= correctAnswers[43] %></td>
    <td><%= request.getParameter("question44") %></td>
</tr>
<tr>
    <td>45</td>
    <td><%= correctAnswers[44] %></td>
    <td><%= request.getParameter("question45") %></td>
</tr>
<tr>
    <td>46</td>
    <td><%= correctAnswers[45] %></td>
    <td><%= request.getParameter("question46") %></td>
</tr>
<tr>
    <td>47</td>
    <td><%= correctAnswers[46] %></td>
    <td><%= request.getParameter("question47") %></td>
</tr>
<tr>
    <td>48</td>
    <td><%= correctAnswers[47] %></td>
    <td><%= request.getParameter("question48") %></td>
</tr>
<tr>
    <td>49</td>
    <td><%= correctAnswers[48] %></td>
    <td><%= request.getParameter("question49") %></td>
</tr>
<tr>
    <td>50</td>
    <td><%= correctAnswers[49] %></td>
    <td><%= request.getParameter("question50") %></td>
</tr>
<tr>
    <td>51</td>
    <td><%= correctAnswers[50] %></td>
    <td><%= request.getParameter("question51") %></td>
</tr>
<tr>
    <td>52</td>
    <td><%= correctAnswers[51] %></td>
    <td><%= request.getParameter("question52") %></td>
</tr>
<tr>
    <td>53</td>
    <td><%= correctAnswers[52] %></td>
    <td><%= request.getParameter("question53") %></td>
</tr>
<tr>
    <td>54</td>
    <td><%= correctAnswers[53] %></td>
    <td><%= request.getParameter("question54") %></td>
</tr>
<tr>
    <td>55</td>
    <td><%= correctAnswers[54] %></td>
    <td><%= request.getParameter("question55") %></td>
</tr>
<tr>
    <td>56</td>
    <td><%= correctAnswers[55] %></td>
    <td><%= request.getParameter("question56") %></td>
</tr>
<tr>
    <td>57</td>
    <td><%= correctAnswers[56] %></td>
    <td><%= request.getParameter("question57") %></td>
</tr>
<tr>
    <td>58</td>
    <td><%= correctAnswers[57] %></td>
    <td><%= request.getParameter("question58") %></td>
</tr>
<tr>
    <td>59</td>
    <td><%= correctAnswers[58] %></td>
    <td><%= request.getParameter("question59") %></td>
</tr>
<tr>
    <td>60</td>
    <td><%= correctAnswers[59] %></td>
    <td><%= request.getParameter("question60") %></td>
</tr>
<tr>
    <td>61</td>
    <td><%= correctAnswers[60] %></td>
    <td><%= request.getParameter("question61") %></td>
</tr>
<tr>
    <td>62</td>
    <td><%= correctAnswers[61] %></td>
    <td><%= request.getParameter("question62") %></td>
</tr>
<tr>
    <td>63</td>
    <td><%= correctAnswers[62] %></td>
    <td><%= request.getParameter("question63") %></td>
</tr>
<tr>
    <td>64</td>
    <td><%= correctAnswers[63] %></td>
    <td><%= request.getParameter("question64") %></td>
</tr>
<tr>
    <td>65</td>
    <td><%= correctAnswers[64] %></td>
    <td><%= request.getParameter("question65") %></td>
</tr>
<tr>
    <td>66</td>
    <td><%= correctAnswers[65] %></td>
    <td><%= request.getParameter("question66") %></td>
</tr>
<tr>
    <td>67</td>
    <td><%= correctAnswers[66] %></td>
    <td><%= request.getParameter("question67") %></td>
</tr>
<tr>
    <td>68</td>
    <td><%= correctAnswers[67] %></td>
    <td><%= request.getParameter("question68") %></td>
</tr>
<tr>
    <td>69</td>
    <td><%= correctAnswers[68] %></td>
    <td><%= request.getParameter("question69") %></td>
</tr>
<tr>
    <td>70</td>
    <td><%= correctAnswers[69] %></td>
    <td><%= request.getParameter("question70") %></td>
</tr>
<tr>
    <td>71</td>
    <td><%= correctAnswers[70] %></td>
    <td><%= request.getParameter("question71") %></td>
</tr>
<tr>
    <td>72</td>
    <td><%= correctAnswers[71] %></td>
    <td><%= request.getParameter("question72") %></td>
</tr>
<tr>
    <td>73</td>
    <td><%= correctAnswers[72] %></td>
    <td><%= request.getParameter("question73") %></td>
</tr>
<tr>
    <td>74</td>
    <td><%= correctAnswers[73] %></td>
    <td><%= request.getParameter("question74") %></td>
</tr>
<tr>
    <td>75</td>
    <td><%= correctAnswers[74] %></td>
    <td><%= request.getParameter("question75") %></td>
</tr>
<tr>
    <td>76</td>
    <td><%= correctAnswers[75] %></td>
    <td><%= request.getParameter("question76") %></td>
</tr>
<tr>
    <td>77</td>
    <td><%= correctAnswers[76] %></td>
    <td><%= request.getParameter("question77") %></td>
</tr>
<tr>
    <td>78</td>
    <td><%= correctAnswers[77] %></td>
    <td><%= request.getParameter("question78") %></td>
</tr>
<tr>
    <td>79</td>
    <td><%= correctAnswers[78] %></td>
    <td><%= request.getParameter("question79") %></td>
</tr>
<tr>
    <td>80</td>
    <td><%= correctAnswers[79] %></td>
    <td><%= request.getParameter("question80") %></td>
</tr>
<tr>
    <td>81</td>
    <td><%= correctAnswers[80] %></td>
    <td><%= request.getParameter("question81") %></td>
</tr>
<tr>
    <td>82</td>
    <td><%= correctAnswers[81] %></td>
    <td><%= request.getParameter("question82") %></td>
</tr>
<tr>
    <td>83</td>
    <td><%= correctAnswers[82] %></td>
    <td><%= request.getParameter("question83") %></td>
</tr>
<tr>
    <td>84</td>
    <td><%= correctAnswers[83] %></td>
    <td><%= request.getParameter("question84") %></td>
</tr>
<tr>
    <td>85</td>
    <td><%= correctAnswers[84] %></td>
    <td><%= request.getParameter("question85") %></td>
</tr>
<tr>
    <td>86</td>
    <td><%= correctAnswers[85] %></td>
    <td><%= request.getParameter("question86") %></td>
</tr>
<tr>
    <td>87</td>
    <td><%= correctAnswers[86] %></td>
    <td><%= request.getParameter("question87") %></td>
</tr>
<tr>
    <td>88</td>
    <td><%= correctAnswers[87] %></td>
    <td><%= request.getParameter("question88") %></td>
</tr>
<tr>
    <td>89</td>
    <td><%= correctAnswers[88] %></td>
    <td><%= request.getParameter("question89") %></td>
</tr>
<tr>
    <td>90</td>
    <td><%= correctAnswers[89] %></td>
    <td><%= request.getParameter("question90") %></td>
</tr>
<tr>
    <td>91</td>
    <td><%= correctAnswers[90] %></td>
    <td><%= request.getParameter("question91") %></td>
</tr>
<tr>
    <td>92</td>
    <td><%= correctAnswers[91] %></td>
    <td><%= request.getParameter("question92") %></td>
</tr>
<tr>
    <td>93</td>
    <td><%= correctAnswers[92] %></td>
    <td><%= request.getParameter("question93") %></td>
</tr>
<tr>
    <td>94</td>
    <td><%= correctAnswers[93] %></td>
    <td><%= request.getParameter("question94") %></td>
</tr>
<tr>
    <td>95</td>
    <td><%= correctAnswers[94] %></td>
    <td><%= request.getParameter("question95") %></td>
</tr>
<tr>
    <td>96</td>
    <td><%= correctAnswers[95] %></td>
    <td><%= request.getParameter("question96") %></td>
</tr>
<tr>
    <td>97</td>
    <td><%= correctAnswers[96] %></td>
    <td><%= request.getParameter("question97") %></td>
</tr>
<tr>
    <td>98</td>
    <td><%= correctAnswers[97] %></td>
    <td><%= request.getParameter("question98") %></td>
</tr>
<tr>
    <td>99</td>
    <td><%= correctAnswers[98] %></td>
    <td><%= request.getParameter("question99") %></td>
</tr>
<tr>
    <td>100</td>
    <td><%= correctAnswers[99] %></td>
    <td><%= request.getParameter("question100") %></td>
</tr>
<tr>
    <td>101</td>
    <td><%= correctAnswers[100] %></td>
    <td><%= request.getParameter("question101") %></td>
</tr>
<tr>
    <td>102</td>
    <td><%= correctAnswers[101] %></td>
    <td><%= request.getParameter("question102") %></td>
</tr>
<tr>
    <td>103</td>
    <td><%= correctAnswers[102] %></td>
    <td><%= request.getParameter("question103") %></td>
</tr>
<tr>
    <td>104</td>
    <td><%= correctAnswers[103] %></td>
    <td><%= request.getParameter("question104") %></td>
</tr>
<tr>
    <td>105</td>
    <td><%= correctAnswers[104] %></td>
    <td><%= request.getParameter("question105") %></td>
</tr>
<tr>
    <td>106</td>
    <td><%= correctAnswers[105] %></td>
    <td><%= request.getParameter("question106") %></td>
</tr>
<tr>
    <td>107</td>
    <td><%= correctAnswers[106] %></td>
    <td><%= request.getParameter("question107") %></td>
</tr>
<tr>
    <td>108</td>
    <td><%= correctAnswers[107] %></td>
    <td><%= request.getParameter("question108") %></td>
</tr>
<tr>
    <td>109</td>
    <td><%= correctAnswers[108] %></td>
    <td><%= request.getParameter("question109") %></td>
</tr>
<tr>
    <td>110</td>
    <td><%= correctAnswers[109] %></td>
    <td><%= request.getParameter("question110") %></td>
</tr>
<tr>
    <td>111</td>
    <td><%= correctAnswers[110] %></td>
    <td><%= request.getParameter("question111") %></td>
</tr>
<tr>
    <td>112</td>
    <td><%= correctAnswers[111] %></td>
    <td><%= request.getParameter("question112") %></td>
</tr>
<tr>
    <td>113</td>
    <td><%= correctAnswers[112] %></td>
    <td><%= request.getParameter("question113") %></td>
</tr>
<tr>
    <td>114</td>
    <td><%= correctAnswers[113] %></td>
    <td><%= request.getParameter("question114") %></td>
</tr>
<tr>
    <td>115</td>
    <td><%= correctAnswers[114] %></td>
    <td><%= request.getParameter("question115") %></td>
</tr>
<tr>
    <td>116</td>
    <td><%= correctAnswers[115] %></td>
    <td><%= request.getParameter("question116") %></td>
</tr>
<tr>
    <td>117</td>
    <td><%= correctAnswers[116] %></td>
    <td><%= request.getParameter("question117") %></td>
</tr>
<tr>
    <td>118</td>
    <td><%= correctAnswers[117] %></td>
    <td><%= request.getParameter("question118") %></td>
</tr>
<tr>
    <td>119</td>
    <td><%= correctAnswers[118] %></td>
    <td><%= request.getParameter("question119") %></td>
</tr>
<tr>
    <td>120</td>
    <td><%= correctAnswers[119] %></td>
    <td><%= request.getParameter("question120") %></td>
</tr>
<tr>
    <td>121</td>
    <td><%= correctAnswers[120] %></td>
    <td><%= request.getParameter("question121") %></td>
</tr>
<tr>
    <td>122</td>
    <td><%= correctAnswers[121] %></td>
    <td><%= request.getParameter("question122") %></td>
</tr>
<tr>
    <td>123</td>
    <td><%= correctAnswers[122] %></td>
    <td><%= request.getParameter("question123") %></td>
</tr>
<tr>
    <td>124</td>
    <td><%= correctAnswers[123] %></td>
    <td><%= request.getParameter("question124") %></td>
</tr>
<tr>
    <td>125</td>
    <td><%= correctAnswers[124] %></td>
    <td><%= request.getParameter("question125") %></td>
</tr>
<tr>
    <td>126</td>
    <td><%= correctAnswers[125] %></td>
    <td><%= request.getParameter("question126") %></td>
</tr>
<tr>
    <td>127</td>
    <td><%= correctAnswers[126] %></td>
    <td><%= request.getParameter("question127") %></td>
</tr>
<tr>
    <td>128</td>
    <td><%= correctAnswers[127] %></td>
    <td><%= request.getParameter("question128") %></td>
</tr>
<tr>
    <td>129</td>
    <td><%= correctAnswers[128] %></td>
    <td><%= request.getParameter("question129") %></td>
</tr>
<tr>
    <td>130</td>
    <td><%= correctAnswers[129] %></td>
    <td><%= request.getParameter("question130") %></td>
</tr>
<tr>
    <td>131</td>
    <td><%= correctAnswers[130] %></td>
    <td><%= request.getParameter("question131") %></td>
</tr>
<tr>
    <td>132</td>
    <td><%= correctAnswers[131] %></td>
    <td><%= request.getParameter("question132") %></td>
</tr>
<tr>
    <td>133</td>
    <td><%= correctAnswers[132] %></td>
    <td><%= request.getParameter("question133") %></td>
</tr>
<tr>
    <td>134</td>
    <td><%= correctAnswers[133] %></td>
    <td><%= request.getParameter("question134") %></td>
</tr>
<tr>
    <td>135</td>
    <td><%= correctAnswers[134] %></td>
    <td><%= request.getParameter("question135") %></td>
</tr>
<tr>
    <td>136</td>
    <td><%= correctAnswers[135] %></td>
    <td><%= request.getParameter("question136") %></td>
</tr>
<tr>
    <td>137</td>
    <td><%= correctAnswers[136] %></td>
    <td><%= request.getParameter("question137") %></td>
</tr>
<tr>
    <td>138</td>
    <td><%= correctAnswers[137] %></td>
    <td><%= request.getParameter("question138") %></td>
</tr>
<tr>
    <td>139</td>
    <td><%= correctAnswers[138] %></td>
    <td><%= request.getParameter("question139") %></td>
</tr>
<tr>
    <tr>
    <td>140</td>
    <td><%= correctAnswers[139] %></td>
    <td><%= request.getParameter("question140") %></td>
</tr>
<tr>
    <td>141</td>
    <td><%= correctAnswers[140] %></td>
    <td><%= request.getParameter("question141") %></td>
</tr>
<tr>
    <td>142</td>
    <td><%= correctAnswers[141] %></td>
    <td><%= request.getParameter("question142") %></td>
</tr>
<tr>
    <td>143</td>
    <td><%= correctAnswers[142] %></td>
    <td><%= request.getParameter("question143") %></td>
</tr>
<tr>
    <td>144</td>
    <td><%= correctAnswers[143] %></td>
    <td><%= request.getParameter("question144") %></td>
</tr>
<tr>
    <td>145</td>
    <td><%= correctAnswers[144] %></td>
    <td><%= request.getParameter("question145") %></td>
</tr>

          </tbody>
            </table>

        </div>
    </body>
</html>
