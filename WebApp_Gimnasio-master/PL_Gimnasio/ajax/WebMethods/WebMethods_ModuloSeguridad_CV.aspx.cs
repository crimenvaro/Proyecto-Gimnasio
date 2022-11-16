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
    public partial class WebMethods_ModuloSeguridad_CV : System.Web.UI.Page
    {
        public static cls_BD_Conexion obj_Conexion = new cls_BD_Conexion();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #region SALAS

            [WebMethod]
            public static string ListarFiltrarSalas(string IdEstado, string Descripcion) // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {

            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarSalasGym",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Descrip_Salas_GYM", Descripcion)
                    });

            List<cls_SalasGym_DAL> lista_salas = new List<cls_SalasGym_DAL>(); // CAMBIAR EL DAL RESPECTIVO // CAMBIAR NOMBRE DE LA LISTA

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    lista_salas.Add(new cls_SalasGym_DAL() // CAMBIAR EL DAL RESPECTIVO
                    {
                        // MANTENER ORDEN DE LAS VARIABLES SEGUN A COMO LO DEVUELVE EL SP DE LISTAR DE LA BASE DE DATOS
                        bIdSalasGym = byte.Parse(row.ItemArray[0].ToString()),
                        bIdEstado = byte.Parse(row.ItemArray[1].ToString()),
                        sDescripSalasGym = row.ItemArray[2].ToString()

                    });
                }
            }

            return JsonConvert.SerializeObject(lista_salas);
        }

        [WebMethod]
        public static string GuardarEliminarSalas(string IdSala, string IdEstado, string Descripcion, string Accion)   // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {
            string respuesta = obj_Conexion.ExecCommand("SP_GuardarEliminarSalasGym",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Salas_GYM", IdSala),
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Descrip_Salas_GYM", Descripcion),
                        new SqlParameter("@Accion", Accion) //siempre la lleva
                    },
                    's');  //s para que retorne el string, n: no retorno

            return respuesta;
        }

        #endregion

        #region TIPOPAGO

        [WebMethod]
        public static string ListarFiltrarTipoPago(string IdEstado, string Descripcion, string Aprobacion) // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {

            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarTipoPago",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Descrip_Tipo_Pago", Descripcion),
                        new SqlParameter("@Requiere_Aprobacion", Aprobacion),
                    });

            List<cls_TipoPago_DAL> lista_tipopago = new List<cls_TipoPago_DAL>(); // CAMBIAR EL DAL RESPECTIVO // CAMBIAR NOMBRE DE LA LISTA

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    lista_tipopago.Add(new cls_TipoPago_DAL() // CAMBIAR EL DAL RESPECTIVO
                    {
                        // MANTENER ORDEN DE LAS VARIABLES SEGUN A COMO LO DEVUELVE EL SP DE LISTAR DE LA BASE DE DATOS
                        bIdTipoPago = byte.Parse(row.ItemArray[0].ToString()),
                        bIdEstado = byte.Parse(row.ItemArray[1].ToString()),
                        sDescripTipoPago = row.ItemArray[2].ToString(),
                        bRequiereAprobacion = bool.Parse(row.ItemArray[3].ToString()) //boolean

                    });
                }
            }

            return JsonConvert.SerializeObject(lista_tipopago);
        }

        [WebMethod]
        public static string GuardarEliminarTipoPago(string IdTipoPago, string IdEstado, string Descripcion, string Aprobacion, string Accion)   // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {
            string respuesta = obj_Conexion.ExecCommand("SP_GuardarEliminarTipoPago",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Tipo_Pago", IdTipoPago),
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Descrip_Tipo_Pago", Descripcion),
                        new SqlParameter("@Requiere_Aprobacion", Aprobacion),
                        new SqlParameter("@Accion", Accion) //siempre la lleva
                    },
                    's');  //s para que retorne el string, n: no retorno

            return respuesta;
        }

        #endregion

        #region TIPOSMEDIDAS

        [WebMethod]
        public static string ListarFiltrarTiposMedidas(string IdEstado, string IdUnidadMedida, string Descripcion) // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {

            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarTiposMedidas",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@ID_Unidad_Medida", IdUnidadMedida),
                        new SqlParameter("@Descripcion", Descripcion),
                    });

            List<cls_TiposMedidas_DAL> lista_tiposmedidas = new List<cls_TiposMedidas_DAL>(); // CAMBIAR EL DAL RESPECTIVO // CAMBIAR NOMBRE DE LA LISTA

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    lista_tiposmedidas.Add(new cls_TiposMedidas_DAL() // CAMBIAR EL DAL RESPECTIVO
                    {
                        // MANTENER ORDEN DE LAS VARIABLES SEGUN A COMO LO DEVUELVE EL SP DE LISTAR DE LA BASE DE DATOS
                        bIdTipoMedida = byte.Parse(row.ItemArray[0].ToString()),
                        bIdEstado = byte.Parse(row.ItemArray[1].ToString()),
                        sIdUnidadMedida = short.Parse(row.ItemArray[2].ToString()),
                        sDescripcion = row.ItemArray[3].ToString()

                    });
                }
            }

            return JsonConvert.SerializeObject(lista_tiposmedidas);
        }

        [WebMethod]
        public static string GuardarEliminarTiposMedidas(string IdTipoMedida, string IdEstado, string IdUnidadMedida, string Descripcion, string Accion)   // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {
            string respuesta = obj_Conexion.ExecCommand("SP_GuardarEliminarTiposMedidas",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Tipo_Medida", IdTipoMedida),
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@ID_Unidad_Medida", IdUnidadMedida),
                        new SqlParameter("@Descripcion", Descripcion),
                        new SqlParameter("@Accion", Accion) //siempre la lleva
                    },
                    's');  //s para que retorne el string, n: no retorno

            return respuesta;
        }

        #endregion

    }
}