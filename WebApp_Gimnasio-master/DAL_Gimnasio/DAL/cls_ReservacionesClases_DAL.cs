using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_ReservacionesClases_DAL
    {
        #region Variables Privadas

        private long _lIdReservacionClase;
        private int _iIdCliente, _iIdClaseGrupal;
        private byte _bIdEstado;
        private DateTime _dtFecha;

        #endregion

        #region Variables Públicas
        public long lIdReservacionClase { get => _lIdReservacionClase; set => _lIdReservacionClase = value; }
        public int iIdCliente { get => _iIdCliente; set => _iIdCliente = value; }
        public int iIdClaseGrupal { get => _iIdClaseGrupal; set => _iIdClaseGrupal = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public DateTime dtFecha { get => _dtFecha; set => _dtFecha = value; }
        #endregion
    }
}
