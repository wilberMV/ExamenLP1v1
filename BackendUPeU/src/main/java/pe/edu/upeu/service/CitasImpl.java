/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pe.edu.upeu.dao.CitasDao;
import pe.edu.upeu.model.Citas;


/**
 *
 * @author David
 */
@Service("citasServis")
@Transactional
public class CitasImpl implements CitasServis{
    @Autowired
    public CitasDao dao;
 
    @Override
    public List<Citas> listarEntidad(){return dao.listarEntidad();}
    @Override
    public Citas buscarEntidadId(int id) {return dao.buscarEntidadId(id);}
    @Override
    public void guardarEntidad(Citas entidad) {dao.guardarEntidad(entidad); }  
    @Override
    public void eliminarEntidadId(int id) {dao.eliminarEntidadId(id);}    
    @Override
    public void modificarEntidadId(Citas entidad) {dao.modificarEntidadId(entidad);}       
    @Override
    public List<Citas> listarPorNombre(String nombre){return dao.listarPorNombre(nombre);}    
}

