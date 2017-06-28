/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import pe.edu.upeu.configuration.SysDataAccess;
import pe.edu.upeu.model.Citas;


/**
 *
 * @author David
 */
@Repository("citasDao")
public class CitasDaoImpl extends SysDataAccess<Integer, Citas> implements CitasDao{
    @SuppressWarnings("unchecked")
    public List<Citas> listarEntidad(){ return getListAll();}
    public Citas buscarEntidadId(int id) {return getByKey(id);}
    public void guardarEntidad(Citas entidad) {savev(entidad); }  
    public void eliminarEntidadId(int id) {delete(id);}    
    public void modificarEntidadId(Citas entidad) {update(entidad);}         
    public List<Citas> listarPorNombre(String dato){
    return (List<Citas>)sessionFactory.getCurrentSession()
            .createQuery("select a from Citas a where a.idCitas.dni fechaAlta ? ")        
            .setString(0, "%"+dato+"%")
            .list();
    }     
}
