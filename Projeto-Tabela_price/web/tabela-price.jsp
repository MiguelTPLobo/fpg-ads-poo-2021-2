<%-- 
    Document   : tabela-price
    Created on : 13 de set. de 2021, 16:45:34
    Author     : migue
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style> .box {text-align: center}</style>
        <title>Tabela Price</title>
        <%
        DecimalFormat df = new DecimalFormat("#.00");
        String errorMessage;
        double ve = 0, vp = 0, vf = 0, copo = 0;
        int np = 0;
          try{
              ve = Double.parseDouble(request.getParameter("ve"));
         }catch(Exception e){
              errorMessage = "O parâmetro: "+request.getParameter("ve")+" não é válido";}
         try{
              vp = Double.parseDouble(request.getParameter("vp"));
         }catch(Exception e){
              errorMessage = "O parâmetro: "+request.getParameter("vp")+" não é válido";}
          try{
              np = Integer.parseInt(request.getParameter("np"));
         }catch(Exception f){
              errorMessage = "O parâmetro: "+request.getParameter("np")+" não é válido";} 
    
    vp /= 100;
    
    vf = ve * vp;
    copo = 1/(Math.pow((1+vp),np));
    copo = 1 - copo;
    vf /= copo ;
     
    
    
    %>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h3>Dados do Calculo:</h3>
        <form action="tabela-price.jsp">
            <a>Valor do Emprestimo:</a><br>
            <input type="number" step=0.01 name="ve"/><br>
            <a>Porcentagem de Juros:</a><br>
            <input type="number" name="vp"/><br>
            <a>Numero de Parcelas:</a><br>
            <input type="number" step=0.01 name="np"/><br>
            <input type="submit" value="Calcular"/>
        </form>
        <hr>
        <table border="1" cellspacing="3" cellpading="3" style="width:100%; font-size: x-large; border-color: black;">
            <tr>
                <th style="width:5%">Período</th>
                <th style="width:5%">Saldo Devedor</th>
                <th style="width:5%">Parcela</th>
                <th style="width:5%">Juros</th>
                <th style="width:5%">Amortização</th>
            </tr>
            <%for(int i = 0;i<=np;i++){
                if(i == 0){%>
                    <tr>
                      <td class="box"><%=i%></td>
                      <td class="box"><%=ve%></td>
                      <td class="box"> </td>
                      <td class="box"> </td>
                      <td class="box"> </td>

                <%}else{%>
                    <tr>
                          <td class="box"><%=i%></td>
                          <td class="box"><%=df.format(ve-(vf-(ve*vp)))%></td>
                          <td class="box"><%=df.format(vf)%></td>
                          <td class="box"><%=df.format(ve*vp)%></td>
                          <td class="box"><%=df.format(vf-(ve*vp))%></td>
                          <%ve-=(vf-(ve*vp));%>
                <%}%>
            <%}%>
              </table>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
