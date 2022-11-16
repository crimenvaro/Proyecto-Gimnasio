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
    public partial class WebMethods_ModuloClientes : System.Web.UI.Page
    {
        public static cls_BD_Conexion obj_Conexion = new cls_BD_Conexion();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string LoginCliente(string Usuario, string Contrasenna)
        {
            string respuesta = obj_Conexion.ExecCommand("SP_LoginClientes",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@Usuario", Usuario),
                        new SqlParameter("@Contrasenna", Contrasenna)
                    },
                    's');

            /*
             * 1 todo correcto
             * 2 contraseña equivocada
             * 3 usuario inactivo
             * 4 usuario no existe
            */
            return respuesta;
        }

        [WebMethod]
        public static string ListarFiltrarClientes(string IdEstado, string Cedula, string Nombre, string Apellidos)
        {
            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarClientes",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Cedula", Cedula),
                        new SqlParameter("@Nombre", Nombre),
                        new SqlParameter("@Apellido1", Apellidos),
                        new SqlParameter("@Apellido2", Apellidos)
                    });

            List<cls_Clientes_DAL> listaClientes = new List<cls_Clientes_DAL>();

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    listaClientes.Add(new cls_Clientes_DAL()
                    {
                        iIdCliente = int.Parse(row.ItemArray[0].ToString()),
                        bIdEstado = byte.Parse(row.ItemArray[1].ToString()),
                        iIdPersona = int.Parse(row.ItemArray[2].ToString()),
                        bIdProducto = byte.Parse(row.ItemArray[3].ToString()),
                        sCedula = row.ItemArray[4].ToString(),
                        sNombre = row.ItemArray[5].ToString(),
                        sApellido1 = row.ItemArray[6].ToString(),
                        sApellido2 = row.ItemArray[7].ToString(),
                        dtFechaNacimiento = DateTime.Parse(row.ItemArray[8].ToString()),
                        iTelefono = int.Parse(row.ItemArray[9].ToString()),
                        sCorreo = row.ItemArray[10].ToString(),
                        sSegundoCorreo = row.ItemArray[11].ToString(),
                        sUsuario = row.ItemArray[12].ToString()
                    });
                }
            }

            return JsonConvert.SerializeObject(listaClientes);
        }

        [WebMethod]
        public static string GuardarEliminarCliente(string ID_Cliente, string ID_Estado, string ID_Persona, string ID_Producto, string Cedula, string Nombre, string Apellido1,
                                                    string Apellido2, string FechaNacimiento, string Telefono, string Correo, string Segundo_Correo, string Usuario, string Accion)
        {
            string respuesta = obj_Conexion.ExecCommand("SP_GuardarEliminarClientes",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Cliente", ID_Cliente),
                        new SqlParameter("@ID_Estado", ID_Estado),
                        new SqlParameter("@ID_Persona", ID_Persona),
                        new SqlParameter("@ID_Producto", ID_Producto),
                        new SqlParameter("@Cedula", Cedula),
                        new SqlParameter("@Nombre", Nombre),
                        new SqlParameter("@Apellido1", Apellido1),
                        new SqlParameter("@Apellido2", Apellido2),
                        new SqlParameter("@FechaNacimiento", FechaNacimiento),
                        new SqlParameter("@Telefono", Telefono),
                        new SqlParameter("@Correo", Correo),
                        new SqlParameter("@Segundo_Correo", Segundo_Correo),
                        new SqlParameter("@Usuario", Usuario),                        
                        new SqlParameter("@Accion ", Accion)
                    },
                    's');
            return respuesta;
        }

        [WebMethod]
        public static string RecordarContrasennaCliente(string ID_Cliente)
        {
            string respuesta = obj_Conexion.ExecCommand("SP_RecordarContrasennaCliente",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Cliente", ID_Cliente)
                    },
                    's');
            return respuesta;
        }

        [WebMethod]
        public static string RecordarCorreoCliente(string ID_Cliente)
        {
            string respuesta = obj_Conexion.ExecCommand("SP_RecordarCorreoCliente",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Cliente", ID_Cliente)
                    },
                    's');
            return respuesta;
        }
    }
}