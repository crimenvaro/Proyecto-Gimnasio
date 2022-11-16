using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using Newtonsoft.Json;
using System.Data;
using System.Data.SqlClient;
using DAL_Gimnasio.DAL;


namespace PL_Gimnasio.ajax
{
    public partial class WebMethods_ModuloSeguridad_AG : System.Web.UI.Page
    {
        public static cls_BD_Conexion obj_Conexion = new cls_BD_Conexion();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // CAMBIAR EL NOMBRE DE LA REGION
        #region TURNOS   

        [WebMethod]
        public static string ListarFiltrarTurnos(string IdEstado, string Turno, string HoraEntrada, string HoraSalida) // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {

            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarTurnos",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Turno", Turno),
                        new SqlParameter("@Hora_Entrada", HoraEntrada),
                        new SqlParameter("@Hora_Salida", HoraSalida)
                    });

            List<cls_Turnos_DAL> lista_turnos = new List<cls_Turnos_DAL>(); // CAMBIAR EL DAL RESPECTIVO // CAMBIAR NOMBRE DE LA LISTA

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    lista_turnos.Add(new cls_Turnos_DAL() // CAMBIAR EL DAL RESPECTIVO
                    {
                        // MANTENER ORDEN DE LAS VARIABLES SEGUN A COMO LO DEVUELVE EL SP DE LISTAR DE LA BASE DE DATOS
                        sIdTurno = short.Parse(row.ItemArray[0].ToString()),
                        bIdEstado = byte.Parse(row.ItemArray[1].ToString()),
                        sTurno = row.ItemArray[2].ToString(),
                        tHoraEntrada = TimeSpan.Parse(row.ItemArray[3].ToString()),
                        tHoraSalida = TimeSpan.Parse(row.ItemArray[4].ToString())

                    });
                }
            }

            return JsonConvert.SerializeObject(lista_turnos);
        }

        [WebMethod]
        public static string GuardarEliminarTurnos(string IdTurno, string IdEstado, string Turno, string HoraEntrada, string HoraSalida, string Accion)   // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {
            string respuesta = obj_Conexion.ExecCommand("SP_GuardarEliminarTurnos",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Turno", IdTurno),
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Turno", Turno),
                        new SqlParameter("@Hora_Entrada", HoraEntrada),
                        new SqlParameter("@Hora_Salida", HoraSalida),
                        new SqlParameter("@Accion", Accion)
                    },
                    's');  //s para que retorne el string, n: no retorno

            return respuesta;
        }

        #endregion

        #region UNIDADES DE MEDIDA   

        [WebMethod]
        public static string ListarFiltrarUnidadesDeMedida(string IdEstado, string Descripcion) // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {

            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarUnidadesDeMedida",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Descripcion", Descripcion)
                    });

            List<cls_UnidadesMedida_DAL> lista_unidadesdemedida = new List<cls_UnidadesMedida_DAL>(); // CAMBIAR EL DAL RESPECTIVO // CAMBIAR NOMBRE DE LA LISTA

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    lista_unidadesdemedida.Add(new cls_UnidadesMedida_DAL() // CAMBIAR EL DAL RESPECTIVO
                    {
                        // MANTENER ORDEN DE LAS VARIABLES SEGUN A COMO LO DEVUELVE EL SP DE LISTAR DE LA BASE DE DATOS
                        sIdUnidadMedida = short.Parse(row.ItemArray[0].ToString()),
                        bIdEstado = byte.Parse(row.ItemArray[1].ToString()),
                        sDescripcion = row.ItemArray[2].ToString()

                    });
                }
            }

            return JsonConvert.SerializeObject(lista_unidadesdemedida);
        }

        [WebMethod]
        public static string GuardarEliminarUnidadesDeMedida(string IdUnidadDeMedida, string IdEstado, string Descripcion, string Accion)   // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {
            string respuesta = obj_Conexion.ExecCommand("SP_GuardarEliminarUnidadesDeMedida",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Unidad_Medida", IdUnidadDeMedida),
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Descripcion", Descripcion),
                        new SqlParameter("@Accion", Accion)
                    },
                    's');  //s para que retorne el string, n: no retorno

            return respuesta;
        }

        #endregion

        #region INFORMACION   

        [WebMethod]
        public static string ListarFiltrarInformacion(string IdCedulaJuridica, string IdEstado, string Nombre, string Ubicacion, string Telefono, string Correo, string Aforo, string DiasGracia) // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {

            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarInformacion",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Cedula_Juridica", IdCedulaJuridica),
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Nombre", Nombre),
                        new SqlParameter("@Ubicacion", Ubicacion),
                        new SqlParameter("@Telefono", Telefono),
                        new SqlParameter("@Correo", Correo),
                        new SqlParameter("@Aforo", Aforo),
                        new SqlParameter("@Dias_Gracia", DiasGracia)
                    });

            List<cls_Informacion_DAL> lista_informacion = new List<cls_Informacion_DAL>(); // CAMBIAR EL DAL RESPECTIVO // CAMBIAR NOMBRE DE LA LISTA

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    lista_informacion.Add(new cls_Informacion_DAL() // CAMBIAR EL DAL RESPECTIVO
                    {
                        // MANTENER ORDEN DE LAS VARIABLES SEGUN A COMO LO DEVUELVE EL SP DE LISTAR DE LA BASE DE DATOS
                        iIdInformacion= int.Parse(row.ItemArray[0].ToString()),
                        iIdCedulaJuridica = int.Parse(row.ItemArray[1].ToString()),
                        bIdEstado = byte.Parse(row.ItemArray[2].ToString()),
                        sNombre = row.ItemArray[3].ToString(),
                        sUbicacion = row.ItemArray[4].ToString(),
                        iTelefono = int.Parse(row.ItemArray[5].ToString()),
                        sCorreo = row.ItemArray[6].ToString(),
                        iAforo = int.Parse(row.ItemArray[7].ToString()),
                        bDiasGracia = byte.Parse(row.ItemArray[8].ToString())

                    });
                }
            }

            return JsonConvert.SerializeObject(lista_informacion);
        }

        [WebMethod]
        public static string GuardarEliminarInformacion(string IdInformacion, string IdCedulaJuridica, string IdEstado, string Nombre, string Ubicacion, string Telefono, string Correo, string Aforo, string DiasGracia, string Accion)   // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {
            string respuesta = obj_Conexion.ExecCommand("SP_GuardarEliminarInformacion",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Informacion", IdInformacion),
                        new SqlParameter("@ID_Cedula_Juridica", IdCedulaJuridica),
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Nombre", Nombre),
                        new SqlParameter("@Ubicacion", Ubicacion),
                        new SqlParameter("@Telefono", Telefono),
                        new SqlParameter("@Correo", Correo),
                        new SqlParameter("@Aforo", Aforo),
                        new SqlParameter("@Dias_Gracia", DiasGracia),
                        new SqlParameter("@Accion", Accion)

                    },
                    's');  //s para que retorne el string, n: no retorno

            return respuesta;
        }

        #endregion
    }
}