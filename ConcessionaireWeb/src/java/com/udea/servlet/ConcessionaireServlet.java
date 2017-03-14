/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.servlet;

import com.udea.ejb.CarsFacade;
import com.udea.ejb.CarsFacadeLocal;
import com.udea.ejb.CustomersFacadeLocal;
import com.udea.ejb.GeneralsalesFacadeLocal;
import com.udea.entity.Cars;
import com.udea.entity.Customers;
import com.udea.entity.Generalsales;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashSet;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

 



/**
 *
 * @author decho
 */
@WebServlet("/upload")
@MultipartConfig
public class ConcessionaireServlet extends HttpServlet {

    @EJB
    private CarsFacadeLocal carsFacade;
    
    @EJB 
    private CustomersFacadeLocal customersFacade;
    
    @EJB
    private GeneralsalesFacadeLocal generalsalesFacade;
    
    


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
         PrintWriter out = response.getWriter();
         
        try{
           String action = request.getParameter("action");
           String url = "index.jsp";
          if("search".equals(action)){
             String p = request.getParameter("placa");
             boolean checkPlaca = carsFacade.checkPlaca(p);
             if(checkPlaca){
             request.getSession().setAttribute("placa", p);
             List<Cars> findAll = carsFacade.findAll();
             request.getSession().setAttribute("cars", findAll); 
             List<Customers> findAll2 = customersFacade.findAll();
             request.getSession().setAttribute("customers", findAll2); 
             List<Generalsales> findAll3 = generalsalesFacade.findAll();
             request.getSession().setAttribute("sales", findAll3);

             
             url = "placa.jsp";
                }else{url="listcars.jsp?error=1";                
             } 
           }
            else if("prueba".equals(action)){                  
           
                     url="car.jsp";
                     }
            
            else if("insert".equals(action)){
            Cars d = new Cars();
            int quant = 10;
            d.setPlaca(request.getParameter("placa"));
            d.setBrand(request.getParameter("brand"));
            d.setModel(request.getParameter("model"));
            d.setColor(request.getParameter("color"));             
            d.setImage(request.getParameter("image"));
            d.setQuantity(quant);       
            d.setPrice(Integer.valueOf(request.getParameter("price")));
            
               
            carsFacade.create(d);
 //           d.setPrice(Integer);
            
           
            url="car.jsp";
            }
          else if("ventas".equals(action)){
            Customers c = new Customers();
            Generalsales d = new Generalsales();
            String p = request.getParameter("placa");
            boolean checkPlaca = carsFacade.checkPlaca(p);
            if(checkPlaca){
            c.setId(Integer.valueOf(request.getParameter("id")));
            c.setNamess(request.getParameter("namess"));
            c.setCity(request.getParameter("city"));
            c.setPhone(request.getParameter("phone"));
            c.setEmail(request.getParameter("email"));
            d.setPlaca(request.getParameter("placa"));
            d.setBuyer((request.getParameter("id")));
            d.setPricetaxes(request.getParameter("pricetaxes"));   
            d.setBillofsale(Integer.valueOf(request.getParameter("billofsale")));
           //           d.setPrice(Integer);

 //         d.setPrice(Integer.valueOf(request.getParameter("price")));
            customersFacade.create(c);
            generalsalesFacade.create(d);
            url="sale.jsp";
            }
            else{url="sale.jsp?error=1";}
            }
        response.sendRedirect(url);
              
        }                
        finally {
            out.close();
        }         /* TODO output your page here. You may use following sample code. */
  
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
