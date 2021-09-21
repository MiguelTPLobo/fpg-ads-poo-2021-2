<%-- 
    Document   : index
    Created on : 20 de set. de 2021, 17:26:47
    Author     : migue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOMEPAGE</title>
        <style> .box {text-align: center}</style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/MiguelLoboApp.jspf" %>
        <%
            if(session.getAttribute("user")== null && session.getAttribute("password")== null){
        %>
        <h3>Login:</h3>
        <form method="POST">
            Usuario: <input type="text" name="user"/>
            Senha: <input type="password" name="password"/>
            <input type="submit" name="login" value="Entrar" />
        </form>
        <h3> Tente Usuario = ADM </h3>
        <h3> Tente Senha = 123 </h3>
        <%}%>
        <%
            if(session.getAttribute("user")!= null && session.getAttribute("password")!= null){
        %>
        <h1>Numeros Aleatorios:</h1>
        <table border="1" cellspacing="3" cellpading="3" style="width:100%; font-size: x-large; border-color: black;">
            <td class="box"><%= session.getAttribute("n1") %></td>
            <td class="box"><%= session.getAttribute("n2") %></td>
            <td class="box"><%= session.getAttribute("n3") %></td>
            <td class="box"><%= session.getAttribute("n4") %></td>
            <td class="box"><%= session.getAttribute("n5") %></td>
            <td class="box"><%= session.getAttribute("n6") %></td>
            
        </table>
        <%}%>
        
    </body>
</html>
