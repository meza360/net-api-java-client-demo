<%-- 
    Document   : Alumnos
    Created on : Jun 12, 2021, 6:17:02 PM
    Author     : GIOVANI DAVID MEZA POGGIO 5990-18-14676
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.Alumno" %>
<%@page import="Controlador.ManejoPeticiones" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alumnos</title>
        <link rel="stylesheet" href="css/bootstrap-grid.css">
        <link rel="stylesheet" href="css/bootstrap-grid.rtl.css">
        <link rel="stylesheet" href="css/bootstrap-grid.css">
        <link rel="stylesheet" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" href="css/bootstrap-reboot.rtl.css">
        <link rel="stylesheet" href="css/bootstrap-utilities.css">
        <link rel="stylesheet" href="css/bootstrap-utilities.rtl.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <header class="header-alumnos">
        <h1 class="h1 text-center">Alumnos registrados</h1>
        </header>

        <main class="container">
            <table class="table table-striped table-light table-bordered table-hover">
                <thead class="thead-dark">
                <th>ID</th>
                <th>Nombre</th>
                <th>Edad</th>
                <th>Fecha de nacimiento</th>
                <th>Correo</th>
                <th>Sede</th>
                <th>Telefono</th>
                <th>Carnet</th>
                <th>Curso</th>
                <th>Nota Final</th>
                <th>Fotografia</th>
                </thead>
                
                <tbody>
                    
                    <%
                    ManejoPeticiones a = new ManejoPeticiones();
                    Alumno[] b = a.getAlumnos();
                        
                    for(Alumno c:b){
                   
                    %>
                    <tr>
                        <td><%= c.getAlumnoID() %></td>
                        <td><%= c.getNombre() %></td>
                        <td><%= c.getEdad() %></td>
                        <td><%= c.getFecha_de_nacimiento() %></td>
                        <td><%= c.getCorreo() %></td>
                        <td><%= c.getSede() %></td>
                        <td><%= c.getTelefono() %></td>
                        <td><%= c.getCarnet() %></td>
                        <td><%= c.getCurso() %></td>
                        <td><%= c.getNota_final() %></td>
                        <td><img src="images/prs.png"></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
                
            </table>
            
        </main>
    </body>
</html>
