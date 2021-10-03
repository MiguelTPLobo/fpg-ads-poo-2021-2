<%-- 
    Document   : MiguelLobo-DicaMegaSena
    Created on : 30 de set. de 2021, 17:05:34
    Author     : migue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link  rel="stylesheet" 
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>P1 POO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%
            if(session.getAttribute("user")== null && session.getAttribute("password")== null){
        %>
        <h1 style="color: red"> Você não tem permissão para acessar o conteudo dessa pagina!!! </h1>
        <%}%>
        <table class="table table-striped">
        <%
            if(session.getAttribute("user")!= null && session.getAttribute("password")!= null){
        %>
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Identificador de Sessão</th>
                </tr>
            </thead>
        <%}%>
        <%
            if(session.getAttribute("user")!= null && session.getAttribute("password")!= null){
                
               for(int x = 0;x<shuffled.size();x++){
            
        %>
            <tbody>
                <tr>
                    <th scope="row"><%= x+1 %></th>
                    <td><%= shuffled.get(x) %></td>
                </tr>
            </tbody>
        <%}}%>
        </table>
    </body>           
</html>
