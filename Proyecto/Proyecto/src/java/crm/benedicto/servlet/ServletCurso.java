/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package crm.benedicto.servlet;

import crm.benedicto.beans.Curso;
import crm.benedicto.dao.CursoDAO;
import crm.benedicto.logica.CursoLogica;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Miguel
 */
public class ServletCurso extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletCurso</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletCurso at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int TipoOperacion = Integer.parseInt(request.getParameter("_Operacion"));
        CursoLogica objController = new CursoLogica();

        List lCursos;
        int IdCurso = 0;
        int NroHoras = 0;
        if (!String.valueOf(request.getParameter("_CodigoCurso")).equals("")) {
            IdCurso = Integer.parseInt(request.getParameter("_CodigoCurso"));
        }
        if (!String.valueOf(request.getParameter("tbNroHoras")).equals("")) {
            NroHoras = Integer.parseInt(request.getParameter("tbNroHoras"));
        }
        Curso CursoBE = new Curso();
        CursoBE.setNombreCurso(request.getParameter("tbNombreCurso"));
        CursoBE.setNroHoras(NroHoras);
        CursoBE.setEstado(request.getParameter("ddlEstado"));

        try {
            switch (TipoOperacion) {
                case 1:
                    lCursos = objController.ListarCursos(CursoBE);
                    request.setAttribute("listaCursos", lCursos);
                    request.getRequestDispatcher("/ListarCursos.jsp").forward(request, response);
                    break;
                case 2:
                    CursoBE.setIdCurso(IdCurso);
                    objController.EliminarCurso(CursoBE);
                    CursoBE.setIdCurso(0);
                    lCursos = objController.ListarCursos(CursoBE);
                    request.setAttribute("listaCursos", lCursos);
                    request.getRequestDispatcher("/ListarCursos.jsp").forward(request, response);
                    break;
                case 3:
                    objController.InsertarCurso(CursoBE);
                    request.getRequestDispatcher("/ListarCursos.jsp").forward(request, response);
                    break;
                case 4:
                case 5:
                    CursoBE.setIdCurso(IdCurso);
                    if (TipoOperacion == 5) {
                        objController.ActualizarCurso(CursoBE);
                    }
                    lCursos = objController.ListarCursos(CursoBE);
                    request.setAttribute("objCurso", lCursos.get(0));
                    request.getRequestDispatcher("/MantenimientoCursos.jsp").forward(request, response);
                    break;
            }
        } catch (Exception ex) {
            Logger.getLogger(ServletCurso.class.getName()).log(Level.SEVERE, null, ex);
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
