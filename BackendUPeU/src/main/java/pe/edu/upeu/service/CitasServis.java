/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.service;

import java.util.List;
import pe.edu.upeu.model.Citas;


/**
 *
 * @author Alumnos
 */
public interface CitasServis {
    public List<Citas> listarEntidad();
    public Citas buscarEntidadId(int id);
    public void guardarEntidad(Citas citas);
    public void eliminarEntidadId(int id);
    public void modificarEntidadId(Citas entidad);    
    public List<Citas> listarPorNombre(String nombre);
    
}
