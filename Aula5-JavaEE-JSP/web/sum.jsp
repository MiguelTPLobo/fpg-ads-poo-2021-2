<%-- 
    Document   : sum
    Created on : 30 de ago. de 2021, 17:49:42
    Author     : migue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
          String errorMessage = null;
          double n1 = 0, n2 = 0, result = 0;
          try{
              n1 = Double.parseDouble(request.getParameter("n1"));
              n2 = Double.parseDouble(request.getParameter("n2"));
              result = n1+n2;
         }catch(Exception e){
              errorMessage = e.getMessage();
    }
        %>
<html>
    <head>
        <title>Java EE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Java EE</h1>
        <h2>Java Server Pages</h2>
        <h4><a href="index.html">Voltar</a></h4>
        <h3>Soma</h3>
        <%if(errorMessage==null){%>
        <h4><%= n1 %> + <%= n2 %> = <%= result %></h4>
        <%}%>
        <form action="sum.jsp">
            <input type="number" name="n1">+
            <input type="number" name="n2">
            <input type="submit" value="=">
        </form>
    </body>
</html>