<%-- 
    Document   : formPeriodo
    Created on : 23-jun-2015, 10:23:00
    Author     : SistemasUpeu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>        
    </head>
    <body>
        <div>

            <fm:form modelAttribute="modeloDiagnostico" method="post" action="guardarDiagnostico">
                <table>

                    <tr>
                        <td><fm:label path="estado">Estado</fm:label> </td>
                        <td><fm:input path="estado" /></td>
                    </tr>
                    <tr>
                        <td><fm:label path="fecha">Fecha</fm:label> </td>
                        <td><fm:input path="fecha" size="60" /></td>
                    </tr>

                    <tr>
                        <td><fm:label path="descripcion">Descripcion</fm:label> </td>                        
                        <td><fm:input path="descripcion" size="60" /></td>
                    </tr>                                     

                    <tr>
                        <td><fm:label path="idPaciente">Paciente</fm:label> </td> 
                        <td>
                    <fm:select path="idPaciente" cssClass="myinput"  >
                        <fm:option value=""><c:out value="--------------------"/> </fm:option>
                        <c:if test="${!empty ListPaciente}">
                        <c:forEach var="pa"  items="${ListPaciente}">
                        <fm:option value="${pa.idPaciente}" >
                            <c:out value="${pa.idPersona.nombres}"/>
                        </fm:option>
                        </c:forEach>
                        </c:if>
                    </fm:select> 
                            </td>
                    </tr>   
                    
                    <tr>
                        <td><fm:label path="idDoctor">Doctor</fm:label> </td> 
                        <td>
                    <fm:select path="idDoctor" cssClass="myinput"  >
                        <fm:option value=""><c:out value="--------------------"/> </fm:option>
                        <c:if test="${!empty ListDoctor}">
                        <c:forEach var="pa"  items="${ListDoctor}">
                        <fm:option value="${pa.idDoctor}" >
                            <c:out value="${pa.idPersona.nombres}"/>
                        </fm:option>
                        </c:forEach>
                        </c:if>
                    </fm:select> 
                            </td>
                    </tr>                     
                    
                    <tr>                        
                        <td colspan="2"><input type="submit" value="Enviar" > </td>
                    </tr>
                </table>                
            </fm:form>         
        </div>
    </body>
</html>
