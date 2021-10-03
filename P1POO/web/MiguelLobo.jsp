<%-- 
    Document   : MiguelLobo
    Created on : 30 de set. de 2021, 16:55:57
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
        <%
            if(session.getAttribute("user")!= null && session.getAttribute("password")!= null){
        %>
        <h3>Miguel Lobo</h3>
        <h3>1290482012023</h3>
        <h3>Semestre que Ingressei: 1° Semestre de 2020</h3>
        <h3><a href="https://github.com/MiguelTPLobo/fpg-ads-poo-2021-2">Github: Miguel Lobo</a></h3>
        <table class="table table-striped">
        
            <thead>
                <tr>
                    <th scope="col">Siglas/Codigos</th>
                    <th scope="col">Materias Matriculadas</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">IBD002</th>
                    <td>Banco de Dados</td>
                </tr>
                <tr>
                    <th scope="row">IES300</th>
                    <td>Engenharia de Software III</td>
                </tr>
                <tr>
                    <th scope="row">ILP007</th>
                    <td>Programação Orientada a Objetos</td>
                </tr>
                <tr>
                    <th scope="row">ILP512</th>
                    <td>Linguagem de Programação IV - INTERNET</td>
                </tr>
                <tr>
                    <th scope="row">ILP513</th>
                    <td>Programação para Dispositivos Móveis</td>
                </tr>
                <tr>
                    <th scope="row">ISO200</th>
                    <td>Sistemas Operacionais II</td>
                </tr>
                <tr>
                    <th scope="row">TTG001</th>
                    <td>Metodologia da Pesquisa Científico-Tecnológica</td>
                </tr>
            </tbody>
            
        </table>
        <%}%>
    </body>           
</html>