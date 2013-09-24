/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package crm.benedicto.servlet;

import crm.benedicto.beans.Profesor;
import crm.benedicto.logica.ProfesorLogica;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Date;

/**
 *
 * @author alumnos
 */
public class ServletProfesor extends HttpServlet {

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
            out.println("<title>Servlet ServletProfesor</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletProfesor at " + request.getContextPath() + "</h1>");
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
        ProfesorLogica objController = new ProfesorLogica();

        List lProfesores;
        int IdProfesor = 0;

        if (!String.valueOf(request.getParameter("_CodigoProfesor")).equals("")) {
            IdProfesor = Integer.parseInt(request.getParameter("_CodigoProfesor"));
        }

        Profesor ProfesorBE = new Profesor();
        ProfesorBE.setNombres(request.getParameter("tbNombreProfesor"));
        if (TipoOperacion == 3 || TipoOperacion == 5) {
            ProfesorBE.setApellidoPaterno(request.getParameter("tbApellidoPaterno"));
            ProfesorBE.setApellidoMaterno(request.getParameter("tbApellidoMaterno"));
            ProfesorBE.setFechaNacimiento(request.getParameter("tbFechaNacimiento"));
            ProfesorBE.setEmail(request.getParameter("tbEmail"));
            ProfesorBE.setDireccion(request.getParameter("tbDireccion"));
            ProfesorBE.setTelefono(request.getParameter("tbTelefono"));
            ProfesorBE.setCelular(request.getParameter("tbCelular"));
        }
        ProfesorBE.setEstado(request.getParameter("ddlEstado"));

        try {
            switch (TipoOperacion) {
                case 1:
                    lProfesores = objController.ListarProfesores(ProfesorBE);
                    request.setAttribute("listaProfesores", lProfesores);
                    request.getRequestDispatcher("/ListarProfesores.jsp").forward(request, response);
                    break;
                case 2:
                    ProfesorBE.setIdProfesor(IdProfesor);
                    objController.EliminarProfesor(ProfesorBE);
                    ProfesorBE.setIdProfesor(0);
                    lProfesores = objController.ListarProfesores(ProfesorBE);
                    request.setAttribute("listaProfesores", lProfesores);
                    request.getRequestDispatcher("/ListarProfesores.jsp").forward(request, response);
                    break;
                case 3:
                    objController.InsertarProfesor(ProfesorBE);
                    request.getRequestDispatcher("/ListarProfesores.jsp").forward(request, response);
                    break;
                case 4:
                case 5:
                    ProfesorBE.setIdProfesor(IdProfesor);
                    if (TipoOperacion == 5) {
                        objController.ActualizarProfesor(ProfesorBE);
                    }
                    lProfesores = objController.ListarProfesores(ProfesorBE);
                    request.setAttribute("objProfesor", lProfesores.get(0));
                    request.getRequestDispatcher("/MantenimientoProfesores.jsp").forward(request, response);
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
