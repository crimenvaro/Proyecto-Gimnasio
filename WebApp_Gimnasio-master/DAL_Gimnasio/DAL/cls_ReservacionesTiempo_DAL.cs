using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_ReservacionesTiempo_DAL
    {
        #region Variables Privadas

        private long _lIdReservacionTiempo;
        private int _iIdCliente;
        private byte _bIdEstado;
        private TimeSpan _tHora;
        private DateTime _dtDia;

        #endregion

        #region Variables Públicas
        public long lIdReservacionTiempo { get => _lIdReservacionTiempo; set => _lIdReservacionTiempo = value; }
        public int iIdCliente { get => _iIdCliente; set => _iIdCliente = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public TimeSpan tHora { get => _tHora; set => _tHora = value; }
        public DateTime dtDia { get => _dtDia; set => _dtDia = value; }

        #endregion
    }
}
