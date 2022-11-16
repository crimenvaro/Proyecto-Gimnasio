using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_Rutinas_DAL
    {
        #region Variables Privadas

        private long _lIdRutina;
        private int _iIdCliente, _iIdPersona;
        private byte _bIdEstado;
        private string _sNombreRutina;
        private DateTime _dtFechaCreacion;

        #endregion

        #region Variables Públicas

        public long lIdRutina { get => _lIdRutina; set => _lIdRutina = value; }
        public int iIdCliente { get => _iIdCliente; set => _iIdCliente = value; }
        public int iIdPersona { get => _iIdPersona; set => _iIdPersona = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public string sNombreRutina { get => _sNombreRutina; set => _sNombreRutina = value; }
        public DateTime dtFechaCreacion { get => _dtFechaCreacion; set => _dtFechaCreacion = value; }

        #endregion
    }
}
