using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_DetalleRutina_DAL
    {
        #region Variables Privadas

        private long _lIdDetalleRutina, _lIdRutina;
        private short _sIdEquipo;
        private int _iIdEjercicio, _iRepeticiones, _iSeries, _iTiempoEjecucion;

        #endregion

        #region Variables Públicas
        public long lIdDetalleRutina { get => _lIdDetalleRutina; set => _lIdDetalleRutina = value; }
        public long lIdRutina { get => _lIdRutina; set => _lIdRutina = value; }
        public short sIdEquipo { get => _sIdEquipo; set => _sIdEquipo = value; }
        public int iIdEjercicio { get => _iIdEjercicio; set => _iIdEjercicio = value; }
        public int iRepeticiones { get => _iRepeticiones; set => _iRepeticiones = value; }
        public int iSeries { get => _iSeries; set => _iSeries = value; }
        public int iTiempoEjecucion { get => _iTiempoEjecucion; set => _iTiempoEjecucion = value; }

        #endregion
    }
}
