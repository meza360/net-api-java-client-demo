/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


import Modelo.Alumno;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.*;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import com.google.gson.*;

/**
 *
 * @author GIOVANI DAVID MEZA POGGIO 5990-18-14676
 */
public class ManejoPeticiones {
 
    public ManejoPeticiones(){}
    
    public Alumno[] getAlumnos(){
    
        String url = "http://localhost:44324/read/getAlumnos";
        
        try(CloseableHttpClient httpClient = HttpClientBuilder.create().build()) {
            HttpGet request = new HttpGet(url); 
            request.addHeader("content-type", "application/json");
            HttpResponse result = httpClient.execute(request);
            String json = EntityUtils.toString(result.getEntity(), "UTF-8");  
            Gson gson = new Gson();      
            Alumno[] response = gson.fromJson(json, Alumno[].class);
 
//            for(Alumno a:response){
//                System.out.println("Id: " + a.getAlumnoID());
//                System.out.println("Nombre: " + a.getNombre());
//                System.out.println("Edad: " + a.getEdad());
//                System.out.println("BD: " + a.getBd());
//                System.out.println("Correo: " + a.getCorreo());
//                System.out.println("Sede: " + a.getSede());
//                System.out.println("Telefono: " + a.getTelefono());
//                System.out.println("Carnet: " + a.getCarnet());
//                System.out.println("Curso: " + a.getCurso());
//                System.out.println("Nota: " + a.getNota_final());
//               
//            }
            return response;
            
        } catch (Exception error) { 
            System.out.println("Error en la obtencion de datos!");
            error.printStackTrace();
            return null;
        }
   
    }
}
