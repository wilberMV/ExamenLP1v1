/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import pe.edu.upeu.model.Citas;
import pe.edu.upeu.service.CitasServis;
      

/**
 *
 * @author Alumnos
 */
@Controller
@RequestMapping("/citas")
public class CitasCController {
    @Autowired
    CitasServis service;	
    @Autowired
    MessageSource messageSource;     

    @RequestMapping(value = { "/", "/list" }, method = RequestMethod.GET)
    public ModelAndView listCitas(ModelMap model) {
        List<Citas> lista=service.listarEntidad();
        Map<String, Object> modelo=new HashMap<String, Object> ();
        modelo.put("ListaCitas", lista);
        modelo.put("mensaje", "Reporte de Citas"); 
        return new ModelAndView("citas/mainCitas", modelo);
    }        
    

    @RequestMapping(value = "buscarCitas", method = RequestMethod.POST)
    public  ModelAndView buscarCitas(HttpServletRequest r) {
        String dato=r.getParameter("dato")==null ? "":r.getParameter("dato");
        List<Citas> lista=service.listarPorNombre(dato);            
        Map<String, Object> modelo=new HashMap<String, Object> ();
        modelo.put("ListaCitas", lista);
       return new ModelAndView("citas/mainCitas",modelo);
    } 
    
    @RequestMapping(value = "eliminarCitas", method = RequestMethod.GET)
    public  ModelAndView eliminarCitas(HttpServletRequest r) {
        int idEntidad=Integer.parseInt(r.getParameter("id"));
        service.eliminarEntidadId(idEntidad);
        System.out.println("si llego al metodo");
        return new ModelAndView(new RedirectView("citas/list"));
    }    
}