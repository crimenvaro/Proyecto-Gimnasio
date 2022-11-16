using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_Clientes_DAL
    {
        #region Variables Privadas

        private int _iIdCliente, _iIdPersona, _iTelefono;
        private byte _bIdEstado, _bIdProducto;
        private string _sUsuario, _sContrasenna, _sCedula, _sNombre, _sApellido1, _sApellido2, _sCorreo, _sSegundoCorreo;

        private DateTime _dtFechaNacimiento;


        #endregion

        #region Variables Públicas

        public int iIdCliente { get => _iIdCliente; set => _iIdCliente = value; }
        public int iIdPersona { get => _iIdPersona; set => _iIdPersona = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public byte bIdProducto { get => _bIdProducto; set => _bIdProducto = value; }
        public string sUsuario { get => _sUsuario; set => _sUsuario = value; }
        public string sContrasenna { get => _sContrasenna; set => _sContrasenna = value; }
        public int iTelefono { get => _iTelefono; set => _iTelefono = value; }
        public string sCedula { get => _sCedula; set => _sCedula = value; }
        public string sNombre { get => _sNombre; set => _sNombre = value; }
        public string sApellido1 { get => _sApellido1; set => _sApellido1 = value; }
        public string sApellido2 { get => _sApellido2; set => _sApellido2 = value; }
        public string sCorreo { get => _sCorreo; set => _sCorreo = value; }
        public string sSegundoCorreo { get => _sSegundoCorreo; set => _sSegundoCorreo = value; }
        public DateTime dtFechaNacimiento { get => _dtFechaNacimiento; set => _dtFechaNacimiento = value; }

        #endregion
    }
}
