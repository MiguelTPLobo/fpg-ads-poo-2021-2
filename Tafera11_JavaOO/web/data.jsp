<%-- 
    Document   : index.jsp
    Created on : 31 de out. de 2021, 16:10:00
    Author     : migue
--%>

<%@page import="model.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Data padrão = new Data();
    
    Data hoje = new Data();
    hoje.setDia(1);
    hoje.setMês(11);
    hoje.setAno(2021);
    
    Data ricardoNiver = new Data(1, 7, 1979);
    Data miguelNiver = new Data(1, 1, 2001);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>CLASSE DATA</h2>
        <h3>Data padrão da classe</h3>
        <div><%= padrão.getDia() %>/<%= padrão.getMês() %>/<%= padrão.getAno() %></div>
        <h3>Data de hoje:</h3>
        <div><%= hoje.getData() %></div>
        <h3>Aniversário do Prof. Ricardo:</h3>
        <div><%= ricardoNiver.getData() %></div>
        <h3>Aniversário do Miguel Lobo:</h3>
        <div><%= miguelNiver.getData() %></div>
    </body>
</html>