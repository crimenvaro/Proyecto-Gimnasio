using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_ClasesGrupales_DAL
    {
        #region Variables Privadas

        private int _iIdClaseGrupal, _iIdColaborador;
        private byte _bIdEstado,_bFrecuencia;
        private string _sNombreClase, _sDescripcion, _sRequisitos;
        private DateTime _dtFechaInicio, _dtFechaFin;
        private TimeSpan _tHoraClase;
        private short _sCuposDisponibles;

        #endregion

        #region Variables Públicas
        public int iIdClaseGrupal { get => _iIdClaseGrupal; set => _iIdClaseGrupal = value; }
        public int iIdColaborador { get => _iIdColaborador; set => _iIdColaborador = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public string sNombreClase { get => _sNombreClase; set => _sNombreClase = value; }
        public string sDescripcion { get => _sDescripcion; set => _sDescripcion = value; }
        public string sRequisitos { get => _sRequisitos; set => _sRequisitos = value; }
        public byte bFrecuencia { get => _bFrecuencia; set => _bFrecuencia = value; }
        public DateTime dtFechaInicio { get => _dtFechaInicio; set => _dtFechaInicio = value; }
        public DateTime dtFechaFin { get => _dtFechaFin; set => _dtFechaFin = value; }
        public TimeSpan tHoraClase { get => _tHoraClase; set => _tHoraClase = value; }
        public short sCuposDisponibles { get => _sCuposDisponibles; set => _sCuposDisponibles = value; }

        #endregion
    }
}
