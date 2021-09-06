<%-- 
    Document   : calendar
    Created on : 5 de set. de 2021, 16:38:07
    Author     : migue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    String sayit= "";
    String errorMessage;
    int m = 1;
    int y = 2021;
          try{
              m = Integer.parseInt(request.getParameter("m"));
         }catch(Exception e){
              errorMessage = "O parâmetro: "+request.getParameter("m")+" não é um mês válido";}
          try{
              y = Integer.parseInt(request.getParameter("y"));
         }catch(Exception f){
              errorMessage = "O parâmetro: "+request.getParameter("y")+" não é um ano válido";} 
   
              
              
              
              
   int mk = 0;           
   if(m == 1 || m == 10){
   mk = 1;
   }else if(m == 2 || m == 3 || m == 11){
   mk = 4;
   }else if(m == 4 || m == 7){
   mk = 0;
   }else if(m == 5){
   mk = 2;
   }else if(m == 6){
   mk = 5;
   }else if(m == 8){
   mk = 3;
   }else if(m == 9 || m == 12){
   mk = 6;
   }
              
              
   int r1 = (y%100)/4;
   int r2 = (y%100)%7;
   int yk = (r1+r2)%7;  
   
   int fd= 1+mk+yk;
   int m_7 = fd/7;
   m_7 = m_7*7; 
   
   int jumps = 0;
   int first_day = fd - m_7;
   
   switch(m) {
  case 1: sayit= "Janeiro, "+y; break;
  case 2: sayit= "Fevereiro, "+y; break;
  case 3: sayit= "Março,"+y; break;
  case 4: sayit= "Abril,"+y; break;
  case 5: sayit= "Maio, "+y; break;
  case 6: sayit= "Junho, "+y; break;
  case 7: sayit= "Julho, "+y; break;
  case 8: sayit= "Agosto,"+y; break;
  case 9: sayit= "Setembro, "+y; break;
  case 10: sayit= "Outubro, "+y; break;
  case 11: sayit= "Novembro, "+y; break;
  case 12: sayit= "Dezembro, "+y; break;
  
}
   
   switch(first_day) {
  case 1: jumps = 7; break;
  case 2: jumps = 1; break;
  case 3: jumps = 2; break;
  case 4: jumps = 3; break;
  case 5: jumps = 4; break;
  case 6: jumps = 5; break;
  case 0: jumps = 6; break;
}
   
    int dm = 30;
    if(m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12){
    dm = 31;
    }else if(m == 4 || m == 6 || m == 9 || m == 11){
    dm = 30;
    }else if(m == 2 && y % 4 == 0){
    dm = 29;
    }else {dm=28;}
    
    int format = -1;
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calendario</title>
        <style> .box {width: 10%; padding-bottom: 10%; height: 0;}</style>
    </head>
    <body>
        <h1><%=sayit%></h1>
        <hr/>
        <table border="1" cellspacing="5" cellpading="5" style="width:100%; font-size: x-large; border-color: black;">
            <tr>
                <th style="width:10%">Domingo</th>
                <th style="width:10%">Segunda-Feira</th>
                <th style="width:10%">Terça-Feira</th>
                <th style="width:10%">Quarta-Feira</th>
                <th style="width:10%">Quinta-Feira</th>
                <th style="width:10%">Sexta-Feira</th>
                <th style="width:10%">Sábado</th>
                
            </tr>
            
            <tr>
          <%for(int k = 1;k<(jumps);k++){%>
                <td class="box"></td>
          <%format++;}%>

            
            
          <%for(int i = 1;i<=dm;i++){
          format++;
          if(format % 7 ==0){%>
               <tr>
              <%}%>
          
                
                <td class="box"><%=i%></td>
               
          <%}%>
        </table>
    </body>
</html>