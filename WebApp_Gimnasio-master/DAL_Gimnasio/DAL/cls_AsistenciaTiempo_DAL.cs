using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_AsistenciaTiempo_DAL
    {
        #region Variables Privadas

        private long _lIdAsistenciaTiempo, _lIdReservacionTiempo;
        private int _iIdColaborador, _iIdCliente;
        private byte _bIdEstado;

        #endregion

        #region Variables Públicas
        public long lIdAsistenciaTiempo { get => _lIdAsistenciaTiempo; set => _lIdAsistenciaTiempo = value; }
        public long lIdReservacionTiempo { get => _lIdReservacionTiempo; set => _lIdReservacionTiempo = value; }
        public int iIdColaborador { get => _iIdColaborador; set => _iIdColaborador = value; }
        public int iIdCliente { get => _iIdCliente; set => _iIdCliente = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }

        #endregion
    }
}
