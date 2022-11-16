using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_PreRegistro_DAL
    {
        #region Variables Privadas

        private int _iTelefono;
        private byte _bIdEstado, _bIdPlan;
        private string _sCedula, _sNombre, _sApellido1, _sApellido2, _sCorreo;
        private DateTime _dtFecha;

        #endregion

        #region Variables Públicas

        public int iTelefono { get => _iTelefono; set => _iTelefono = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public byte bIdPlan { get => _bIdPlan; set => _bIdPlan = value; }
        public string sCedula { get => _sCedula; set => _sCedula = value; }
        public string sNombre { get => _sNombre; set => _sNombre = value; }
        public string sApellido1 { get => _sApellido1; set => _sApellido1 = value; }
        public string sApellido2 { get => _sApellido2; set => _sApellido2 = value; }
        public string sCorreo { get => _sCorreo; set => _sCorreo = value; }
        public DateTime dtFecha { get => _dtFecha; set => _dtFecha = value; }

        #endregion
    }
}
