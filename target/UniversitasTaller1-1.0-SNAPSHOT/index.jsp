<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Validador de Palíndromos</title>
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
<div class="container">
    <fieldset>
        <legend>
    <h1>Verificador de Palíndromos</h1>
        </legend>
    <form action="index.jsp" method="post">
        <div>
            <label for="palabra">Ingresa una palabra:</label>
            <input type="text"  id="palabra" name="palabra" required>
        </div>
        <br>
        <button style="background-color: aqua" border="2" type="submit">Verificar</button>
    </form>

    <%
        String palabra = request.getParameter("palabra");
        if (palabra != null && !palabra.isEmpty()) {
            palabra = palabra.toLowerCase(); //Convierte todos los carácteres ingresados en minúscula para su validación
            char[] caracter = palabra.toCharArray();
            boolean Palindromo = true;
            int i = 0;
            int j = caracter.length - 1;

            //Este While valida si la palabra ingresada es palíndroma
            while (i < j) {
                if (caracter[i] != caracter[j]) {
                    Palindromo = false;
                    break;
                }
                i++;
                j--;
            }
    %>
    <h2>¿Es palíndromo?</h2>
    <table border="20">
        <tr>
            <br>
            <th>La palabra</th>
            <th>Es palíndromo</th>
        </tr>
        <tr>
            <td><%= palabra %></td>
            <td><%= Palindromo ? "Sí" : "No" %></td>
        </tr>
    </table>
    <%
        }
    %>
</div>
</body>
</fieldset>
</html>