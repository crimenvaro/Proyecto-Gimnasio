using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_Turnos_DAL
    {
        #region Variables Privadas

        private short _sIdTurno;
        private byte _bIdEstado;
        private string _sTurno;
        private TimeSpan _tHoraEntrada, _tHoraSalida;

        #endregion

        #region Variables Públicas

        public short sIdTurno { get => _sIdTurno; set => _sIdTurno = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public string sTurno { get => _sTurno; set => _sTurno = value; }
        public TimeSpan tHoraEntrada { get => _tHoraEntrada; set => _tHoraEntrada = value; }
        public TimeSpan tHoraSalida { get => _tHoraSalida; set => _tHoraSalida = value; }

        #endregion
    }
}
