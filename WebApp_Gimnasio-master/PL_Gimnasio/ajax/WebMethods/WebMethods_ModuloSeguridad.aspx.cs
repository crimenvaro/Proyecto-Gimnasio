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
    public partial class WebMethods_ModuloSeguridad : System.Web.UI.Page
    {
        public static cls_BD_Conexion obj_Conexion = new cls_BD_Conexion();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #region DEPARTAMENTOS   

        [WebMethod]
        public static string ListarFiltrarDepartamentos(string IdEstado, string Departamento) // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {

            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarDepartamentos",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Departamento", Departamento)
                    });

            List<cls_Departamentos_DAL> lista_departamentos = new List<cls_Departamentos_DAL>(); // CAMBIAR EL DAL RESPECTIVO // CAMBIAR NOMBRE DE LA LISTA

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    lista_departamentos.Add(new cls_Departamentos_DAL() // CAMBIAR EL DAL RESPECTIVO
                    {
                        // MANTENER ORDEN DE LAS VARIABLES SEGUN A COMO LO DEVUELVE EL SP DE LISTAR DE LA BASE DE DATOS
                        bIdDepartamento = byte.Parse(row.ItemArray[0].ToString()),
                        bIdEstado = byte.Parse(row.ItemArray[1].ToString()),
                        sDepartamento = row.ItemArray[2].ToString()

                    });
                }
            }

            return JsonConvert.SerializeObject(lista_departamentos);
        }

        [WebMethod]
        public static string GuardarEliminarDepartamentos(string IdDepartamento, string IdEstado, string Departamento, string Accion)   // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {
            string respuesta = obj_Conexion.ExecCommand("SP_GuardarEliminarDepartamentos",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Departamento", IdDepartamento),
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Departamento", Departamento),
                        new SqlParameter("@Accion", Accion)
                    },
                    's');  //s para que retorne el string, n: no retorno

            return respuesta;
        }

        #endregion

        #region ESTADOS

        [WebMethod]
        public static string ListarFiltrarEstados(string Descripcion, string Opcion)
        {
            //cls_BD_Conexion obj_Conexion = new cls_BD_Conexion();

            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarEstados",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@Descripcion", Descripcion),
                        new SqlParameter("@Opcion", Opcion)
                    });

            List<cls_Estados_DAL> lista_estados = new List<cls_Estados_DAL>();

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    lista_estados.Add(new cls_Estados_DAL()
                    {
                        bIdEstado = byte.Parse(row.ItemArray[0].ToString()),
                        sDescripcion = row.ItemArray[1].ToString(),
                        sOpcion = row.ItemArray[2].ToString()
                    });
                }
            }

            return JsonConvert.SerializeObject(lista_estados);
        }

        [WebMethod]
        public static string GuardarEliminarEstados(string IdEstado, string Descripcion, string Opcion, string Accion)
        {
            cls_BD_Conexion obj_Conexion = new cls_BD_Conexion();

            string respuesta = obj_Conexion.ExecCommand("SP_GuardarEliminarEstados",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Descripcion", Descripcion),
                        new SqlParameter("@Opcion", Opcion),
                        new SqlParameter("@Accion", Accion)
                    },
                    's');  //s para que retorne el string, n: no retorno

            return respuesta;
        }

        #endregion

        #region CATEGORIA EQUIPOS

        [WebMethod]
        public static string ListarFiltrarCategoriaEquipos(string IdEstado, string Descripcion)
        {

            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarCategoriaEquipos",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Descripcion", Descripcion)
                    });

            List<cls_CategoriaEquipos_DAL> lista_categoriaequipos = new List<cls_CategoriaEquipos_DAL>();

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    lista_categoriaequipos.Add(new cls_CategoriaEquipos_DAL()
                    {
                        bIdCatEquipos = byte.Parse(row.ItemArray[0].ToString()),
                        bIdEstado = byte.Parse(row.ItemArray[1].ToString()),
                        sDescripcion = row.ItemArray[2].ToString()
                    });
                }
            }

            return JsonConvert.SerializeObject(lista_categoriaequipos);
        }

        [WebMethod]
        public static string GuardarEliminarCategoriaEquipos(string IdCategoriaEquipos, string IdEstado, string Descripcion, string Accion)
        {
            cls_BD_Conexion obj_Conexion = new cls_BD_Conexion();

            string respuesta = obj_Conexion.ExecCommand("SP_GuardarEliminarCategoriaEquipos",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Cat_Equipos", IdCategoriaEquipos),
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Descripcion", Descripcion),
                        new SqlParameter("@Accion", Accion)
                    },
                    's');  //s para que retorne el string, n: no retorno

            return respuesta;
        }

        #endregion

        #region DESCUENTOS

        [WebMethod]
        public static string ListarFiltrarDescuento(string IdEstado, string Descripcion, string Porcentaje)
        {

            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarDescuento",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Descripcion", Descripcion),
                        new SqlParameter("@Porcentaje", Porcentaje)
                    });

            List<cls_Descuento_DAL> lista_descuento = new List<cls_Descuento_DAL>();

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    lista_descuento.Add(new cls_Descuento_DAL()
                    {
                        bIdDescuento = byte.Parse(row.ItemArray[0].ToString()),
                        bIdEstado = byte.Parse(row.ItemArray[1].ToString()),
                        sDescripcion = row.ItemArray[2].ToString(),
                        bPorcentaje = byte.Parse(row.ItemArray[3].ToString())
                    });
                }
            }

            return JsonConvert.SerializeObject(lista_descuento);
        }

        [WebMethod]
        public static string GuardarEliminarDescuento(string IdDescuento, string IdEstado, string Descripcion, string Porcentaje, string Accion)
        {
            cls_BD_Conexion obj_Conexion = new cls_BD_Conexion();

            string respuesta = obj_Conexion.ExecCommand("SP_GuardarEliminarDescuento",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Descuento", IdDescuento),
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Descripcion", Descripcion),
                        new SqlParameter("@Porcentaje", Porcentaje),
                        new SqlParameter("@Accion", Accion)
                    },
                    's');  //s para que retorne el string, n: no retorno

            return respuesta;
        }

        #endregion

        #region DIA

        [WebMethod]
        public static string ListarFiltrarDia(string IdEstado, string Descripcion)
        {

            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarDias",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Descripcion", Descripcion)
                    });

            List<cls_Dias_DAL> lista_dia = new List<cls_Dias_DAL>();

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    lista_dia.Add(new cls_Dias_DAL()
                    {
                        bIdDia = byte.Parse(row.ItemArray[0].ToString()),
                        bIdEstado = byte.Parse(row.ItemArray[1].ToString()),
                        sDescripcion = row.ItemArray[2].ToString()
                    });
                }
            }

            return JsonConvert.SerializeObject(lista_dia);
        }

        [WebMethod]
        public static string GuardarEliminarDia(string IdDia, string IdEstado, string Descripcion, string Accion)
        {
            cls_BD_Conexion obj_Conexion = new cls_BD_Conexion();

            string respuesta = obj_Conexion.ExecCommand("SP_GuardarEliminarDias",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Dia", IdDia),
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Descripcion", Descripcion),
                        new SqlParameter("@Accion", Accion)
                    },
                    's');  //s para que retorne el string, n: no retorno

            return respuesta;
        }

        #endregion

        #region EJERCICIOS   

        [WebMethod]
        public static string ListarFiltrarEjercicios(string IdEstado, string NombreEjercicio, string GrupoMuscular, string Descripcion) // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {

            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarEjercicios",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Nombre_Ejercicio", NombreEjercicio),
                        new SqlParameter("@Grupo_Muscular", GrupoMuscular),
                        new SqlParameter("@Descripcion", Descripcion)
                    });

            List<cls_Ejercicios_DAL> lista_ejercicios = new List<cls_Ejercicios_DAL>(); // CAMBIAR EL DAL RESPECTIVO // CAMBIAR NOMBRE DE LA LISTA

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    lista_ejercicios.Add(new cls_Ejercicios_DAL() // CAMBIAR EL DAL RESPECTIVO
                    {
                        // MANTENER ORDEN DE LAS VARIABLES SEGUN A COMO LO DEVUELVE EL SP DE LISTAR DE LA BASE DE DATOS
                        iIdEjercicio = int.Parse(row.ItemArray[0].ToString()),
                        bIdEstado = byte.Parse(row.ItemArray[1].ToString()),
                        sNombreEjercicio = row.ItemArray[2].ToString(),
                        sGrupoMuscular = row.ItemArray[3].ToString(),
                        sDescripcion = row.ItemArray[4].ToString()

                    });
                }
            }

            return JsonConvert.SerializeObject(lista_ejercicios);
        }
        [WebMethod]
        public static string GuardarEliminarEjercicios(string IdEjercicios, string IdEstado, string NombreEjercicio, string GrupoMuscular, string Descripcion, string Accion)   // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {
            string respuesta = obj_Conexion.ExecCommand("SP_GuardarEliminarEjercicios",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Ejercicio", IdEjercicios),
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Nombre_Ejercicio", NombreEjercicio),
                        new SqlParameter("@Grupo_Muscular", GrupoMuscular),
                        new SqlParameter("@Descripcion", Descripcion),
                        new SqlParameter("@Accion", Accion)
                    },
                    's');  //s para que retorne el string, n: no retorno

            return respuesta;
        }

        #endregion

        #region PRODUCTOS   

        [WebMethod]
        public static string ListarFiltrarProductos(string IdEstado, string IdDescuento, string Nombre, string Descripcion, string Periodo, string Costo, string NumDias, string Plan) // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {

            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarProductos",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@ID_Descuento", IdDescuento),
                        new SqlParameter("@Nombre", Nombre),
                        new SqlParameter("@Descripcion", Descripcion),
                        new SqlParameter("@Periodo", Periodo),
                        new SqlParameter("@Costo", Costo),
                        new SqlParameter("@Num_Dias", NumDias),
                        new SqlParameter("@Plan", Plan)
                    });

            List<cls_Productos_DAL> lista_productos = new List<cls_Productos_DAL>(); // CAMBIAR EL DAL RESPECTIVO // CAMBIAR NOMBRE DE LA LISTA

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    lista_productos.Add(new cls_Productos_DAL() // CAMBIAR EL DAL RESPECTIVO
                    {
                        // MANTENER ORDEN DE LAS VARIABLES SEGUN A COMO LO DEVUELVE EL SP DE LISTAR DE LA BASE DE DATOS
                        bIdProducto = byte.Parse(row.ItemArray[0].ToString()),
                        bIdEstado = byte.Parse(row.ItemArray[1].ToString()),
                        bIdDescuento = byte.Parse(row.ItemArray[2].ToString()),
                        sNombre = row.ItemArray[3].ToString(),
                        sDescripcion = row.ItemArray[4].ToString(),
                        sPeriodo = row.ItemArray[5].ToString(),
                        dCosto = decimal.Parse(row.ItemArray[6].ToString()),
                        iNumDias = int.Parse(row.ItemArray[7].ToString()),
                        bPlan = bool.Parse(row.ItemArray[8].ToString())

                    });
                }
            }

            return JsonConvert.SerializeObject(lista_productos);
        }

        [WebMethod]
        public static string GuardarEliminarProductos(string IdProducto, string IdEstado, string IdDescuento, string Nombre, string Descripcion, string Periodo, string Costo, string NumDias, string Plan, string Accion)   // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {
            string respuesta = obj_Conexion.ExecCommand("SP_GuardarEliminarProductos",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Producto", IdProducto),
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@ID_Descuento", IdDescuento),
                        new SqlParameter("@Nombre", Nombre),
                        new SqlParameter("@Descripcion", Descripcion),
                        new SqlParameter("@Periodo", Periodo),
                        new SqlParameter("@Costo", Costo),
                        new SqlParameter("@Num_Dias", NumDias),
                        new SqlParameter("@Plan", Plan),
                        new SqlParameter("@Accion", Accion)
                    },
                    's');  //s para que retorne el string, n: no retorno

            return respuesta;
        }

        #endregion

        #region ROLES   

        [WebMethod]
        public static string ListarFiltrarRoles(string IdEstado, string Rol, string Descripcion) // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {

            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarRoles",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Rol", Rol),
                        new SqlParameter("@Descripcion", Descripcion)
                    });

            List<cls_Roles_DAL> lista_roles = new List<cls_Roles_DAL>(); // CAMBIAR EL DAL RESPECTIVO // CAMBIAR NOMBRE DE LA LISTA

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    lista_roles.Add(new cls_Roles_DAL() // CAMBIAR EL DAL RESPECTIVO
                    {
                        // MANTENER ORDEN DE LAS VARIABLES SEGUN A COMO LO DEVUELVE EL SP DE LISTAR DE LA BASE DE DATOS
                        bIdRol = byte.Parse(row.ItemArray[0].ToString()),
                        bIdEstado = byte.Parse(row.ItemArray[1].ToString()),
                        sRol = row.ItemArray[2].ToString(),
                        sDescripcion = row.ItemArray[3].ToString()

                    });
                }
            }

            return JsonConvert.SerializeObject(lista_roles);
        }

        [WebMethod]
        public static string GuardarEliminarRoles(string IdRol, string IdEstado, string Rol, string Descripcion, string Accion)   // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {
            string respuesta = obj_Conexion.ExecCommand("SP_GuardarEliminarRoles",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Rol", IdRol),
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Rol", Rol),
                        new SqlParameter("@Descripcion", Descripcion),
                        new SqlParameter("@Accion", Accion)
                    },
                    's');  //s para que retorne el string, n: no retorno

            return respuesta;
        }

        #endregion

        #region COLABORADORES   

        [WebMethod]
        public static string ListarFiltrarColaboradores(string Rol)
        {

            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarColaboradores",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@Rol", Rol)
                    });

            List<cls_Colaboradores_DAL> lista_colaboradores = new List<cls_Colaboradores_DAL>(); // CAMBIAR EL DAL RESPECTIVO // CAMBIAR NOMBRE DE LA LISTA

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    lista_colaboradores.Add(new cls_Colaboradores_DAL() // CAMBIAR EL DAL RESPECTIVO
                    {
                        // MANTENER ORDEN DE LAS VARIABLES SEGUN A COMO LO DEVUELVE EL SP DE LISTAR DE LA BASE DE DATOS
                        iIdColaborador = int.Parse(row.ItemArray[0].ToString()),
                        bIdEstado = byte.Parse(row.ItemArray[1].ToString()),
                        iIdPersona = int.Parse(row.ItemArray[2].ToString()),
                        bIdDepartamento = byte.Parse(row.ItemArray[3].ToString()),
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

            return JsonConvert.SerializeObject(lista_colaboradores);
        }

        [WebMethod]
        public static string GuardarEliminarColaboradores(string IdColaborador, string IdEstado, string Persona, string Departamento, string Cedula, string Nombre, string Apellido1, string Apellido2, string FechaNacimiento, string Telefono, string Correo, string Correo2, string Usuario, string Accion)   // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {
            string respuesta = obj_Conexion.ExecCommand("SP_GuardarEliminarColaboradores",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Colaborador", IdColaborador),
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@ID_Persona", Persona),
                        new SqlParameter("@ID_Departamento", Departamento),
                        new SqlParameter("@Cedula", Cedula),
                        new SqlParameter("@Nombre", Nombre),
                        new SqlParameter("@Apellido1", Apellido1),
                        new SqlParameter("@Apellido2", Apellido2),
                        new SqlParameter("@FechaNacimiento", FechaNacimiento),
                        new SqlParameter("@Telefono", Telefono),
                        new SqlParameter("@Correo", Correo),
                        new SqlParameter("@Segundo_Correo", Correo2),
                        new SqlParameter("@Usuario", Usuario),
                        new SqlParameter("@Accion", Accion)
                    },
                    's');  //s para que retorne el string, n: no retorno

            return respuesta;
        }

        #endregion

        #region CONTRASEÑAS
        [WebMethod]
        public static string ActualizarContrasennaUsuario(string Username, string TipoUsuario, string ContrasennaActual, string ContrasennaNueva)
        {
            cls_BD_Conexion obj_Conexion = new cls_BD_Conexion();

            string respuesta = obj_Conexion.ExecCommand("SP_ActualizarContrasennaUsuario",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@Username", Username),
                        new SqlParameter("@TipoUsuario", TipoUsuario),
                        new SqlParameter("@ContrasennaActual", ContrasennaActual),
                        new SqlParameter("@ContrasennaNueva", ContrasennaNueva)
                    },
                    's');  //s para que retorne el string, n: no retorno

            return respuesta;
        }

        [WebMethod]
        public static string RecordarContrasenna(string Correo, string TipoUsuario)
        {
            string respuesta = obj_Conexion.ExecCommand("SP_RecordarContrasenna",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@Correo", Correo),
                        new SqlParameter("@TipoUsuario", TipoUsuario),
                    },
                    's');
            return respuesta;
        }
        #endregion

    }
}
