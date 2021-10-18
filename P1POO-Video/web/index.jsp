<%-- 
    Document   : index
    Created on : 30 de set. de 2021, 10:10:45
    Author     : migue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link  rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>P1 POO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h5>Sessões Online: 
            <%
                if( application.getAttribute("count") == null){
            %>
                0
            <%
                }else{
            %>
                <%= application.getAttribute("count") %>
            <%
                }
            %> 
        </h5>
        <div class="col-s">
        <table class="table table-striped">
        <%
            if(session.getAttribute("user")!= null){
        %>
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Identificador de Sessão</th>
                </tr>
            </thead>
        <%}%>
        <%
            if(session.getAttribute("user")!= null){
                
               for(int i = 0;i<copy.size();i++){
            
        %>
            <tbody>
                <tr>
                    <th scope="row"><%= i+1 %></th>
                    <td><%= copy.get(i) %></td>
                </tr>
            </tbody>
        <%}}%>
        </table>
        </div>
    </body>           
</html>
