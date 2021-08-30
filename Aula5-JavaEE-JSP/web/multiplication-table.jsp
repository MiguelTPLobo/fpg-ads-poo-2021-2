<%-- 
    Document   : multiplication-table
    Created on : 30 de ago. de 2021, 17:59:50
    Author     : migue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
          String errorMessage = null;
          int n = 10;
          try{
              n = Integer.parseInt(request.getParameter("n"));
         }catch(Exception e){
              errorMessage = "O parâmetro: "+request.getParameter("n")+" não é um parâmetro inteiro válido";
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
        <h3>Tabuada</h3>
        <%if(errorMessage==null){%>
        <table>
          <%for(int i=1;i<=10;i++){%>
          <tr>
             <td><%= n %></td> 
             <td> x </td>
             <td><%= i %></td>
             <td> = </td>
             <td><%= (n*i) %></td>
          </tr>
          <%}%>
        </table>
        <%}else{%>
          <div style='color:red'><%= errorMessage %></div>
        <%}%>
        <hr/>
        <form>
            <input type="number" name="n" value="<%= n %>"/>
            <input type="submit" value="Gerar"/>
        </form>
    </body>
</html>