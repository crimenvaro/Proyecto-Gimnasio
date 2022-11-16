using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_AsistenciaClase_DAL
    {
        #region Variables Privadas

        private long _lIdAsistenciaClase, _lIdReservacionClase;
        private int _iIdCliente;
        private byte _bIdEstado;

        #endregion

        #region Variables Públicas
        public long lIdAsistenciaClase { get => _lIdAsistenciaClase; set => _lIdAsistenciaClase = value; }
        public long lIdReservacionClase { get => _lIdReservacionClase; set => _lIdReservacionClase = value; }
        public int iIdCliente { get => _iIdCliente; set => _iIdCliente = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }

        #endregion
    }
}
