using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ConexionFinal;

namespace WebApiFinal.Controllers
{
    public class READController : ApiController
    {
        /*GIOVANI DAVID MEZA POGGIO 5990-18-14676*/

        //La URL configurada para este proyecto es
        // http://localhost:44324/

        //Variable local de uso para las peticiones dentro de los metodos
        private readonly AlumnoEntities _conexion = new AlumnoEntities();
       
        //GET: read/getAlumnos
        [Route("read/{id}")]
        [HttpGet]
        public IEnumerable<alumno> getAlumnos()
        {
            using (_conexion)
            {
                return _conexion.alumno.ToList();
            }
        }
}
}
