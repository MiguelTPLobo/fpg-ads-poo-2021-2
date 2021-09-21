<%-- 
    Document   : about
    Created on : 20 de set. de 2021, 17:31:52
    Author     : migue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SOBRE</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/MiguelLoboApp.jspf" %>
        <%
            if(session.getAttribute("user")== null && session.getAttribute("password")== null){
        %>
        <h1 style="color: red"> Você não tem permissão para acessar o conteudo dessa pagina!!! </h1>
        <%}%>
        <%
            if(session.getAttribute("user")!= null && session.getAttribute("password")!= null){
        %>
        <h3>Miguel Lobo</h3>
        <h3>1290482012023</h3>
        <h3><a href="https://github.com/MiguelTPLobo/fpg-ads-poo-2021-2">Github: Miguel Lobo</a></h3>
        <%}%>
    </body>
</html>
