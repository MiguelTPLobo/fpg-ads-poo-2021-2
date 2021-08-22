/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Serveletinho;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author migue
 */
@WebServlet(name = "MiguelServlet", urlPatterns = {"/MiguelServlet"})
public class MiguelServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Dados do Aluno</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Dados do Aluno</h1>");
            BigInteger reallyBig = new BigInteger("1290482012023");
            try{
                BigInteger ra = new BigInteger(request.getParameter("ra"));
                int compareValue = reallyBig.compareTo(ra);
                
                if(compareValue == 0){
                    out.println("<h2>RA: "+ra+"</h2>");
                    out.println("<h2>Nome Completo: Miguel Trigo Pinheiro Lobo</h2>");
                    out.println("<h2>GitHub:<a href='https://github.com/MiguelTPLobo'>MiguelTPLobo</a></h2>");
                } else {
                    out.println("<p style='color:red'> O RA: "+ra+" não consta no banco de dados!");
                }
            }catch(NumberFormatException ex){
                out.println("<p style='color:red'>Erro ao ler parametros: "+ex.getMessage()+"<p>");
            }
            out.println("<h4><a href='index.html'>Voltar</a></h4>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
