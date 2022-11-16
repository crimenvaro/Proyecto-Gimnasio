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
    public partial class WebMethods_ModuloColaboradores : System.Web.UI.Page
    {
        public static cls_BD_Conexion obj_Conexion = new cls_BD_Conexion();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #region LOGIN

        [WebMethod]
        public static string LoginColaborador(string Usuario, string Contrasenna)
        {
            /*
             * 1 todo correcto
             * 2 contraseña equivocada
             * 3 usuario inactivo
             * 4 usuario no existe
            */

            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_LoginColaboradores",
                    new List<SqlParameter>()
                    {
                         new SqlParameter("@Usuario", Usuario),
                        new SqlParameter("@Contrasenna", Contrasenna)
                    });

            cls_LoginColaborador_DAL retorno = new cls_LoginColaborador_DAL();

            List<string> listaRoles = new List<string>();

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                retorno.bEstadoLogin = byte.Parse(dataSet.Tables[0].Rows[0].ItemArray[0].ToString());

                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    listaRoles.Add(row.ItemArray[1].ToString());
                }
            }
            retorno.lRoles = listaRoles;

            return JsonConvert.SerializeObject(retorno);
        }

        #endregion

        #region FACTURACION
        [WebMethod]
        public static string ListarFiltrarFacturas(string IdCliente, string IdEstado, string FechaInicio, string FechaFinal)
        {

            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarFacturas",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Cliente", IdCliente),
                        new SqlParameter("@ID_Estado", IdEstado),
                        new SqlParameter("@Fecha_Inicio", FechaInicio),
                        new SqlParameter("@Fecha_Final", FechaFinal)
                    });

            List<cls_Factura_DAL> retorno = new List<cls_Factura_DAL>();

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    retorno.Add(new cls_Factura_DAL()
                    {
                        iIdCliente = int.Parse(IdCliente),
                        lIdFactura = long.Parse(row.ItemArray[0].ToString()),
                        lIdDetalleFactura = long.Parse(row.ItemArray[1].ToString()),
                        sNombre = row.ItemArray[2].ToString(),
                        dSubTotal = double.Parse(row.ItemArray[3].ToString()),
                        dCondonacion = double.Parse(row.ItemArray[4].ToString()),
                        dDescuento = double.Parse(row.ItemArray[5].ToString()),
                        dImpuesto = double.Parse(row.ItemArray[6].ToString()),
                        dTotal = double.Parse(row.ItemArray[7].ToString()),
                        sComentario = row.ItemArray[8].ToString(),
                        bTipoPago = byte.Parse(row.ItemArray[9].ToString()),
                        sDescTipoPago = row.ItemArray[10].ToString(),
                        bEstado = byte.Parse(row.ItemArray[11].ToString())
                    });
                }
            }

            return JsonConvert.SerializeObject(retorno);
        }

        [WebMethod]
        public static string CondonarPagoFactura(string IdFactura, string IdDetalleFactura, string Comentario, string Usuario)
        {
            string respuesta = obj_Conexion.ExecCommand("SP_CondonarPagoFactura",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Factura", IdFactura),
                        new SqlParameter("@ID_DetalleFactura", IdDetalleFactura),
                        new SqlParameter("@Comentario", Comentario),
                        new SqlParameter("@Colaborador", Usuario)
                    },
                    's');

            return respuesta;
        }

        [WebMethod]
        public static string DescuentoPagoFactura(string IdFactura, string IdDetalleFactura, string Comentario, string Usuario, string Porcentaje)
        {
            string respuesta = obj_Conexion.ExecCommand("SP_DescuentoPagoFactura",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Factura", IdFactura),
                        new SqlParameter("@ID_DetalleFactura", IdDetalleFactura),
                        new SqlParameter("@Comentario", Comentario),
                        new SqlParameter("@Colaborador", Usuario),
                        new SqlParameter("@Porcentaje", Porcentaje)
                    },
                    's');

            return respuesta;
        }

        [WebMethod]
        public static string SP_AplicarPagoFactura(string IdFactura, string IdDetalleFactura, string Usuario, string TipoPago)
        {
            string respuesta = obj_Conexion.ExecCommand("SP_AplicarPagoFactura",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Factura", IdFactura),
                        new SqlParameter("@ID_DetalleFactura", IdDetalleFactura),
                        new SqlParameter("@TipoPago", TipoPago),
                        new SqlParameter("@Colaborador", Usuario)
                    },
                    's');

            return respuesta;
        }

        [WebMethod]
        public static string ListarFacturasPendienteAprobacion(string IdCliente)
        {
            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFacturasPendienteAprobacion",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Cliente", IdCliente)
                    });

            List<cls_FacturaPendiente_DAL> retorno = new List<cls_FacturaPendiente_DAL>();

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    retorno.Add(new cls_FacturaPendiente_DAL()
                    {
                        lIdEstadoPendiente = long.Parse(row.ItemArray[0].ToString()),
                        sCedula = row.ItemArray[1].ToString(),
                        sNombreCliente = row.ItemArray[2].ToString(),
                        sNombreFactura = row.ItemArray[3].ToString(),
                        dSubTotal = double.Parse(row.ItemArray[4].ToString()),
                        dCondonacion = double.Parse(row.ItemArray[5].ToString()),
                        dDescuento = double.Parse(row.ItemArray[6].ToString()),
                        dImpuesto = double.Parse(row.ItemArray[7].ToString()),
                        dTotal = double.Parse(row.ItemArray[8].ToString())
                    });
                }
            }

            return JsonConvert.SerializeObject(retorno);
        }

        [WebMethod]
        public static string AprobarFacturaPendiente(string IdEstadoPendiente)
        {
            string respuesta = obj_Conexion.ExecCommand("SP_AprobarFacturaPendiente",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Factura_Pendiente", IdEstadoPendiente)
                    },
                    's');

            return respuesta;
        }

        #endregion

        #region CLASES GRUPALES

        [WebMethod]
        public static string ListarFiltrarClasesGrupales()
        {
            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarClasesGrupales",
                    new List<SqlParameter>()
                    {
                    });

            List<cls_ClasesGrupales_DAL> retorno = new List<cls_ClasesGrupales_DAL>();

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    retorno.Add(new cls_ClasesGrupales_DAL()
                    {
                        iIdClaseGrupal = int.Parse(row.ItemArray[0].ToString()),
                        iIdColaborador = int.Parse(row.ItemArray[1].ToString()),
                        bIdEstado = byte.Parse( row.ItemArray[2].ToString()),
                        sNombreClase = row.ItemArray[3].ToString(),
                        sDescripcion =row.ItemArray[4].ToString(),
                        sRequisitos = row.ItemArray[5].ToString(),
                        bFrecuencia = byte.Parse(row.ItemArray[6].ToString()),
                        dtFechaInicio = DateTime.Parse(row.ItemArray[7].ToString()),
                        dtFechaFin = DateTime.Parse(row.ItemArray[8].ToString()),
                        tHoraClase = TimeSpan.Parse(row.ItemArray[9].ToString()),
                        sCuposDisponibles = short.Parse(row.ItemArray[10].ToString())
                    });
                }
            }

            return JsonConvert.SerializeObject(retorno);
        }

        [WebMethod]
        public static string GuardarClasesGrupales(string ID_Clase_Grupal, string ID_Colaborador, string ID_Estado, string Nombre_Clase, string Descripcion, string Frecuencia, string Fecha_Inicio, string Fecha_Fin, string Hora_Clase,string Requisitos,string Cupos_Disponibles,string Accion)
        {
            string respuesta = obj_Conexion.ExecCommand("SP_GuardarClasesGrupales",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Clase_Grupal", ID_Clase_Grupal),
                        new SqlParameter("@ID_Colaborador", ID_Colaborador),
                        new SqlParameter("@ID_Estado", ID_Estado),
                        new SqlParameter("@Nombre_Clase", Nombre_Clase),
                        new SqlParameter("@Descripcion", Descripcion),
                        new SqlParameter("@Frecuencia", Frecuencia),
                        new SqlParameter("@Fecha_Inicio", Fecha_Inicio),
                        new SqlParameter("@Fecha_Fin", Fecha_Fin),
                        new SqlParameter("@Hora_Clase", Hora_Clase),
                        new SqlParameter("@Requisitos", Requisitos),
                        new SqlParameter("@Cupos_Disponibles", Cupos_Disponibles),
                        new SqlParameter("@Accion", Accion),
                    },
                    's');

            return respuesta;
        }

        #endregion

        #region MEDIDAS

        [WebMethod]
        public static string ListarFiltrarMedidas(string ID_Cliente)
        {
            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarMedidas",
                    new List<SqlParameter>()
                    {
                         new SqlParameter("@ID_Cliente", ID_Cliente)
                    });

            List<cls_Mediciones_DAL> retorno = new List<cls_Mediciones_DAL>();

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    DateTime fechaMedida = DateTime.Parse(row.ItemArray[1].ToString());

                    retorno.Add(new cls_Mediciones_DAL()
                    {
                        lIdMedicion = long.Parse(row.ItemArray[0].ToString()),
                        sFechaMedicion = fechaMedida.Day + "/" + fechaMedida.Month + "/" + fechaMedida.Year,
                        sTipoMedidaDsc = row.ItemArray[2].ToString(),
                        sMedidaValor = row.ItemArray[3].ToString()
                    });
                }
            }

            return JsonConvert.SerializeObject(retorno);
        }


        [WebMethod]
        public static string GuardarMedida(string ID_Medicion, string ID_Cliente, string ID_Estado, string ID_Tipo_Medida, string Medida_Valor, string Fecha_Medicion, string Accion)
        {
            string respuesta = obj_Conexion.ExecCommand("SP_GuardarMedida",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Medicion", ID_Medicion),
                        new SqlParameter("@ID_Cliente", ID_Cliente),
                        new SqlParameter("@ID_Estado", ID_Estado),
                        new SqlParameter("@ID_Tipo_Medida", ID_Tipo_Medida),
                        new SqlParameter("@Medida_Valor", Medida_Valor),
                        new SqlParameter("@Fecha_Medicion", Fecha_Medicion),
                        new SqlParameter("@Accion", Accion),
                    },
                    's');

            return respuesta;
        }


        #endregion

        #region COLABORADORES
        [WebMethod]
        public static string ListarFiltrarColaboradores(string IdEstado, string Cedula, string Nombre, string Apellidos)
        {
            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarColaboradores",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@Cedula", Cedula),
                        new SqlParameter("@Nombre", Nombre),
                        new SqlParameter("@Apellido1", Apellidos),
                        new SqlParameter("@Apellido2", Apellidos)
                    });

            List<cls_Colaboradores_DAL> listaColaboradores = new List<cls_Colaboradores_DAL>();

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    listaColaboradores.Add(new cls_Colaboradores_DAL()
                    {
                        iIdColaborador = int.Parse(row.ItemArray[0].ToString()),
                        bIdEstado = byte.Parse(row.ItemArray[1].ToString()),
                        iIdPersona = int.Parse(row.ItemArray[2].ToString()),
                        sCedula = row.ItemArray[4].ToString(),
                        sNombre = row.ItemArray[5].ToString(),
                        sApellido1 = row.ItemArray[6].ToString(),
                        sApellido2 = row.ItemArray[7].ToString(),
                        iTelefono = int.Parse(row.ItemArray[9].ToString()),
                        sCorreo = row.ItemArray[10].ToString(),
                        sUsuario = row.ItemArray[12].ToString()
                    });
                }
            }

            return JsonConvert.SerializeObject(listaColaboradores);
        }

        #endregion

        #region ROLES USUARIO 

        [WebMethod]
        public static string ListarFiltrarRolesUsuario(string IdColaborador) // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {

            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarRolesUsuario",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Colaborador", IdColaborador)
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
        public static string GuardarEliminarRolesUsuario(string ID_Colaborador, string ID_Rol, string ID_Estado, string Accion)   // CAMBIAR EL NOMBRE DEL METODO, CAMBIAR LAS VARIABLES QUE RECIBE EL SP DE LA BASE DE DATOS
        {
            string respuesta = obj_Conexion.ExecCommand("SP_GuardarEliminarRolesUsuario",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Colaborador", ID_Colaborador),
                        new SqlParameter("@ID_Rol", ID_Rol),
                        new SqlParameter("@ID_Estado", ID_Estado),
                        new SqlParameter("@Accion", Accion)
                    },
                    's');  //s para que retorne el string, n: no retorno

            return respuesta;
        }

        #endregion

        #region EQUIPOS

        [WebMethod]
        public static string ListarFiltrarEquipos(string ID_Estado)
        {
            DataSet dataSet = obj_Conexion.ExecDataAdapter("SP_ListarFiltrarEquipos",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Estado", ID_Estado)
                    });

            List<cls_EquiposGym_DAL> retorno = new List<cls_EquiposGym_DAL>();

            if (dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    retorno.Add(new cls_EquiposGym_DAL()
                    {
                        sIdEquipo = short.Parse(row.ItemArray[0].ToString()),
                        bIdCatEquipos = byte.Parse(row.ItemArray[1].ToString()),
                        bIdSalasGym = byte.Parse(row.ItemArray[2].ToString()),
                        bIdEstado = byte.Parse(row.ItemArray[3].ToString()),
                        sNombreEquipo = row.ItemArray[4].ToString(),
                        sDescripEquipo = row.ItemArray[5].ToString(),
                        sCategoriaDsc = row.ItemArray[6].ToString(),
                        sSalaDsc = row.ItemArray[7].ToString()
                    });
                }
            }

            return JsonConvert.SerializeObject(retorno);
        }

        [WebMethod]
        public static string GuardarEliminarEquipo(string ID_Equipo, string ID_Cat_Equipos, string ID_Salas, string ID_Estado, string Nombre_Equipo, string Descrip_Equipo, string Accion)
        {
            string respuesta = obj_Conexion.ExecCommand("SP_GuardarEliminarEquipos",
                    new List<SqlParameter>()
                    {
                        new SqlParameter("@ID_Equipo", ID_Equipo),
                        new SqlParameter("@ID_Cat_Equipos", ID_Cat_Equipos),
                        new SqlParameter("@ID_Salas", ID_Salas),
                        new SqlParameter("@ID_Estado", ID_Estado),
                        new SqlParameter("@Nombre_Equipo", Nombre_Equipo),
                        new SqlParameter("@Descrip_Equipo", Descrip_Equipo),
                        new SqlParameter("@Accion", Accion),
                    },
                    's');

            return respuesta;
        }

        #endregion

    }
}