/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.BEAN.Usuario;
import model.DAO.UsuarioDAO;

/**
 *
 * @author Senai
 */
public class CadastroController extends HttpServlet {

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
        
        String url = "/WEB-INF/jsp/cadastrar.jsp"; 
        RequestDispatcher d = getServletContext().getRequestDispatcher(url);
        d.forward(request, response);
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
        
        String url = request.getServletPath();
        
        if(url.equals("/cadastrar")){
            
            String nextPage = "/WEB-INF/jsp/index.jsp";
            
            Usuario u = new Usuario();
            UsuarioDAO ud = new UsuarioDAO();
            
            u.setNome(request.getParameter("input-nome"));
            u.setEmail(request.getParameter("input-email"));
            u.setSenha(request.getParameter("input-senha"));
            u.setCpf(request.getParameter("input-cpf"));
            u.setTelefone(request.getParameter("input-telefone"));
            
            try{
                ud.create(u);
                RequestDispatcher d = getServletContext().getRequestDispatcher(nextPage);
                d.forward(request, response);
                
            }catch(Exception e){
                
                nextPage = "/WEB-INF/jsp/cadastrar.jsp";
                request.setAttribute("errorMessage", "Cadastros não realizados corretamente");
                RequestDispatcher d = getServletContext().getRequestDispatcher(nextPage);
                d.forward(request, response);
            }
        }else{
            processRequest(request, response);
        }
        
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
