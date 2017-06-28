<%-- 
    Document   : mainCitas
    Created on : 21/06/2017, 02:27:16 PM
    Author     : Alumnos
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>  
    <title>AngularJS MVC Spring UPeU</title>  
    <style>
      .username.ng-valid {
          background-color: lightgreen;
      }
      .username.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .username.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }

      .email.ng-valid {
          background-color: lightgreen;
      }
      .email.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .email.ng-dirty.ng-invalid-email {
          background-color: yellow;
      }

    </style>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> 
     <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
  </head>
  <body  class="ng-cloak">
      <div class="generic-container" ng-controller="UserController as ctrl">
          <div class="panel panel-default">
              <div class="panel-heading"><span class="lead">User Registration Form </span></div>
              <div class="formcontainer">
                  
                  
                          
        <c:out value="${mensaje}"/>       
        <h1>Administracion de Citas!</h1>

        <div id="idFormulario" align="center">
            
        <form  id="formBuscar" action="buscarCitas"  method="post" name="formBuscar" >
        <table align="center"  class="myform">
        
        <tr align="center">
        &nbsp;&nbsp;
        <td  style="color:black">
        Periodo <input type="text" class="myinput" id="dato" size="50" name="dato"  value="">
        
        <input  type="submit"  class="button2" value="Buscar" >&nbsp;
        </td>
        <td>
            <input  type="button" value="Nuevo" onclick="document.location.href='/BackendUPeU/formCitas'" class="btn btn-success" >&nbsp;   
        </td>
        </tr>
        </table>
        </form>
        </div>  
              </div>
          </div>
          <div class="panel panel-default">
                <!-- Default panel contents -->
              <div class="panel-heading"><span class="lead">List of Users </span></div>
              <div class="tablecontainer">
                          <c:if test="${!empty ListaCitas}">
                            <table border="1">
                                <tr>
                                    <th>Nombre</th>
                                    <th>Apellidos</th>
                                    <th>Trabajador</th>
                                    <th>Doctor</th>
                                    <th>Fecha</th>
                                    <th>Hora Inicio</th>
                                    <th>Hora Fin</th>
                                  
                                </tr>
                <c:forEach items="${ListaCitas}" var= "dato">   
                <tr>
                    <td><c:out value="${dato.idPaciente.idPersona.nombres}"/></td> 
                    <td><c:out value="${dato.idPaciente.idPersona.apellPaterno}"/> 
                        <c:out value="${dato.idPaciente.idPersona.apellMater}"/></td>
                    <td><c:out value="${dato.idTrabajo.estado}"/> 
                        <c:out value="${dato.idTrabajo.idPersona.nombres}"/></td>
                    <td><c:out value="${dato.idDoctor.idPersona.Nombre}"/> 
                        <c:out value="${dato.idDoctor.idPersona.apellPaterno}"/> 
                        <c:out value="${dato.idDoctor.idPersona.apellMater}"/></td>
                    <td><c:out value="${dato.fecha}"/></td>
                    <td><c:out value="${dato.hora_inicio}"/></td>
                    <td><c:out value="${dato.hora_fin}"/></td>     
                    
                 
                </tr>
                </c:forEach>
                            </table>
                            Holasss
                        </c:if>
              </div>
          </div>
      </div>

  </body>
</html>
