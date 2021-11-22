<%-- 
    Document   : index
    Created on : 22 de nov de 2021, 18:11:39
    Author     : migue
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Db.Tasks"%>
<%@page import="Web.MiguelLoboDbListener"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   Exception requestException = null;
   ArrayList<String> taskList = new ArrayList<>();
   try{
    if(request.getParameter("add")!=null){
       String taskName = request.getParameter("taskName");
       Tasks.addTask(taskName);
       response.sendRedirect(request.getRequestURI());
    }
    if(request.getParameter("remove")!=null){
       String taskName = request.getParameter("taskName");
       Tasks.removeTask(taskName);
       response.sendRedirect(request.getRequestURI());
    }
       taskList =  Tasks.getTasks();
    }catch(Exception ex){
       requestException = ex;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <link  rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>P2 POO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <div class="col-s">
        <%
            if(session.getAttribute("user")!= null){
        %>

        <h3></h3>
        <h2>To-Do</h2>
        <%if(MiguelLoboDbListener.exception!=null){%>
        <div style="color:red">
            Erro na criação do banco de dados:
            <%=MiguelLoboDbListener.exception.getMessage()%>
        </div>
        <%}%>
         <%if(requestException!=null){%>
        <div style="color:red">
            Erro na leitura ou gravação de tarefas:
            <%=requestException.getMessage()%>
        </div>
        <%}%>
        <h3>Tarefas</h3>
        <form>
            <input type='text' name='taskName'/>
            <input type='submit' name='add' value="Adicionar"/>
        </form>
        <table>
            <%for(String taskName: taskList){%>
            <tr>
                <td><%= taskName%></td>
                <td>
                    <form>
                        <input type="hidden" name="taskName" value="<%= taskName %>"/>
                        <input type="hidden" name="user" value="<%= (String) session.getAttribute("user") %>"/>
                        <input type="submit" name="remove" value="-"/>
                    </form>
                </td>          
            </tr>
            <%}%>
        </table>
        <%}%>
        <%
            if(session.getAttribute("user")== null){
        %>
        <h3 style="color: red"> É necessário identificar-se para visualizar as tarefas! </h3>
        <%}%>
        </div>
    </body>           
</html>
